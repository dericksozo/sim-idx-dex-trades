// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";

contract UniswapV2Listener is UniswapV2Pair$OnSwapEvent, DexUtils {
    event DexTrade(DexTradeData);

    function onSwapEvent(EventContext memory ctx, UniswapV2Pair$SwapEventParams memory params) external override {
        (address token0, address token1) = DexUtils.getUniswapV2PairMetadata(ctx.txn.call.callee);
        address factory = DexUtils.getUniswapV2Factory();
        // bail out early if the pool is not a UniswapV2 pool
        if (DexUtils.getUniswapV2Pool(token0, token1, factory) != ctx.txn.call.callee) return;
        (string memory token0Name, string memory token0Symbol, uint256 token0Decimals) = getMetadata(token0);
        (string memory token1Name, string memory token1Symbol, uint256 token1Decimals) = getMetadata(token1);
        DexTradeData memory trade;
        bool zfo = (params.amount0In > 0);
        if (zfo) {
            trade.fromToken = token0;
            trade.fromTokenAmt = params.amount0In;
            trade.fromTokenName = token0Name;
            trade.fromTokenSymbol = token0Symbol;
            trade.fromTokenDecimals = uint8(token0Decimals);
            trade.toToken = token1;
            trade.toTokenAmt = params.amount1Out;
            trade.toTokenName = token1Name;
            trade.toTokenSymbol = token1Symbol;
            trade.toTokenDecimals = uint8(token1Decimals);
        } else {
            trade.fromToken = token1;
            trade.fromTokenAmt = params.amount1In;
            trade.fromTokenName = token1Name;
            trade.fromTokenSymbol = token1Symbol;
            trade.fromTokenDecimals = uint8(token1Decimals);
            trade.toToken = token0;
            trade.toTokenAmt = params.amount0Out;
            trade.toTokenName = token0Name;
            trade.toTokenSymbol = token0Symbol;
            trade.toTokenDecimals = uint8(token0Decimals);
        }
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash;
        trade.dex = "UniswapV2";
        trade.txnOriginator = tx.origin;
        trade.recipient = params.to;
        trade.liquidityPool = ctx.txn.call.callee;

        emit DexTrade(trade);
    }
}
