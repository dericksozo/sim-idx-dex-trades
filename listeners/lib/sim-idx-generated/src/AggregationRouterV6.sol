// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function AggregationRouterV6$Abi() pure returns (Abi memory) {
    return Abi("AggregationRouterV6");
}
struct AggregationRouterV6$AdvanceEpochFunctionInputs {
    uint96 series;
    uint256 amount;
}

struct AggregationRouterV6$AndFunctionInputs {
    uint256 offsets;
    bytes data;
}

struct AggregationRouterV6$AndFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$ArbitraryStaticCallFunctionInputs {
    address target;
    bytes data;
}

struct AggregationRouterV6$ArbitraryStaticCallFunctionOutputs {
    uint256 outArg0;
}

struct AggregationRouterV6$BitInvalidatorForOrderFunctionInputs {
    address maker;
    uint256 slot;
}

struct AggregationRouterV6$BitInvalidatorForOrderFunctionOutputs {
    uint256 outArg0;
}

struct AggregationRouterV6$BitsInvalidateForOrderFunctionInputs {
    uint256 makerTraits;
    uint256 additionalMask;
}

struct AggregationRouterV6$CancelOrderFunctionInputs {
    uint256 makerTraits;
    bytes32 orderHash;
}

struct AggregationRouterV6$CancelOrdersFunctionInputs {
    uint256[] makerTraits;
    bytes32[] orderHashes;
}

struct AggregationRouterV6$CheckPredicateFunctionInputs {
    bytes predicate;
}

struct AggregationRouterV6$CheckPredicateFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$ClipperSwapFunctionInputs {
    address clipperExchange;
    uint256 srcToken;
    address dstToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 goodUntil;
    bytes32 r;
    bytes32 vs;
}

struct AggregationRouterV6$ClipperSwapFunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$ClipperSwapToFunctionInputs {
    address clipperExchange;
    address recipient;
    uint256 srcToken;
    address dstToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 goodUntil;
    bytes32 r;
    bytes32 vs;
}

struct AggregationRouterV6$ClipperSwapToFunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$CurveSwapCallbackFunctionInputs {
    address outArg0;
    address outArg1;
    address inCoin;
    uint256 dx;
    uint256 outArg4;
}

struct AggregationRouterV6$Eip712DomainFunctionOutputs {
    bytes1 fields;
    string name;
    string version;
    uint256 chainId;
    address verifyingContract;
    bytes32 salt;
    uint256[] extensions;
}

struct AggregationRouterV6$EpochFunctionInputs {
    address maker;
    uint96 series;
}

struct AggregationRouterV6$EpochFunctionOutputs {
    uint256 outArg0;
}

struct AggregationRouterV6$EpochEqualsFunctionInputs {
    address maker;
    uint256 series;
    uint256 makerEpoch;
}

struct AggregationRouterV6$EpochEqualsFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$EqFunctionInputs {
    uint256 value;
    bytes data;
}

struct AggregationRouterV6$EqFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$EthUnoswapFunctionInputs {
    uint256 minReturn;
    uint256 dex;
}

struct AggregationRouterV6$EthUnoswapFunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$EthUnoswap2FunctionInputs {
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
}

struct AggregationRouterV6$EthUnoswap2FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$EthUnoswap3FunctionInputs {
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
    uint256 dex3;
}

struct AggregationRouterV6$EthUnoswap3FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$EthUnoswapToFunctionInputs {
    uint256 to;
    uint256 minReturn;
    uint256 dex;
}

struct AggregationRouterV6$EthUnoswapToFunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$EthUnoswapTo2FunctionInputs {
    uint256 to;
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
}

struct AggregationRouterV6$EthUnoswapTo2FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$EthUnoswapTo3FunctionInputs {
    uint256 to;
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
    uint256 dex3;
}

struct AggregationRouterV6$EthUnoswapTo3FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$IOrderMixin$Order {
    uint256 salt;
    uint256 maker;
    uint256 receiver;
    uint256 makerAsset;
    uint256 takerAsset;
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 makerTraits;
}

struct AggregationRouterV6$FillContractOrderFunctionInputs {
    AggregationRouterV6$IOrderMixin$Order order;
    bytes signature;
    uint256 amount;
    uint256 takerTraits;
}

