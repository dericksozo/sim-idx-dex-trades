// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./interfaces/IDexListener.sol";

contract BalancerV3Listener is BalancerV3Vault$OnSwapFunction, IDexListener {
    function BalancerV3Vault$onSwapFunction(
        FunctionContext memory ctx,
        BalancerV3Vault$SwapFunctionInputs memory inputs,
        BalancerV3Vault$SwapFunctionOutputs memory outputs
    ) external override {
        (string memory fromTokenName, string memory fromTokenSymbol, uint256 fromTokenDecimals) =
            getMetadata(inputs.vaultSwapParams.tokenIn);
        (string memory toTokenName, string memory toTokenSymbol, uint256 toTokenDecimals) =
            getMetadata(inputs.vaultSwapParams.tokenOut);
        DexTradeData memory trade;

        trade.fromToken = inputs.vaultSwapParams.tokenIn;
        trade.fromTokenName = fromTokenName;
        trade.fromTokenSymbol = fromTokenSymbol;
        trade.fromTokenDecimals = uint8(fromTokenDecimals);
        trade.toToken = inputs.vaultSwapParams.tokenOut;
        trade.toTokenName = toTokenName;
        trade.toTokenSymbol = toTokenSymbol;
        trade.toTokenDecimals = uint8(toTokenDecimals);
        trade.dex = "BalancerV3";
        trade.fromTokenAmt = outputs.amountIn;
        trade.toTokenAmt = outputs.amountOut;
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = ctx.txn.call.callee();
        trade.liquidityPool = inputs.vaultSwapParams.pool;

        emit DexTrade(trade);
    }
}
