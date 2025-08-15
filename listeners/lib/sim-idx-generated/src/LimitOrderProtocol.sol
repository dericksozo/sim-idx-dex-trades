// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function LimitOrderProtocol$Abi() pure returns (Abi memory) {
    return Abi("LimitOrderProtocol");
}
struct LimitOrderProtocol$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct LimitOrderProtocol$LimitOrderRfqTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct LimitOrderProtocol$LimitOrderTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct LimitOrderProtocol$AdvanceNonceFunctionInputs {
    uint8 amount;
}

struct LimitOrderProtocol$AndFunctionInputs {
    address[] targets;
    bytes[] data;
}

struct LimitOrderProtocol$AndFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$ArbitraryStaticCallFunctionInputs {
    address target;
    bytes data;
}

struct LimitOrderProtocol$ArbitraryStaticCallFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$OrderMixin$Order {
    uint256 salt;
    address makerAsset;
    address takerAsset;
    address maker;
    address receiver;
    address allowedSender;
    uint256 makingAmount;
    uint256 takingAmount;
    address feeRecipient;
    uint32 makerTokenFeePercent;
    bytes makerAssetData;
    bytes takerAssetData;
    bytes getMakerAmount;
    bytes getTakerAmount;
    bytes predicate;
    bytes permit;
    bytes interaction;
}

struct LimitOrderProtocol$CancelBatchOrdersFunctionInputs {
    LimitOrderProtocol$OrderMixin$Order[] orders;
}

struct LimitOrderProtocol$CancelOrderFunctionInputs {
    LimitOrderProtocol$OrderMixin$Order order;
}

struct LimitOrderProtocol$CancelOrderRfqFunctionInputs {
    uint256 orderInfo;
}

struct LimitOrderProtocol$CheckPredicateFunctionInputs {
    LimitOrderProtocol$OrderMixin$Order order;
}

struct LimitOrderProtocol$CheckPredicateFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$DoublePriceFunctionInputs {
    address oracle1;
    address oracle2;
    uint256 spread;
    uint256 amount;
}

struct LimitOrderProtocol$DoublePriceFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$EqFunctionInputs {
    uint256 value;
    address target;
    bytes data;
}

struct LimitOrderProtocol$EqFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$OrderMixin$FillBatchOrdersParams {
    LimitOrderProtocol$OrderMixin$Order[] orders;
    bytes[] signatures;
    uint256 takingAmount;
    uint256 thresholdAmount;
    address target;
}

struct LimitOrderProtocol$FillBatchOrdersToFunctionInputs {
    LimitOrderProtocol$OrderMixin$FillBatchOrdersParams params;
}

struct LimitOrderProtocol$FillBatchOrdersToFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$FillOrderFunctionInputs {
    LimitOrderProtocol$OrderMixin$Order order;
    bytes signature;
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 thresholdAmount;
    bytes callbackData;
}

struct LimitOrderProtocol$FillOrderFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$OrderRFQMixin$OrderRFQ {
    uint256 info;
    address makerAsset;
    address takerAsset;
    address maker;
    address allowedSender;
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 makingAmountThreshold;
}

struct LimitOrderProtocol$FillOrderRfqFunctionInputs {
    LimitOrderProtocol$OrderRFQMixin$OrderRFQ order;
    bytes signature;
    uint256 makingAmount;
    uint256 takingAmount;
}

struct LimitOrderProtocol$FillOrderRfqFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$FillOrderRfqToFunctionInputs {
    LimitOrderProtocol$OrderRFQMixin$OrderRFQ order;
    bytes signature;
    uint256 makingAmount;
    uint256 takingAmount;
    address target;
}

struct LimitOrderProtocol$FillOrderRfqToFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$FillOrderRfqToWithPermitFunctionInputs {
    LimitOrderProtocol$OrderRFQMixin$OrderRFQ order;
    bytes signature;
    uint256 makingAmount;
    uint256 takingAmount;
    address target;
    bytes permit;
}

struct LimitOrderProtocol$FillOrderRfqToWithPermitFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$OrderMixin$FillOrderParams {
    LimitOrderProtocol$OrderMixin$Order order;
    bytes signature;
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 thresholdAmount;
    address target;
    bytes callbackData;
}

struct LimitOrderProtocol$FillOrderToFunctionInputs {
    LimitOrderProtocol$OrderMixin$FillOrderParams params;
    bool isForcedFill;
}