struct AggregationRouterV6$FillContractOrderFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
    bytes32 outArg2;
}

struct AggregationRouterV6$FillContractOrderArgsFunctionInputs {
    AggregationRouterV6$IOrderMixin$Order order;
    bytes signature;
    uint256 amount;
    uint256 takerTraits;
    bytes args;
}

struct AggregationRouterV6$FillContractOrderArgsFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
    bytes32 outArg2;
}

struct AggregationRouterV6$FillOrderFunctionInputs {
    AggregationRouterV6$IOrderMixin$Order order;
    bytes32 r;
    bytes32 vs;
    uint256 amount;
    uint256 takerTraits;
}

struct AggregationRouterV6$FillOrderFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
    bytes32 outArg2;
}

struct AggregationRouterV6$FillOrderArgsFunctionInputs {
    AggregationRouterV6$IOrderMixin$Order order;
    bytes32 r;
    bytes32 vs;
    uint256 amount;
    uint256 takerTraits;
    bytes args;
}

struct AggregationRouterV6$FillOrderArgsFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
    bytes32 outArg2;
}

struct AggregationRouterV6$GtFunctionInputs {
    uint256 value;
    bytes data;
}

struct AggregationRouterV6$GtFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$HashOrderFunctionInputs {
    AggregationRouterV6$IOrderMixin$Order order;
}

struct AggregationRouterV6$HashOrderFunctionOutputs {
    bytes32 outArg0;
}

struct AggregationRouterV6$IncreaseEpochFunctionInputs {
    uint96 series;
}

struct AggregationRouterV6$LtFunctionInputs {
    uint256 value;
    bytes data;
}

struct AggregationRouterV6$LtFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$NotFunctionInputs {
    bytes data;
}

struct AggregationRouterV6$NotFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$OrFunctionInputs {
    uint256 offsets;
    bytes data;
}

struct AggregationRouterV6$OrFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$OwnerFunctionOutputs {
    address outArg0;
}

struct AggregationRouterV6$PausedFunctionOutputs {
    bool outArg0;
}

struct AggregationRouterV6$PermitAndCallFunctionInputs {
    bytes permit;
    bytes action;
}

struct AggregationRouterV6$RawRemainingInvalidatorForOrderFunctionInputs {
    address maker;
    bytes32 orderHash;
}

struct AggregationRouterV6$RawRemainingInvalidatorForOrderFunctionOutputs {
    uint256 outArg0;
}

struct AggregationRouterV6$RemainingInvalidatorForOrderFunctionInputs {
    address maker;
    bytes32 orderHash;
}

struct AggregationRouterV6$RemainingInvalidatorForOrderFunctionOutputs {
    uint256 outArg0;
}

struct AggregationRouterV6$RescueFundsFunctionInputs {
    address token;
    uint256 amount;
}

struct AggregationRouterV6$SimulateFunctionInputs {
    address target;
    bytes data;
}

struct AggregationRouterV6$GenericRouter$SwapDescription {
    address srcToken;
    address dstToken;
    address srcReceiver;
    address dstReceiver;
    uint256 amount;
    uint256 minReturnAmount;
    uint256 flags;
}

struct AggregationRouterV6$SwapFunctionInputs {
    address executor;
    AggregationRouterV6$GenericRouter$SwapDescription desc;
    bytes data;
}

struct AggregationRouterV6$SwapFunctionOutputs {
    uint256 returnAmount;
    uint256 spentAmount;
}

struct AggregationRouterV6$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct AggregationRouterV6$UniswapV3SwapCallbackFunctionInputs {
    int256 amount0Delta;
    int256 amount1Delta;
    bytes outArg2;
}

struct AggregationRouterV6$UnoswapFunctionInputs {
    uint256 token;
    uint256 amount;
    uint256 minReturn;
    uint256 dex;
}

struct AggregationRouterV6$UnoswapFunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$Unoswap2FunctionInputs {
    uint256 token;
    uint256 amount;
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
}

struct AggregationRouterV6$Unoswap2FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$Unoswap3FunctionInputs {
    uint256 token;
    uint256 amount;
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
    uint256 dex3;
}

