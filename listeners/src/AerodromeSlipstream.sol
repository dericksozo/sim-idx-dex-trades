// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import "./interfaces/Aerodrome/AerodromeSlipstream.sol";

contract AerodromeSlipstreamListener is CLPool$OnSwapFunction, DexUtils {
    event DexTrade(DexTradeData);

    function CLPool$onSwapFunction(
        FunctionContext memory ctx,
        CLPool$SwapFunctionInputs memory inputs,
        CLPool$SwapFunctionOutputs memory outputs
    ) external override {
        (address token0, address token1) = DexUtils.getAerodromeSlipstreamPoolMetadata(ctx.txn.call.callee());
        (string memory token0Name, string memory token0Symbol, uint256 token0Decimals) = getMetadata(token0);
        (string memory token1Name, string memory token1Symbol, uint256 token1Decimals) = getMetadata(token1);
        DexTradeData memory trade;
        address factory = ICLPoolConstants(ctx.txn.call.callee()).factory();
        if (factory == DexUtils.getAerodromeSlipstreamFactory()) {
            trade.dex = "AerodromeSlipstream";
        } else {
            return;
        }
        if (inputs.zeroForOne) {
            trade.fromToken = token0;
            trade.fromTokenAmt = outputs.amount0 < 0 ? uint256(-outputs.amount0) : uint256(outputs.amount0);
            trade.fromTokenName = token0Name;
            trade.fromTokenSymbol = token0Symbol;
            trade.fromTokenDecimals = uint8(token0Decimals);
            trade.toToken = token1;
            trade.toTokenAmt = outputs.amount1 < 0 ? uint256(-outputs.amount1) : uint256(outputs.amount1);
            trade.toTokenName = token1Name;
            trade.toTokenSymbol = token1Symbol;
            trade.toTokenDecimals = uint8(token1Decimals);
        } else {
            trade.fromToken = token1;
            trade.fromTokenAmt = outputs.amount1 < 0 ? uint256(-outputs.amount1) : uint256(outputs.amount1);
            trade.fromTokenName = token1Name;
            trade.fromTokenSymbol = token1Symbol;
            trade.fromTokenDecimals = uint8(token1Decimals);
            trade.toToken = token0;
            trade.toTokenAmt = outputs.amount0 < 0 ? uint256(-outputs.amount0) : uint256(outputs.amount0);
            trade.toTokenName = token0Name;
            trade.toTokenSymbol = token0Symbol;
            trade.toTokenDecimals = uint8(token0Decimals);
        }
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = inputs.recipient;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }
}