struct LimitOrderProtocol$FillOrderToFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$FillOrderToWithPermitFunctionInputs {
    LimitOrderProtocol$OrderMixin$Order order;
    bytes signature;
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 thresholdAmount;
    address target;
    bytes permit;
    bytes callbackData;
}

struct LimitOrderProtocol$FillOrderToWithPermitFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct LimitOrderProtocol$GetMakerAmountFunctionInputs {
    uint256 orderMakerAmount;
    uint256 orderTakerAmount;
    uint256 swapTakerAmount;
}

struct LimitOrderProtocol$GetMakerAmountFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$GetTakerAmountFunctionInputs {
    uint256 orderMakerAmount;
    uint256 orderTakerAmount;
    uint256 swapMakerAmount;
}

struct LimitOrderProtocol$GetTakerAmountFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$GtFunctionInputs {
    uint256 value;
    address target;
    bytes data;
}

struct LimitOrderProtocol$GtFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$HashOrderFunctionInputs {
    LimitOrderProtocol$OrderMixin$Order order;
}

struct LimitOrderProtocol$HashOrderFunctionOutputs {
    bytes32 outArg0;
}

struct LimitOrderProtocol$HashOrderRfqFunctionInputs {
    LimitOrderProtocol$OrderRFQMixin$OrderRFQ order;
}

struct LimitOrderProtocol$HashOrderRfqFunctionOutputs {
    bytes32 outArg0;
}

struct LimitOrderProtocol$InvalidatorForOrderRfqFunctionInputs {
    address maker;
    uint256 slot;
}

struct LimitOrderProtocol$InvalidatorForOrderRfqFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$LtFunctionInputs {
    uint256 value;
    address target;
    bytes data;
}

struct LimitOrderProtocol$LtFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$NonceFunctionInputs {
    address outArg0;
}

struct LimitOrderProtocol$NonceFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$NonceEqualsFunctionInputs {
    address makerAddress;
    uint256 makerNonce;
}

struct LimitOrderProtocol$NonceEqualsFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$OrFunctionInputs {
    address[] targets;
    bytes[] data;
}

struct LimitOrderProtocol$OrFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$OwnerFunctionOutputs {
    address outArg0;
}

struct LimitOrderProtocol$RemainingFunctionInputs {
    bytes32 orderHash;
}

struct LimitOrderProtocol$RemainingFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$RemainingRawFunctionInputs {
    bytes32 orderHash;
}

struct LimitOrderProtocol$RemainingRawFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$RemainingsRawFunctionInputs {
    bytes32[] orderHashes;
}

struct LimitOrderProtocol$RemainingsRawFunctionOutputs {
    uint256[] outArg0;
}

struct LimitOrderProtocol$SimulateCallsFunctionInputs {
    address[] targets;
    bytes[] data;
}

struct LimitOrderProtocol$SinglePriceFunctionInputs {
    address oracle;
    uint256 inverseAndSpread;
    uint256 amount;
}

struct LimitOrderProtocol$SinglePriceFunctionOutputs {
    uint256 outArg0;
}

struct LimitOrderProtocol$TimestampBelowFunctionInputs {
    uint256 time;
}

struct LimitOrderProtocol$TimestampBelowFunctionOutputs {
    bool outArg0;
}

struct LimitOrderProtocol$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct LimitOrderProtocol$UpdateInteractionWhitelistFunctionInputs {
    address _address;
    bool isWhitelist;
}

struct LimitOrderProtocol$NonceIncreasedEventParams {
    address maker;
    uint256 oldNonce;
    uint256 newNonce;
}

struct LimitOrderProtocol$OrderCanceledEventParams {
    address maker;
    bytes32 orderHash;
    uint256 remainingRaw;
}

struct LimitOrderProtocol$OrderFilledEventParams {
    address taker;
    bytes32 orderHash;
    uint256 remaining;
    uint256 makingAmount;
    uint256 takingAmount;
}

struct LimitOrderProtocol$OrderFilledRfqEventParams {
    address taker;
    bytes32 orderHash;
    uint256 makingAmount;
    uint256 takingAmount;
}

struct LimitOrderProtocol$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct LimitOrderProtocol$UpdatedInteractionWhitelistEventParams {
    address _address;
    bool isWhitelist;
}