struct AggregationRouterV6$Unoswap3FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$UnoswapToFunctionInputs {
    uint256 to;
    uint256 token;
    uint256 amount;
    uint256 minReturn;
    uint256 dex;
}

struct AggregationRouterV6$UnoswapToFunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$UnoswapTo2FunctionInputs {
    uint256 to;
    uint256 token;
    uint256 amount;
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
}

struct AggregationRouterV6$UnoswapTo2FunctionOutputs {
    uint256 returnAmount;
}

struct AggregationRouterV6$UnoswapTo3FunctionInputs {
    uint256 to;
    uint256 token;
    uint256 amount;
    uint256 minReturn;
    uint256 dex;
    uint256 dex2;
    uint256 dex3;
}

struct AggregationRouterV6$UnoswapTo3FunctionOutputs {
    uint256 returnAmount;
}

abstract contract AggregationRouterV6$OnAdvanceEpochFunction {
    function AggregationRouterV6$onAdvanceEpochFunction(FunctionContext memory ctx, AggregationRouterV6$AdvanceEpochFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnAdvanceEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x0d2c7c16),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onAdvanceEpochFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreAdvanceEpochFunction {
    function AggregationRouterV6$preAdvanceEpochFunction(PreFunctionContext memory ctx, AggregationRouterV6$AdvanceEpochFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreAdvanceEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x0d2c7c16),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preAdvanceEpochFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnAndFunction {
    function AggregationRouterV6$onAndFunction(FunctionContext memory ctx, AggregationRouterV6$AndFunctionInputs memory inputs, AggregationRouterV6$AndFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnAndFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbfa75143),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onAndFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreAndFunction {
    function AggregationRouterV6$preAndFunction(PreFunctionContext memory ctx, AggregationRouterV6$AndFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreAndFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbfa75143),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preAndFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnArbitraryStaticCallFunction {
    function AggregationRouterV6$onArbitraryStaticCallFunction(FunctionContext memory ctx, AggregationRouterV6$ArbitraryStaticCallFunctionInputs memory inputs, AggregationRouterV6$ArbitraryStaticCallFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnArbitraryStaticCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbf15fcd8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onArbitraryStaticCallFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreArbitraryStaticCallFunction {
    function AggregationRouterV6$preArbitraryStaticCallFunction(PreFunctionContext memory ctx, AggregationRouterV6$ArbitraryStaticCallFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreArbitraryStaticCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbf15fcd8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preArbitraryStaticCallFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnBitInvalidatorForOrderFunction {
    function AggregationRouterV6$onBitInvalidatorForOrderFunction(FunctionContext memory ctx, AggregationRouterV6$BitInvalidatorForOrderFunctionInputs memory inputs, AggregationRouterV6$BitInvalidatorForOrderFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnBitInvalidatorForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x143e86a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onBitInvalidatorForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreBitInvalidatorForOrderFunction {
    function AggregationRouterV6$preBitInvalidatorForOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$BitInvalidatorForOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreBitInvalidatorForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x143e86a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preBitInvalidatorForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnBitsInvalidateForOrderFunction {
    function AggregationRouterV6$onBitsInvalidateForOrderFunction(FunctionContext memory ctx, AggregationRouterV6$BitsInvalidateForOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnBitsInvalidateForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x05b1ea03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onBitsInvalidateForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreBitsInvalidateForOrderFunction {
    function AggregationRouterV6$preBitsInvalidateForOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$BitsInvalidateForOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreBitsInvalidateForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x05b1ea03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preBitsInvalidateForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnCancelOrderFunction {
    function AggregationRouterV6$onCancelOrderFunction(FunctionContext memory ctx, AggregationRouterV6$CancelOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnCancelOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xb68fb020),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onCancelOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreCancelOrderFunction {
    function AggregationRouterV6$preCancelOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$CancelOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreCancelOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xb68fb020),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preCancelOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnCancelOrdersFunction {
    function AggregationRouterV6$onCancelOrdersFunction(FunctionContext memory ctx, AggregationRouterV6$CancelOrdersFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnCancelOrdersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x89e7c650),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onCancelOrdersFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreCancelOrdersFunction {
    function AggregationRouterV6$preCancelOrdersFunction(PreFunctionContext memory ctx, AggregationRouterV6$CancelOrdersFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreCancelOrdersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x89e7c650),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preCancelOrdersFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnCheckPredicateFunction {
    function AggregationRouterV6$onCheckPredicateFunction(FunctionContext memory ctx, AggregationRouterV6$CheckPredicateFunctionInputs memory inputs, AggregationRouterV6$CheckPredicateFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnCheckPredicateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x15169dec),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onCheckPredicateFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreCheckPredicateFunction {
    function AggregationRouterV6$preCheckPredicateFunction(PreFunctionContext memory ctx, AggregationRouterV6$CheckPredicateFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreCheckPredicateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x15169dec),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preCheckPredicateFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnClipperSwapFunction {
    function AggregationRouterV6$onClipperSwapFunction(FunctionContext memory ctx, AggregationRouterV6$ClipperSwapFunctionInputs memory inputs, AggregationRouterV6$ClipperSwapFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnClipperSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xd2d374e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onClipperSwapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreClipperSwapFunction {
    function AggregationRouterV6$preClipperSwapFunction(PreFunctionContext memory ctx, AggregationRouterV6$ClipperSwapFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreClipperSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xd2d374e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preClipperSwapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnClipperSwapToFunction {
    function AggregationRouterV6$onClipperSwapToFunction(FunctionContext memory ctx, AggregationRouterV6$ClipperSwapToFunctionInputs memory inputs, AggregationRouterV6$ClipperSwapToFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnClipperSwapToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xc4d652af),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onClipperSwapToFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreClipperSwapToFunction {
    function AggregationRouterV6$preClipperSwapToFunction(PreFunctionContext memory ctx, AggregationRouterV6$ClipperSwapToFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreClipperSwapToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xc4d652af),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preClipperSwapToFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnCurveSwapCallbackFunction {
    function AggregationRouterV6$onCurveSwapCallbackFunction(FunctionContext memory ctx, AggregationRouterV6$CurveSwapCallbackFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnCurveSwapCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xe413f48d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onCurveSwapCallbackFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreCurveSwapCallbackFunction {
    function AggregationRouterV6$preCurveSwapCallbackFunction(PreFunctionContext memory ctx, AggregationRouterV6$CurveSwapCallbackFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreCurveSwapCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xe413f48d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preCurveSwapCallbackFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEip712DomainFunction {
    function AggregationRouterV6$onEip712DomainFunction(FunctionContext memory ctx, AggregationRouterV6$Eip712DomainFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEip712DomainFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x84b0196e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEip712DomainFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEip712DomainFunction {
    function AggregationRouterV6$preEip712DomainFunction(PreFunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerPreEip712DomainFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x84b0196e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEip712DomainFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEpochFunction {
    function AggregationRouterV6$onEpochFunction(FunctionContext memory ctx, AggregationRouterV6$EpochFunctionInputs memory inputs, AggregationRouterV6$EpochFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xfcea9e4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEpochFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEpochFunction {
    function AggregationRouterV6$preEpochFunction(PreFunctionContext memory ctx, AggregationRouterV6$EpochFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xfcea9e4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEpochFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEpochEqualsFunction {
    function AggregationRouterV6$onEpochEqualsFunction(FunctionContext memory ctx, AggregationRouterV6$EpochEqualsFunctionInputs memory inputs, AggregationRouterV6$EpochEqualsFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEpochEqualsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xce3d710a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEpochEqualsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEpochEqualsFunction {
    function AggregationRouterV6$preEpochEqualsFunction(PreFunctionContext memory ctx, AggregationRouterV6$EpochEqualsFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEpochEqualsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xce3d710a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEpochEqualsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEqFunction {
    function AggregationRouterV6$onEqFunction(FunctionContext memory ctx, AggregationRouterV6$EqFunctionInputs memory inputs, AggregationRouterV6$EqFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x6fe7b0ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEqFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEqFunction {
    function AggregationRouterV6$preEqFunction(PreFunctionContext memory ctx, AggregationRouterV6$EqFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x6fe7b0ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEqFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEthUnoswapFunction {
    function AggregationRouterV6$onEthUnoswapFunction(FunctionContext memory ctx, AggregationRouterV6$EthUnoswapFunctionInputs memory inputs, AggregationRouterV6$EthUnoswapFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEthUnoswapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xa76dfc3b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEthUnoswapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEthUnoswapFunction {
    function AggregationRouterV6$preEthUnoswapFunction(PreFunctionContext memory ctx, AggregationRouterV6$EthUnoswapFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEthUnoswapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xa76dfc3b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEthUnoswapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEthUnoswap2Function {
    function AggregationRouterV6$onEthUnoswap2Function(FunctionContext memory ctx, AggregationRouterV6$EthUnoswap2FunctionInputs memory inputs, AggregationRouterV6$EthUnoswap2FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEthUnoswap2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x89af926a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEthUnoswap2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEthUnoswap2Function {
    function AggregationRouterV6$preEthUnoswap2Function(PreFunctionContext memory ctx, AggregationRouterV6$EthUnoswap2FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEthUnoswap2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x89af926a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEthUnoswap2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEthUnoswap3Function {
    function AggregationRouterV6$onEthUnoswap3Function(FunctionContext memory ctx, AggregationRouterV6$EthUnoswap3FunctionInputs memory inputs, AggregationRouterV6$EthUnoswap3FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEthUnoswap3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x188ac35d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEthUnoswap3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEthUnoswap3Function {
    function AggregationRouterV6$preEthUnoswap3Function(PreFunctionContext memory ctx, AggregationRouterV6$EthUnoswap3FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEthUnoswap3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x188ac35d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEthUnoswap3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEthUnoswapToFunction {
    function AggregationRouterV6$onEthUnoswapToFunction(FunctionContext memory ctx, AggregationRouterV6$EthUnoswapToFunctionInputs memory inputs, AggregationRouterV6$EthUnoswapToFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEthUnoswapToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x175accdc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEthUnoswapToFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEthUnoswapToFunction {
    function AggregationRouterV6$preEthUnoswapToFunction(PreFunctionContext memory ctx, AggregationRouterV6$EthUnoswapToFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEthUnoswapToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x175accdc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEthUnoswapToFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEthUnoswapTo2Function {
    function AggregationRouterV6$onEthUnoswapTo2Function(FunctionContext memory ctx, AggregationRouterV6$EthUnoswapTo2FunctionInputs memory inputs, AggregationRouterV6$EthUnoswapTo2FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEthUnoswapTo2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x0f449d71),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEthUnoswapTo2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEthUnoswapTo2Function {
    function AggregationRouterV6$preEthUnoswapTo2Function(PreFunctionContext memory ctx, AggregationRouterV6$EthUnoswapTo2FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEthUnoswapTo2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x0f449d71),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEthUnoswapTo2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnEthUnoswapTo3Function {
    function AggregationRouterV6$onEthUnoswapTo3Function(FunctionContext memory ctx, AggregationRouterV6$EthUnoswapTo3FunctionInputs memory inputs, AggregationRouterV6$EthUnoswapTo3FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnEthUnoswapTo3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x493189f0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onEthUnoswapTo3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreEthUnoswapTo3Function {
    function AggregationRouterV6$preEthUnoswapTo3Function(PreFunctionContext memory ctx, AggregationRouterV6$EthUnoswapTo3FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreEthUnoswapTo3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x493189f0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preEthUnoswapTo3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnFillContractOrderFunction {
    function AggregationRouterV6$onFillContractOrderFunction(FunctionContext memory ctx, AggregationRouterV6$FillContractOrderFunctionInputs memory inputs, AggregationRouterV6$FillContractOrderFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnFillContractOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xcc713a04),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onFillContractOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreFillContractOrderFunction {
    function AggregationRouterV6$preFillContractOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$FillContractOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreFillContractOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xcc713a04),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preFillContractOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnFillContractOrderArgsFunction {
    function AggregationRouterV6$onFillContractOrderArgsFunction(FunctionContext memory ctx, AggregationRouterV6$FillContractOrderArgsFunctionInputs memory inputs, AggregationRouterV6$FillContractOrderArgsFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnFillContractOrderArgsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x56a75868),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onFillContractOrderArgsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreFillContractOrderArgsFunction {
    function AggregationRouterV6$preFillContractOrderArgsFunction(PreFunctionContext memory ctx, AggregationRouterV6$FillContractOrderArgsFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreFillContractOrderArgsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x56a75868),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preFillContractOrderArgsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnFillOrderFunction {
    function AggregationRouterV6$onFillOrderFunction(FunctionContext memory ctx, AggregationRouterV6$FillOrderFunctionInputs memory inputs, AggregationRouterV6$FillOrderFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnFillOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x9fda64bd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onFillOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreFillOrderFunction {
    function AggregationRouterV6$preFillOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$FillOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreFillOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x9fda64bd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preFillOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnFillOrderArgsFunction {
    function AggregationRouterV6$onFillOrderArgsFunction(FunctionContext memory ctx, AggregationRouterV6$FillOrderArgsFunctionInputs memory inputs, AggregationRouterV6$FillOrderArgsFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnFillOrderArgsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xf497df75),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onFillOrderArgsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreFillOrderArgsFunction {
    function AggregationRouterV6$preFillOrderArgsFunction(PreFunctionContext memory ctx, AggregationRouterV6$FillOrderArgsFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreFillOrderArgsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xf497df75),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preFillOrderArgsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnGtFunction {
    function AggregationRouterV6$onGtFunction(FunctionContext memory ctx, AggregationRouterV6$GtFunctionInputs memory inputs, AggregationRouterV6$GtFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnGtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x4f38e2b8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onGtFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreGtFunction {
    function AggregationRouterV6$preGtFunction(PreFunctionContext memory ctx, AggregationRouterV6$GtFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreGtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x4f38e2b8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preGtFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnHashOrderFunction {
    function AggregationRouterV6$onHashOrderFunction(FunctionContext memory ctx, AggregationRouterV6$HashOrderFunctionInputs memory inputs, AggregationRouterV6$HashOrderFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnHashOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x802b2ef1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onHashOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreHashOrderFunction {
    function AggregationRouterV6$preHashOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$HashOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreHashOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x802b2ef1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preHashOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnIncreaseEpochFunction {
    function AggregationRouterV6$onIncreaseEpochFunction(FunctionContext memory ctx, AggregationRouterV6$IncreaseEpochFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnIncreaseEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xc3cf8043),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onIncreaseEpochFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreIncreaseEpochFunction {
    function AggregationRouterV6$preIncreaseEpochFunction(PreFunctionContext memory ctx, AggregationRouterV6$IncreaseEpochFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreIncreaseEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xc3cf8043),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preIncreaseEpochFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnLtFunction {
    function AggregationRouterV6$onLtFunction(FunctionContext memory ctx, AggregationRouterV6$LtFunctionInputs memory inputs, AggregationRouterV6$LtFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnLtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xca4ece22),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onLtFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreLtFunction {
    function AggregationRouterV6$preLtFunction(PreFunctionContext memory ctx, AggregationRouterV6$LtFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreLtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xca4ece22),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preLtFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnNotFunction {
    function AggregationRouterV6$onNotFunction(FunctionContext memory ctx, AggregationRouterV6$NotFunctionInputs memory inputs, AggregationRouterV6$NotFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnNotFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbf797959),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onNotFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreNotFunction {
    function AggregationRouterV6$preNotFunction(PreFunctionContext memory ctx, AggregationRouterV6$NotFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreNotFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbf797959),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preNotFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnOrFunction {
    function AggregationRouterV6$onOrFunction(FunctionContext memory ctx, AggregationRouterV6$OrFunctionInputs memory inputs, AggregationRouterV6$OrFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnOrFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x74261145),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onOrFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreOrFunction {
    function AggregationRouterV6$preOrFunction(PreFunctionContext memory ctx, AggregationRouterV6$OrFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreOrFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x74261145),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preOrFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnOwnerFunction {
    function AggregationRouterV6$onOwnerFunction(FunctionContext memory ctx, AggregationRouterV6$OwnerFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onOwnerFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreOwnerFunction {
    function AggregationRouterV6$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preOwnerFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnPauseFunction {
    function AggregationRouterV6$onPauseFunction(FunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerOnPauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onPauseFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PrePauseFunction {
    function AggregationRouterV6$prePauseFunction(PreFunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerPrePauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$prePauseFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnPausedFunction {
    function AggregationRouterV6$onPausedFunction(FunctionContext memory ctx, AggregationRouterV6$PausedFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onPausedFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PrePausedFunction {
    function AggregationRouterV6$prePausedFunction(PreFunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerPrePausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$prePausedFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnPermitAndCallFunction {
    function AggregationRouterV6$onPermitAndCallFunction(FunctionContext memory ctx, AggregationRouterV6$PermitAndCallFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnPermitAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x5816d723),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onPermitAndCallFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PrePermitAndCallFunction {
    function AggregationRouterV6$prePermitAndCallFunction(PreFunctionContext memory ctx, AggregationRouterV6$PermitAndCallFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPrePermitAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x5816d723),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$prePermitAndCallFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnRawRemainingInvalidatorForOrderFunction {
    function AggregationRouterV6$onRawRemainingInvalidatorForOrderFunction(FunctionContext memory ctx, AggregationRouterV6$RawRemainingInvalidatorForOrderFunctionInputs memory inputs, AggregationRouterV6$RawRemainingInvalidatorForOrderFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnRawRemainingInvalidatorForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xc2a40753),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onRawRemainingInvalidatorForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreRawRemainingInvalidatorForOrderFunction {
    function AggregationRouterV6$preRawRemainingInvalidatorForOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$RawRemainingInvalidatorForOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreRawRemainingInvalidatorForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xc2a40753),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preRawRemainingInvalidatorForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnRemainingInvalidatorForOrderFunction {
    function AggregationRouterV6$onRemainingInvalidatorForOrderFunction(FunctionContext memory ctx, AggregationRouterV6$RemainingInvalidatorForOrderFunctionInputs memory inputs, AggregationRouterV6$RemainingInvalidatorForOrderFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnRemainingInvalidatorForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x435b9789),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onRemainingInvalidatorForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreRemainingInvalidatorForOrderFunction {
    function AggregationRouterV6$preRemainingInvalidatorForOrderFunction(PreFunctionContext memory ctx, AggregationRouterV6$RemainingInvalidatorForOrderFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreRemainingInvalidatorForOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x435b9789),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preRemainingInvalidatorForOrderFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnRenounceOwnershipFunction {
    function AggregationRouterV6$onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreRenounceOwnershipFunction {
    function AggregationRouterV6$preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnRescueFundsFunction {
    function AggregationRouterV6$onRescueFundsFunction(FunctionContext memory ctx, AggregationRouterV6$RescueFundsFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnRescueFundsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x78e3214f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onRescueFundsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreRescueFundsFunction {
    function AggregationRouterV6$preRescueFundsFunction(PreFunctionContext memory ctx, AggregationRouterV6$RescueFundsFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreRescueFundsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x78e3214f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preRescueFundsFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnSimulateFunction {
    function AggregationRouterV6$onSimulateFunction(FunctionContext memory ctx, AggregationRouterV6$SimulateFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnSimulateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbd61951d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onSimulateFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreSimulateFunction {
    function AggregationRouterV6$preSimulateFunction(PreFunctionContext memory ctx, AggregationRouterV6$SimulateFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreSimulateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xbd61951d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preSimulateFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnSwapFunction {
    function AggregationRouterV6$onSwapFunction(FunctionContext memory ctx, AggregationRouterV6$SwapFunctionInputs memory inputs, AggregationRouterV6$SwapFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x07ed2379),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onSwapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreSwapFunction {
    function AggregationRouterV6$preSwapFunction(PreFunctionContext memory ctx, AggregationRouterV6$SwapFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x07ed2379),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preSwapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnTransferOwnershipFunction {
    function AggregationRouterV6$onTransferOwnershipFunction(FunctionContext memory ctx, AggregationRouterV6$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreTransferOwnershipFunction {
    function AggregationRouterV6$preTransferOwnershipFunction(PreFunctionContext memory ctx, AggregationRouterV6$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUniswapV3SwapCallbackFunction {
    function AggregationRouterV6$onUniswapV3SwapCallbackFunction(FunctionContext memory ctx, AggregationRouterV6$UniswapV3SwapCallbackFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerOnUniswapV3SwapCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xfa461e33),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUniswapV3SwapCallbackFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUniswapV3SwapCallbackFunction {
    function AggregationRouterV6$preUniswapV3SwapCallbackFunction(PreFunctionContext memory ctx, AggregationRouterV6$UniswapV3SwapCallbackFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUniswapV3SwapCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xfa461e33),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUniswapV3SwapCallbackFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnoswapFunction {
    function AggregationRouterV6$onUnoswapFunction(FunctionContext memory ctx, AggregationRouterV6$UnoswapFunctionInputs memory inputs, AggregationRouterV6$UnoswapFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnUnoswapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x83800a8e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnoswapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnoswapFunction {
    function AggregationRouterV6$preUnoswapFunction(PreFunctionContext memory ctx, AggregationRouterV6$UnoswapFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUnoswapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x83800a8e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnoswapFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnoswap2Function {
    function AggregationRouterV6$onUnoswap2Function(FunctionContext memory ctx, AggregationRouterV6$Unoswap2FunctionInputs memory inputs, AggregationRouterV6$Unoswap2FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnUnoswap2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x8770ba91),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnoswap2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnoswap2Function {
    function AggregationRouterV6$preUnoswap2Function(PreFunctionContext memory ctx, AggregationRouterV6$Unoswap2FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUnoswap2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x8770ba91),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnoswap2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnoswap3Function {
    function AggregationRouterV6$onUnoswap3Function(FunctionContext memory ctx, AggregationRouterV6$Unoswap3FunctionInputs memory inputs, AggregationRouterV6$Unoswap3FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnUnoswap3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x19367472),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnoswap3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnoswap3Function {
    function AggregationRouterV6$preUnoswap3Function(PreFunctionContext memory ctx, AggregationRouterV6$Unoswap3FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUnoswap3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x19367472),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnoswap3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnoswapToFunction {
    function AggregationRouterV6$onUnoswapToFunction(FunctionContext memory ctx, AggregationRouterV6$UnoswapToFunctionInputs memory inputs, AggregationRouterV6$UnoswapToFunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnUnoswapToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xe2c95c82),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnoswapToFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnoswapToFunction {
    function AggregationRouterV6$preUnoswapToFunction(PreFunctionContext memory ctx, AggregationRouterV6$UnoswapToFunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUnoswapToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xe2c95c82),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnoswapToFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnoswapTo2Function {
    function AggregationRouterV6$onUnoswapTo2Function(FunctionContext memory ctx, AggregationRouterV6$UnoswapTo2FunctionInputs memory inputs, AggregationRouterV6$UnoswapTo2FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnUnoswapTo2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xea76dddf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnoswapTo2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnoswapTo2Function {
    function AggregationRouterV6$preUnoswapTo2Function(PreFunctionContext memory ctx, AggregationRouterV6$UnoswapTo2FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUnoswapTo2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xea76dddf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnoswapTo2Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnoswapTo3Function {
    function AggregationRouterV6$onUnoswapTo3Function(FunctionContext memory ctx, AggregationRouterV6$UnoswapTo3FunctionInputs memory inputs, AggregationRouterV6$UnoswapTo3FunctionOutputs memory outputs) virtual external;

    function AggregationRouterV6$triggerOnUnoswapTo3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xf7a70056),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnoswapTo3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnoswapTo3Function {
    function AggregationRouterV6$preUnoswapTo3Function(PreFunctionContext memory ctx, AggregationRouterV6$UnoswapTo3FunctionInputs memory inputs) virtual external;

    function AggregationRouterV6$triggerPreUnoswapTo3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0xf7a70056),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnoswapTo3Function.selector
        });
    }
}

abstract contract AggregationRouterV6$OnUnpauseFunction {
    function AggregationRouterV6$onUnpauseFunction(FunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerOnUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$onUnpauseFunction.selector
        });
    }
}

abstract contract AggregationRouterV6$PreUnpauseFunction {
    function AggregationRouterV6$preUnpauseFunction(PreFunctionContext memory ctx) virtual external;

    function AggregationRouterV6$triggerPreUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AggregationRouterV6",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AggregationRouterV6$preUnpauseFunction.selector
        });
    }
}

contract AggregationRouterV6$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}