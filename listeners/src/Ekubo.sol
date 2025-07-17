// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import {getMetadata} from "./utils/ERC20Metadata.sol";
import "./types/DexTrades.sol";
import {BalanceDelta, BalanceDeltaLibrary} from "./libs/UniswapV4/BalanceDelta.sol";
import {NativeTokenResolver} from "./NativeTokenResolver.sol";

contract EkuboListener is EkuboCore$OnSwap611415377Function, NativeTokenResolver {
    event DexTrade(DexTradeData);

    function EkuboCore$onSwap611415377Function(
        FunctionContext memory ctx,
        EkuboCore$Swap611415377FunctionInputs memory inputs,
        EkuboCore$Swap611415377FunctionOutputs memory outputs
    ) external override {
        (string memory token0Symbol, string memory token0Name, uint256 token0Decimals) = inputs.poolKey.token0
            == address(0)
            ? (nativeToken[block.chainid].symbol, nativeToken[block.chainid].name, nativeToken[block.chainid].decimals)
            : getMetadata(inputs.poolKey.token0);
        (string memory token1Symbol, string memory token1Name, uint256 token1Decimals) = inputs.poolKey.token1
            == address(0)
            ? (nativeToken[block.chainid].symbol, nativeToken[block.chainid].name, nativeToken[block.chainid].decimals)
            : getMetadata(inputs.poolKey.token1);
        DexTradeData memory trade;
        trade.chainId = uint64(block.chainid);
        trade.transactionHash = ctx.txn.hash;
        trade.blockNumber = uint64(block.number);
        trade.blockTimestamp = uint64(block.timestamp);
        trade.txnOriginator = tx.origin;
        trade.recipient = ctx.txn.call.caller;
        trade.liquidityPool = ctx.txn.call.callee;
        trade.dex = "Ekubo";

        if (!inputs.isToken1) {
            trade.fromToken = inputs.poolKey.token0;
            trade.fromTokenAmt = outputs.delta0 < 0 ? uint128(-outputs.delta0) : uint128(outputs.delta0);
            trade.fromTokenSymbol = token0Symbol;
            trade.fromTokenName = token0Name;
            trade.fromTokenDecimals = uint8(token0Decimals);
            trade.toToken = inputs.poolKey.token1;
            trade.toTokenAmt = outputs.delta1 < 0 ? uint128(-outputs.delta1) : uint128(outputs.delta1);
            trade.toTokenSymbol = token1Symbol;
            trade.toTokenName = token1Name;
            trade.toTokenDecimals = uint8(token1Decimals);
        } else {
            trade.fromToken = inputs.poolKey.token1;
            trade.fromTokenAmt = outputs.delta1 < 0 ? uint128(-outputs.delta1) : uint128(outputs.delta1);
            trade.fromTokenSymbol = token1Symbol;
            trade.fromTokenName = token1Name;
            trade.fromTokenDecimals = uint8(token1Decimals);
            trade.toToken = inputs.poolKey.token0;
            trade.toTokenAmt = outputs.delta0 < 0 ? uint128(-outputs.delta0) : uint128(outputs.delta0);
            trade.toTokenSymbol = token0Symbol;
            trade.toTokenName = token0Name;
            trade.toTokenDecimals = uint8(token0Decimals);
        }
        emit DexTrade(trade);
    }
}