abstract contract LimitOrderProtocol$OnNonceIncreasedEvent {
    function LimitOrderProtocol$onNonceIncreasedEvent(EventContext memory ctx, LimitOrderProtocol$NonceIncreasedEventParams memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnNonceIncreasedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes32(0xdc0537f71d06d3708f52baf4ddf6918b25f1a145ba08873de27485682b35cac1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onNonceIncreasedEvent.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnOrderCanceledEvent {
    function LimitOrderProtocol$onOrderCanceledEvent(EventContext memory ctx, LimitOrderProtocol$OrderCanceledEventParams memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnOrderCanceledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes32(0xcbfa7d191838ece7ba4783ca3a30afd316619b7f368094b57ee7ffde9a923db1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onOrderCanceledEvent.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnOrderFilledEvent {
    function LimitOrderProtocol$onOrderFilledEvent(EventContext memory ctx, LimitOrderProtocol$OrderFilledEventParams memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnOrderFilledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes32(0xda67fd5efd7c65cc617b4e30cdd2569c6c2b3d0034729f3c616c6a83b4520a8f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onOrderFilledEvent.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnOrderFilledRfqEvent {
    function LimitOrderProtocol$onOrderFilledRfqEvent(EventContext memory ctx, LimitOrderProtocol$OrderFilledRfqEventParams memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnOrderFilledRfqEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes32(0xeb6e58fbaca6cb4b6726ec4e1ac663797ae31405c07620f4d6babd436ee9f0f7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onOrderFilledRfqEvent.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnOwnershipTransferredEvent {
    function LimitOrderProtocol$onOwnershipTransferredEvent(EventContext memory ctx, LimitOrderProtocol$OwnershipTransferredEventParams memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnUpdatedInteractionWhitelistEvent {
    function LimitOrderProtocol$onUpdatedInteractionWhitelistEvent(EventContext memory ctx, LimitOrderProtocol$UpdatedInteractionWhitelistEventParams memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnUpdatedInteractionWhitelistEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes32(0x96b334259df143c9ad3afe9060498fd354c454701b379de2e6c83ec2336e60aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onUpdatedInteractionWhitelistEvent.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnDomainSeparatorFunction {
    function LimitOrderProtocol$onDomainSeparatorFunction(FunctionContext memory ctx, LimitOrderProtocol$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreDomainSeparatorFunction {
    function LimitOrderProtocol$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnLimitOrderRfqTypehashFunction {
    function LimitOrderProtocol$onLimitOrderRfqTypehashFunction(FunctionContext memory ctx, LimitOrderProtocol$LimitOrderRfqTypehashFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnLimitOrderRfqTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x06bf53d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onLimitOrderRfqTypehashFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreLimitOrderRfqTypehashFunction {
    function LimitOrderProtocol$preLimitOrderRfqTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerPreLimitOrderRfqTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x06bf53d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preLimitOrderRfqTypehashFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnLimitOrderTypehashFunction {
    function LimitOrderProtocol$onLimitOrderTypehashFunction(FunctionContext memory ctx, LimitOrderProtocol$LimitOrderTypehashFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnLimitOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x54dd5f74),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onLimitOrderTypehashFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreLimitOrderTypehashFunction {
    function LimitOrderProtocol$preLimitOrderTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerPreLimitOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x54dd5f74),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preLimitOrderTypehashFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnAdvanceNonceFunction {
    function LimitOrderProtocol$onAdvanceNonceFunction(FunctionContext memory ctx, LimitOrderProtocol$AdvanceNonceFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnAdvanceNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x72c244a8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onAdvanceNonceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreAdvanceNonceFunction {
    function LimitOrderProtocol$preAdvanceNonceFunction(PreFunctionContext memory ctx, LimitOrderProtocol$AdvanceNonceFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreAdvanceNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x72c244a8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preAdvanceNonceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnAndFunction {
    function LimitOrderProtocol$onAndFunction(FunctionContext memory ctx, LimitOrderProtocol$AndFunctionInputs memory inputs, LimitOrderProtocol$AndFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnAndFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x961d5b1e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onAndFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreAndFunction {
    function LimitOrderProtocol$preAndFunction(PreFunctionContext memory ctx, LimitOrderProtocol$AndFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreAndFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x961d5b1e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preAndFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnArbitraryStaticCallFunction {
    function LimitOrderProtocol$onArbitraryStaticCallFunction(FunctionContext memory ctx, LimitOrderProtocol$ArbitraryStaticCallFunctionInputs memory inputs, LimitOrderProtocol$ArbitraryStaticCallFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnArbitraryStaticCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xbf15fcd8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onArbitraryStaticCallFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreArbitraryStaticCallFunction {
    function LimitOrderProtocol$preArbitraryStaticCallFunction(PreFunctionContext memory ctx, LimitOrderProtocol$ArbitraryStaticCallFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreArbitraryStaticCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xbf15fcd8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preArbitraryStaticCallFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnCancelBatchOrdersFunction {
    function LimitOrderProtocol$onCancelBatchOrdersFunction(FunctionContext memory ctx, LimitOrderProtocol$CancelBatchOrdersFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnCancelBatchOrdersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xad60d2a4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onCancelBatchOrdersFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreCancelBatchOrdersFunction {
    function LimitOrderProtocol$preCancelBatchOrdersFunction(PreFunctionContext memory ctx, LimitOrderProtocol$CancelBatchOrdersFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreCancelBatchOrdersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xad60d2a4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preCancelBatchOrdersFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnCancelOrderFunction {
    function LimitOrderProtocol$onCancelOrderFunction(FunctionContext memory ctx, LimitOrderProtocol$CancelOrderFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnCancelOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xa52a0b0e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onCancelOrderFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreCancelOrderFunction {
    function LimitOrderProtocol$preCancelOrderFunction(PreFunctionContext memory ctx, LimitOrderProtocol$CancelOrderFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreCancelOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xa52a0b0e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preCancelOrderFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnCancelOrderRfqFunction {
    function LimitOrderProtocol$onCancelOrderRfqFunction(FunctionContext memory ctx, LimitOrderProtocol$CancelOrderRfqFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnCancelOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x825caba1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onCancelOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreCancelOrderRfqFunction {
    function LimitOrderProtocol$preCancelOrderRfqFunction(PreFunctionContext memory ctx, LimitOrderProtocol$CancelOrderRfqFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreCancelOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x825caba1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preCancelOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnCheckPredicateFunction {
    function LimitOrderProtocol$onCheckPredicateFunction(FunctionContext memory ctx, LimitOrderProtocol$CheckPredicateFunctionInputs memory inputs, LimitOrderProtocol$CheckPredicateFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnCheckPredicateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x42e7f66b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onCheckPredicateFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreCheckPredicateFunction {
    function LimitOrderProtocol$preCheckPredicateFunction(PreFunctionContext memory ctx, LimitOrderProtocol$CheckPredicateFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreCheckPredicateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x42e7f66b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preCheckPredicateFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnDoublePriceFunction {
    function LimitOrderProtocol$onDoublePriceFunction(FunctionContext memory ctx, LimitOrderProtocol$DoublePriceFunctionInputs memory inputs, LimitOrderProtocol$DoublePriceFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnDoublePriceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x36006bf3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onDoublePriceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreDoublePriceFunction {
    function LimitOrderProtocol$preDoublePriceFunction(PreFunctionContext memory ctx, LimitOrderProtocol$DoublePriceFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreDoublePriceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x36006bf3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preDoublePriceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnEqFunction {
    function LimitOrderProtocol$onEqFunction(FunctionContext memory ctx, LimitOrderProtocol$EqFunctionInputs memory inputs, LimitOrderProtocol$EqFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnEqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x32565d61),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onEqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreEqFunction {
    function LimitOrderProtocol$preEqFunction(PreFunctionContext memory ctx, LimitOrderProtocol$EqFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreEqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x32565d61),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preEqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillBatchOrdersToFunction {
    function LimitOrderProtocol$onFillBatchOrdersToFunction(FunctionContext memory ctx, LimitOrderProtocol$FillBatchOrdersToFunctionInputs memory inputs, LimitOrderProtocol$FillBatchOrdersToFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillBatchOrdersToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xb6df4d47),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillBatchOrdersToFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillBatchOrdersToFunction {
    function LimitOrderProtocol$preFillBatchOrdersToFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillBatchOrdersToFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillBatchOrdersToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xb6df4d47),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillBatchOrdersToFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillOrderFunction {
    function LimitOrderProtocol$onFillOrderFunction(FunctionContext memory ctx, LimitOrderProtocol$FillOrderFunctionInputs memory inputs, LimitOrderProtocol$FillOrderFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x12d12f98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillOrderFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillOrderFunction {
    function LimitOrderProtocol$preFillOrderFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillOrderFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x12d12f98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillOrderFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillOrderRfqFunction {
    function LimitOrderProtocol$onFillOrderRfqFunction(FunctionContext memory ctx, LimitOrderProtocol$FillOrderRfqFunctionInputs memory inputs, LimitOrderProtocol$FillOrderRfqFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x452d8087),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillOrderRfqFunction {
    function LimitOrderProtocol$preFillOrderRfqFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillOrderRfqFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x452d8087),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillOrderRfqToFunction {
    function LimitOrderProtocol$onFillOrderRfqToFunction(FunctionContext memory ctx, LimitOrderProtocol$FillOrderRfqToFunctionInputs memory inputs, LimitOrderProtocol$FillOrderRfqToFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillOrderRfqToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x74e75938),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillOrderRfqToFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillOrderRfqToFunction {
    function LimitOrderProtocol$preFillOrderRfqToFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillOrderRfqToFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillOrderRfqToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x74e75938),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillOrderRfqToFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillOrderRfqToWithPermitFunction {
    function LimitOrderProtocol$onFillOrderRfqToWithPermitFunction(FunctionContext memory ctx, LimitOrderProtocol$FillOrderRfqToWithPermitFunctionInputs memory inputs, LimitOrderProtocol$FillOrderRfqToWithPermitFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillOrderRfqToWithPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xda589f3d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillOrderRfqToWithPermitFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillOrderRfqToWithPermitFunction {
    function LimitOrderProtocol$preFillOrderRfqToWithPermitFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillOrderRfqToWithPermitFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillOrderRfqToWithPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xda589f3d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillOrderRfqToWithPermitFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillOrderToFunction {
    function LimitOrderProtocol$onFillOrderToFunction(FunctionContext memory ctx, LimitOrderProtocol$FillOrderToFunctionInputs memory inputs, LimitOrderProtocol$FillOrderToFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillOrderToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xbf45f189),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillOrderToFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillOrderToFunction {
    function LimitOrderProtocol$preFillOrderToFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillOrderToFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillOrderToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xbf45f189),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillOrderToFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnFillOrderToWithPermitFunction {
    function LimitOrderProtocol$onFillOrderToWithPermitFunction(FunctionContext memory ctx, LimitOrderProtocol$FillOrderToWithPermitFunctionInputs memory inputs, LimitOrderProtocol$FillOrderToWithPermitFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnFillOrderToWithPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x41c79a84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onFillOrderToWithPermitFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreFillOrderToWithPermitFunction {
    function LimitOrderProtocol$preFillOrderToWithPermitFunction(PreFunctionContext memory ctx, LimitOrderProtocol$FillOrderToWithPermitFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreFillOrderToWithPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x41c79a84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preFillOrderToWithPermitFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnGetMakerAmountFunction {
    function LimitOrderProtocol$onGetMakerAmountFunction(FunctionContext memory ctx, LimitOrderProtocol$GetMakerAmountFunctionInputs memory inputs, LimitOrderProtocol$GetMakerAmountFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnGetMakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xf4a215c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onGetMakerAmountFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreGetMakerAmountFunction {
    function LimitOrderProtocol$preGetMakerAmountFunction(PreFunctionContext memory ctx, LimitOrderProtocol$GetMakerAmountFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreGetMakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xf4a215c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preGetMakerAmountFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnGetTakerAmountFunction {
    function LimitOrderProtocol$onGetTakerAmountFunction(FunctionContext memory ctx, LimitOrderProtocol$GetTakerAmountFunctionInputs memory inputs, LimitOrderProtocol$GetTakerAmountFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnGetTakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x296637bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onGetTakerAmountFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreGetTakerAmountFunction {
    function LimitOrderProtocol$preGetTakerAmountFunction(PreFunctionContext memory ctx, LimitOrderProtocol$GetTakerAmountFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreGetTakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x296637bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preGetTakerAmountFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnGtFunction {
    function LimitOrderProtocol$onGtFunction(FunctionContext memory ctx, LimitOrderProtocol$GtFunctionInputs memory inputs, LimitOrderProtocol$GtFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnGtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x057702e9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onGtFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreGtFunction {
    function LimitOrderProtocol$preGtFunction(PreFunctionContext memory ctx, LimitOrderProtocol$GtFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreGtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x057702e9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preGtFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnHashOrderFunction {
    function LimitOrderProtocol$onHashOrderFunction(FunctionContext memory ctx, LimitOrderProtocol$HashOrderFunctionInputs memory inputs, LimitOrderProtocol$HashOrderFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnHashOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x2186f692),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onHashOrderFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreHashOrderFunction {
    function LimitOrderProtocol$preHashOrderFunction(PreFunctionContext memory ctx, LimitOrderProtocol$HashOrderFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreHashOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x2186f692),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preHashOrderFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnHashOrderRfqFunction {
    function LimitOrderProtocol$onHashOrderRfqFunction(FunctionContext memory ctx, LimitOrderProtocol$HashOrderRfqFunctionInputs memory inputs, LimitOrderProtocol$HashOrderRfqFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnHashOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x150b195f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onHashOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreHashOrderRfqFunction {
    function LimitOrderProtocol$preHashOrderRfqFunction(PreFunctionContext memory ctx, LimitOrderProtocol$HashOrderRfqFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreHashOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x150b195f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preHashOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnIncreaseNonceFunction {
    function LimitOrderProtocol$onIncreaseNonceFunction(FunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerOnIncreaseNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xc53a0292),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onIncreaseNonceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreIncreaseNonceFunction {
    function LimitOrderProtocol$preIncreaseNonceFunction(PreFunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerPreIncreaseNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xc53a0292),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preIncreaseNonceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnInvalidatorForOrderRfqFunction {
    function LimitOrderProtocol$onInvalidatorForOrderRfqFunction(FunctionContext memory ctx, LimitOrderProtocol$InvalidatorForOrderRfqFunctionInputs memory inputs, LimitOrderProtocol$InvalidatorForOrderRfqFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnInvalidatorForOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x56f16124),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onInvalidatorForOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreInvalidatorForOrderRfqFunction {
    function LimitOrderProtocol$preInvalidatorForOrderRfqFunction(PreFunctionContext memory ctx, LimitOrderProtocol$InvalidatorForOrderRfqFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreInvalidatorForOrderRfqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x56f16124),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preInvalidatorForOrderRfqFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnLtFunction {
    function LimitOrderProtocol$onLtFunction(FunctionContext memory ctx, LimitOrderProtocol$LtFunctionInputs memory inputs, LimitOrderProtocol$LtFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnLtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x871919d5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onLtFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreLtFunction {
    function LimitOrderProtocol$preLtFunction(PreFunctionContext memory ctx, LimitOrderProtocol$LtFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreLtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x871919d5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preLtFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnNonceFunction {
    function LimitOrderProtocol$onNonceFunction(FunctionContext memory ctx, LimitOrderProtocol$NonceFunctionInputs memory inputs, LimitOrderProtocol$NonceFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x70ae92d2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onNonceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreNonceFunction {
    function LimitOrderProtocol$preNonceFunction(PreFunctionContext memory ctx, LimitOrderProtocol$NonceFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x70ae92d2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preNonceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnNonceEqualsFunction {
    function LimitOrderProtocol$onNonceEqualsFunction(FunctionContext memory ctx, LimitOrderProtocol$NonceEqualsFunctionInputs memory inputs, LimitOrderProtocol$NonceEqualsFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnNonceEqualsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xcf6fc6e3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onNonceEqualsFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreNonceEqualsFunction {
    function LimitOrderProtocol$preNonceEqualsFunction(PreFunctionContext memory ctx, LimitOrderProtocol$NonceEqualsFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreNonceEqualsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xcf6fc6e3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preNonceEqualsFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnOrFunction {
    function LimitOrderProtocol$onOrFunction(FunctionContext memory ctx, LimitOrderProtocol$OrFunctionInputs memory inputs, LimitOrderProtocol$OrFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnOrFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xe6133301),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onOrFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreOrFunction {
    function LimitOrderProtocol$preOrFunction(PreFunctionContext memory ctx, LimitOrderProtocol$OrFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreOrFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xe6133301),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preOrFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnOwnerFunction {
    function LimitOrderProtocol$onOwnerFunction(FunctionContext memory ctx, LimitOrderProtocol$OwnerFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onOwnerFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreOwnerFunction {
    function LimitOrderProtocol$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preOwnerFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnRemainingFunction {
    function LimitOrderProtocol$onRemainingFunction(FunctionContext memory ctx, LimitOrderProtocol$RemainingFunctionInputs memory inputs, LimitOrderProtocol$RemainingFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnRemainingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xbc1ed74c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onRemainingFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreRemainingFunction {
    function LimitOrderProtocol$preRemainingFunction(PreFunctionContext memory ctx, LimitOrderProtocol$RemainingFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreRemainingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xbc1ed74c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preRemainingFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnRemainingRawFunction {
    function LimitOrderProtocol$onRemainingRawFunction(FunctionContext memory ctx, LimitOrderProtocol$RemainingRawFunctionInputs memory inputs, LimitOrderProtocol$RemainingRawFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnRemainingRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x7e54f092),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onRemainingRawFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreRemainingRawFunction {
    function LimitOrderProtocol$preRemainingRawFunction(PreFunctionContext memory ctx, LimitOrderProtocol$RemainingRawFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreRemainingRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x7e54f092),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preRemainingRawFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnRemainingsRawFunction {
    function LimitOrderProtocol$onRemainingsRawFunction(FunctionContext memory ctx, LimitOrderProtocol$RemainingsRawFunctionInputs memory inputs, LimitOrderProtocol$RemainingsRawFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnRemainingsRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x942461bb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onRemainingsRawFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreRemainingsRawFunction {
    function LimitOrderProtocol$preRemainingsRawFunction(PreFunctionContext memory ctx, LimitOrderProtocol$RemainingsRawFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreRemainingsRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x942461bb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preRemainingsRawFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnRenounceOwnershipFunction {
    function LimitOrderProtocol$onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreRenounceOwnershipFunction {
    function LimitOrderProtocol$preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function LimitOrderProtocol$triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnSimulateCallsFunction {
    function LimitOrderProtocol$onSimulateCallsFunction(FunctionContext memory ctx, LimitOrderProtocol$SimulateCallsFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnSimulateCallsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x7f29a59d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onSimulateCallsFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreSimulateCallsFunction {
    function LimitOrderProtocol$preSimulateCallsFunction(PreFunctionContext memory ctx, LimitOrderProtocol$SimulateCallsFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreSimulateCallsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x7f29a59d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preSimulateCallsFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnSinglePriceFunction {
    function LimitOrderProtocol$onSinglePriceFunction(FunctionContext memory ctx, LimitOrderProtocol$SinglePriceFunctionInputs memory inputs, LimitOrderProtocol$SinglePriceFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnSinglePriceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xc05435f1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onSinglePriceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreSinglePriceFunction {
    function LimitOrderProtocol$preSinglePriceFunction(PreFunctionContext memory ctx, LimitOrderProtocol$SinglePriceFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreSinglePriceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xc05435f1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preSinglePriceFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnTimestampBelowFunction {
    function LimitOrderProtocol$onTimestampBelowFunction(FunctionContext memory ctx, LimitOrderProtocol$TimestampBelowFunctionInputs memory inputs, LimitOrderProtocol$TimestampBelowFunctionOutputs memory outputs) virtual external;

    function LimitOrderProtocol$triggerOnTimestampBelowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x63592c2b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onTimestampBelowFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreTimestampBelowFunction {
    function LimitOrderProtocol$preTimestampBelowFunction(PreFunctionContext memory ctx, LimitOrderProtocol$TimestampBelowFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreTimestampBelowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x63592c2b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preTimestampBelowFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnTransferOwnershipFunction {
    function LimitOrderProtocol$onTransferOwnershipFunction(FunctionContext memory ctx, LimitOrderProtocol$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreTransferOwnershipFunction {
    function LimitOrderProtocol$preTransferOwnershipFunction(PreFunctionContext memory ctx, LimitOrderProtocol$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$OnUpdateInteractionWhitelistFunction {
    function LimitOrderProtocol$onUpdateInteractionWhitelistFunction(FunctionContext memory ctx, LimitOrderProtocol$UpdateInteractionWhitelistFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerOnUpdateInteractionWhitelistFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x6aa0caf8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$onUpdateInteractionWhitelistFunction.selector
        });
    }
}

abstract contract LimitOrderProtocol$PreUpdateInteractionWhitelistFunction {
    function LimitOrderProtocol$preUpdateInteractionWhitelistFunction(PreFunctionContext memory ctx, LimitOrderProtocol$UpdateInteractionWhitelistFunctionInputs memory inputs) virtual external;

    function LimitOrderProtocol$triggerPreUpdateInteractionWhitelistFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "LimitOrderProtocol",
            selector: bytes4(0x6aa0caf8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.LimitOrderProtocol$preUpdateInteractionWhitelistFunction.selector
        });
    }
}


struct LimitOrderProtocol$EmitAllEvents$NonceIncreased {
  address maker;
  uint256 oldNonce;
  uint256 newNonce;
}

struct LimitOrderProtocol$EmitAllEvents$OrderCanceled {
  address maker;
  bytes32 orderHash;
  uint256 remainingRaw;
}

struct LimitOrderProtocol$EmitAllEvents$OrderFilled {
  address taker;
  bytes32 orderHash;
  uint256 remaining;
  uint256 makingAmount;
  uint256 takingAmount;
}

struct LimitOrderProtocol$EmitAllEvents$OrderFilledRfq {
  address taker;
  bytes32 orderHash;
  uint256 makingAmount;
  uint256 takingAmount;
}

struct LimitOrderProtocol$EmitAllEvents$OwnershipTransferred {
  address previousOwner;
  address newOwner;
}

struct LimitOrderProtocol$EmitAllEvents$UpdatedInteractionWhitelist {
  address _address;
  bool isWhitelist;
}

contract LimitOrderProtocol$EmitAllEvents is
  LimitOrderProtocol$OnNonceIncreasedEvent,
LimitOrderProtocol$OnOrderCanceledEvent,
LimitOrderProtocol$OnOrderFilledEvent,
LimitOrderProtocol$OnOrderFilledRfqEvent,
LimitOrderProtocol$OnOwnershipTransferredEvent,
LimitOrderProtocol$OnUpdatedInteractionWhitelistEvent
{
  event NonceIncreased(LimitOrderProtocol$EmitAllEvents$NonceIncreased);
  event OrderCanceled(LimitOrderProtocol$EmitAllEvents$OrderCanceled);
  event OrderFilled(LimitOrderProtocol$EmitAllEvents$OrderFilled);
  event OrderFilledRfq(LimitOrderProtocol$EmitAllEvents$OrderFilledRfq);
  event OwnershipTransferred(LimitOrderProtocol$EmitAllEvents$OwnershipTransferred);
  event UpdatedInteractionWhitelist(LimitOrderProtocol$EmitAllEvents$UpdatedInteractionWhitelist);

  function LimitOrderProtocol$onNonceIncreasedEvent(EventContext memory ctx, LimitOrderProtocol$NonceIncreasedEventParams memory inputs) virtual external override {
    emit NonceIncreased(LimitOrderProtocol$EmitAllEvents$NonceIncreased(inputs.maker, inputs.oldNonce, inputs.newNonce));
  }
function LimitOrderProtocol$onOrderCanceledEvent(EventContext memory ctx, LimitOrderProtocol$OrderCanceledEventParams memory inputs) virtual external override {
    emit OrderCanceled(LimitOrderProtocol$EmitAllEvents$OrderCanceled(inputs.maker, inputs.orderHash, inputs.remainingRaw));
  }
function LimitOrderProtocol$onOrderFilledEvent(EventContext memory ctx, LimitOrderProtocol$OrderFilledEventParams memory inputs) virtual external override {
    emit OrderFilled(LimitOrderProtocol$EmitAllEvents$OrderFilled(inputs.taker, inputs.orderHash, inputs.remaining, inputs.makingAmount, inputs.takingAmount));
  }
function LimitOrderProtocol$onOrderFilledRfqEvent(EventContext memory ctx, LimitOrderProtocol$OrderFilledRfqEventParams memory inputs) virtual external override {
    emit OrderFilledRfq(LimitOrderProtocol$EmitAllEvents$OrderFilledRfq(inputs.taker, inputs.orderHash, inputs.makingAmount, inputs.takingAmount));
  }
function LimitOrderProtocol$onOwnershipTransferredEvent(EventContext memory ctx, LimitOrderProtocol$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(LimitOrderProtocol$EmitAllEvents$OwnershipTransferred(inputs.previousOwner, inputs.newOwner));
  }
function LimitOrderProtocol$onUpdatedInteractionWhitelistEvent(EventContext memory ctx, LimitOrderProtocol$UpdatedInteractionWhitelistEventParams memory inputs) virtual external override {
    emit UpdatedInteractionWhitelist(LimitOrderProtocol$EmitAllEvents$UpdatedInteractionWhitelist(inputs._address, inputs.isWhitelist));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](6);
    triggers[0] = this.LimitOrderProtocol$triggerOnNonceIncreasedEvent();
    triggers[1] = this.LimitOrderProtocol$triggerOnOrderCanceledEvent();
    triggers[2] = this.LimitOrderProtocol$triggerOnOrderFilledEvent();
    triggers[3] = this.LimitOrderProtocol$triggerOnOrderFilledRfqEvent();
    triggers[4] = this.LimitOrderProtocol$triggerOnOwnershipTransferredEvent();
    triggers[5] = this.LimitOrderProtocol$triggerOnUpdatedInteractionWhitelistEvent();
    return triggers;
  }
}