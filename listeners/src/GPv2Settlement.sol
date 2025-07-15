// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";

contract GPv2SettlementListener is GPv2Settlement$PreSettleFunction, GPv2Settlement$OnSettleFunction, GPv2Settlement$OnTradeEvent {
    bool internal inSettlement = false;
    event DexTrade(DexTradeData);

    function preSettleFunction(PreFunctionContext memory ctx, GPv2Settlement$SettleFunctionInputs memory inputs)
        external
        override
    {
        inSettlement = true;
    }

    function onSettleFunction(FunctionContext memory ctx, GPv2Settlement$SettleFunctionInputs memory inputs)
        external
        override
    {
        inSettlement = false;
    }

    function onTradeEvent(EventContext memory ctx, GPv2Settlement$TradeEventParams memory params)
        external
        override
    {
        (string memory sellTokenName, string memory sellTokenSymbol, uint256 sellTokenDecimals) = getMetadata(params.sellToken);
        (string memory buyTokenName, string memory buyTokenSymbol, uint256 buyTokenDecimals) = getMetadata(params.buyToken);
        DexTradeData memory trade;
        trade.dex = "CoWProtocol";
        trade.fromToken = params.sellToken;
        trade.fromTokenAmt = params.sellAmount;
        trade.fromTokenName = sellTokenName;
        trade.fromTokenSymbol = sellTokenSymbol;
        trade.fromTokenDecimals = uint8(sellTokenDecimals);
        trade.toToken = params.buyToken;
        trade.toTokenAmt = params.buyAmount;
        trade.toTokenName = buyTokenName;
        trade.toTokenSymbol = buyTokenSymbol;
        trade.toTokenDecimals = uint8(buyTokenDecimals);
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash;
        trade.txnOriginator = tx.origin;
        trade.recipient = params.owner;
        trade.liquidityPool = ctx.txn.call.callee;

        emit DexTrade(trade);
    }
}
