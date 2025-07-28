// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";

contract AirSwapV5Listener is
    AirSwapV5$OnSwapFunction,
    AirSwapV5$OnSwapAnySenderFunction,
    AirSwapV5$OnSwapLightFunction,
    DexUtils
{
    event DexTrade(DexTradeData);

    function AirSwapV5$onSwapFunction(FunctionContext memory ctx, AirSwapV5$SwapFunctionInputs memory inputs)
        external
        override
    {
        (string memory fromTokenName, string memory fromTokenSymbol, uint256 fromTokenDecimals) =
            getMetadata(inputs.signerToken);
        (string memory toTokenName, string memory toTokenSymbol, uint256 toTokenDecimals) =
            getMetadata(inputs.senderToken);
        DexTradeData memory trade;

        trade.fromToken = inputs.signerToken;
        trade.fromTokenName = fromTokenName;
        trade.fromTokenSymbol = fromTokenSymbol;
        trade.fromTokenDecimals = uint8(fromTokenDecimals);
        trade.toToken = inputs.senderToken;
        trade.toTokenName = toTokenName;
        trade.toTokenSymbol = toTokenSymbol;
        trade.toTokenDecimals = uint8(toTokenDecimals);
        trade.dex = "AirSwapV5";
        trade.fromTokenAmt = inputs.signerAmount;
        trade.toTokenAmt = inputs.senderAmount;
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = inputs.signerWallet;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }

    function AirSwapV5$onSwapAnySenderFunction(
        FunctionContext memory ctx,
        AirSwapV5$SwapAnySenderFunctionInputs memory inputs
    ) external override {
        (string memory fromTokenName, string memory fromTokenSymbol, uint256 fromTokenDecimals) =
            getMetadata(inputs.signerToken);
        (string memory toTokenName, string memory toTokenSymbol, uint256 toTokenDecimals) =
            getMetadata(inputs.senderToken);
        DexTradeData memory trade;

        trade.fromToken = inputs.signerToken;
        trade.fromTokenName = fromTokenName;
        trade.fromTokenSymbol = fromTokenSymbol;
        trade.fromTokenDecimals = uint8(fromTokenDecimals);
        trade.toToken = inputs.senderToken;
        trade.toTokenName = toTokenName;
        trade.toTokenSymbol = toTokenSymbol;
        trade.toTokenDecimals = uint8(toTokenDecimals);
        trade.dex = "AirSwapV5";
        trade.fromTokenAmt = inputs.signerAmount;
        trade.toTokenAmt = inputs.senderAmount;
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = inputs.signerWallet;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }

    function AirSwapV5$onSwapLightFunction(FunctionContext memory ctx, AirSwapV5$SwapLightFunctionInputs memory inputs)
        external
        override
    {
        (string memory fromTokenName, string memory fromTokenSymbol, uint256 fromTokenDecimals) =
            getMetadata(inputs.signerToken);
        (string memory toTokenName, string memory toTokenSymbol, uint256 toTokenDecimals) =
            getMetadata(inputs.senderToken);
        DexTradeData memory trade;

        trade.fromToken = inputs.signerToken;
        trade.fromTokenName = fromTokenName;
        trade.fromTokenSymbol = fromTokenSymbol;
        trade.fromTokenDecimals = uint8(fromTokenDecimals);
        trade.toToken = inputs.senderToken;
        trade.toTokenName = toTokenName;
        trade.toTokenSymbol = toTokenSymbol;
        trade.toTokenDecimals = uint8(toTokenDecimals);
        trade.dex = "AirSwapV5";
        trade.fromTokenAmt = inputs.signerAmount;
        trade.toTokenAmt = inputs.senderAmount;
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = inputs.signerWallet;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }
}
