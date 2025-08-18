// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "sim-idx-sol/Simidx.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import "./interfaces/Maverick/MaverickV1.sol";
import "./interfaces/IDexListener.sol";

contract MaverickV1Listener is MaverickPool$OnSwapEvent, DexUtils, IDexListener {
    function MaverickPool$onSwapEvent(EventContext memory ctx, MaverickPool$SwapEventParams memory params)
        external
        override
    {
        address tokenA = IPool(ctx.txn.call.callee()).tokenA();
        address tokenB = IPool(ctx.txn.call.callee()).tokenB();
        if (!IFactory(DexUtils.getMaverickV1Factory()).isFactoryPool(IPool(ctx.txn.call.callee()))) {
            return;
        }
        (string memory tokenAName, string memory tokenASymbol, uint256 tokenADecimals) = getMetadata(tokenA);
        (string memory tokenBName, string memory tokenBSymbol, uint256 tokenBDecimals) = getMetadata(tokenB);
        DexTradeData memory trade;

        if (params.tokenAIn) {
            trade.fromToken = tokenA;
            trade.fromTokenName = tokenAName;
            trade.fromTokenSymbol = tokenASymbol;
            trade.fromTokenDecimals = uint8(tokenADecimals);
            trade.toToken = tokenB;
            trade.toTokenName = tokenBName;
            trade.toTokenSymbol = tokenBSymbol;
            trade.toTokenDecimals = uint8(tokenBDecimals);
        } else {
            trade.fromToken = tokenB;
            trade.fromTokenName = tokenBName;
            trade.fromTokenSymbol = tokenBSymbol;
            trade.fromTokenDecimals = uint8(tokenBDecimals);
            trade.toToken = tokenA;
            trade.toTokenName = tokenAName;
            trade.toTokenSymbol = tokenASymbol;
            trade.toTokenDecimals = uint8(tokenADecimals);
        }
        trade.dex = "MaverickV1";
        trade.fromTokenAmt = params.amountIn;
        trade.toTokenAmt = params.amountOut;
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = blockNumber();
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = params.recipient;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }
}
