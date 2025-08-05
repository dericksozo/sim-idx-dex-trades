// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import "./interfaces/Uniswap/UniswapInterfaces.sol";

contract AlgebraIntegralListener is AlgebraIntegralPool$OnSwapEvent, DexUtils {
    event DexTrade(DexTradeData);

    function AlgebraIntegralPool$onSwapEvent(EventContext memory ctx, AlgebraIntegralPool$SwapEventParams memory params)
        external
        override
    {
        (address token0, address token1,) = DexUtils.getUniswapV3PoolMetadata(ctx.txn.call.callee());
        (string memory token0Name, string memory token0Symbol, uint256 token0Decimals) = getMetadata(token0);
        (string memory token1Name, string memory token1Symbol, uint256 token1Decimals) = getMetadata(token1);
        DexTradeData memory trade;
        address factory = IUniswapV3Pool(ctx.txn.call.callee()).factory();
        if (factory == DexUtils.getHydrexFactory()) {
            trade.dex = "Hydrex";
        } else if (factory == DexUtils.getTrebleSwapFactory()) {
            trade.dex = "TrebleSwap";
        } else {
            return;
        }
        bool zfo = params.amount0 > 0;
        if (zfo) {
            trade.fromToken = token0;
            trade.fromTokenAmt = uint256(params.amount0);
            trade.fromTokenName = token0Name;
            trade.fromTokenSymbol = token0Symbol;
            trade.fromTokenDecimals = uint8(token0Decimals);
            trade.toToken = token1;
            trade.toTokenAmt = params.amount1 < 0 ? uint256(-params.amount1) : uint256(params.amount1);
            trade.toTokenName = token1Name;
            trade.toTokenSymbol = token1Symbol;
            trade.toTokenDecimals = uint8(token1Decimals);
        } else {
            trade.fromToken = token1;
            trade.fromTokenAmt = uint256(params.amount1);
            trade.fromTokenName = token1Name;
            trade.fromTokenSymbol = token1Symbol;
            trade.fromTokenDecimals = uint8(token1Decimals);
            trade.toToken = token0;
            trade.toTokenAmt = params.amount0 < 0 ? uint256(-params.amount0) : uint256(params.amount0);
            trade.toTokenName = token0Name;
            trade.toTokenSymbol = token0Symbol;
            trade.toTokenDecimals = uint8(token0Decimals);
        }
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = params.recipient;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }
}
