// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function DSLOProtocol$Abi() pure returns (Abi memory) {
    return Abi("DSLOProtocol");
}
struct DSLOProtocol$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct DSLOProtocol$DsLimitOrderTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct DSLOProtocol$LimitOrderTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct DSLOProtocol$AdvanceNonceFunctionInputs {
    uint8 amount;
}

struct DSLOProtocol$AndFunctionInputs {
    address[] targets;
    bytes[] data;
}

struct DSLOProtocol$AndFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$ArbitraryStaticCallFunctionInputs {
    address target;
    bytes data;
}

struct DSLOProtocol$ArbitraryStaticCallFunctionOutputs {
    uint256 outArg0;
}

struct DSLOProtocol$IDSOrderMixin$Order {
    uint256 salt;
    address makerAsset;
    address takerAsset;
    address maker;
    address receiver;
    address allowedSender;
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 feeConfig;
    bytes makerAssetData;
    bytes takerAssetData;
    bytes getMakerAmount;
    bytes getTakerAmount;
    bytes predicate;
    bytes interaction;
}

struct DSLOProtocol$CancelBatchOrdersFunctionInputs {
    DSLOProtocol$IDSOrderMixin$Order[] orders;
}

struct DSLOProtocol$CancelOrderFunctionInputs {
    DSLOProtocol$IDSOrderMixin$Order order;
}

struct DSLOProtocol$CheckPredicateFunctionInputs {
    DSLOProtocol$IDSOrderMixin$Order order;
}

struct DSLOProtocol$CheckPredicateFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$EqFunctionInputs {
    uint256 value;
    address target;
    bytes data;
}

struct DSLOProtocol$EqFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$IDSOrderMixin$Signature {
    bytes orderSignature;
    bytes opSignature;
}

struct DSLOProtocol$IDSOrderMixin$FillBatchOrdersParams {
    DSLOProtocol$IDSOrderMixin$Order[] orders;
    DSLOProtocol$IDSOrderMixin$Signature[] signatures;
    uint32[] opExpireTimes;
    uint256 takingAmount;
    uint256 thresholdAmount;
    address target;
}

struct DSLOProtocol$FillBatchOrdersToFunctionInputs {
    DSLOProtocol$IDSOrderMixin$FillBatchOrdersParams params;
}

struct DSLOProtocol$FillBatchOrdersToFunctionOutputs {
    uint256 actualMakingAmount;
    uint256 outArg1;
    uint256 makerAssetFeeCollected;
    uint256 takerAssetFeeCollected;
}

struct DSLOProtocol$IDSOrderMixin$FillOrderParams {
    DSLOProtocol$IDSOrderMixin$Order order;
    DSLOProtocol$IDSOrderMixin$Signature signature;
    uint32 opExpireTime;
    address target;
    bytes callbackData;
}

struct DSLOProtocol$IDSOrderMixin$AmountData {
    uint256 makingAmount;
    uint256 takingAmount;
    uint256 thresholdAmount;
}

struct DSLOProtocol$FillOrderToFunctionInputs {
    DSLOProtocol$IDSOrderMixin$FillOrderParams params;
    DSLOProtocol$IDSOrderMixin$AmountData amountData;
    address sender;
}

struct DSLOProtocol$FillOrderToFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
    uint256 outArg2;
}

struct DSLOProtocol$GetMakerAmountFunctionInputs {
    uint256 orderMakerAmount;
    uint256 orderTakerAmount;
    uint256 swapTakerAmount;
}

struct DSLOProtocol$GetMakerAmountFunctionOutputs {
    uint256 outArg0;
}

struct DSLOProtocol$GetTakerAmountFunctionInputs {
    uint256 orderMakerAmount;
    uint256 orderTakerAmount;
    uint256 swapMakerAmount;
}

struct DSLOProtocol$GetTakerAmountFunctionOutputs {
    uint256 outArg0;
}

struct DSLOProtocol$GtFunctionInputs {
    uint256 value;
    address target;
    bytes data;
}

struct DSLOProtocol$GtFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$GuardiansFunctionInputs {
    address outArg0;
}

struct DSLOProtocol$GuardiansFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$IDSOrderMixin$DSOrder {
    bytes32 orderHash;
    uint32 opExpireTime;
}

struct DSLOProtocol$HashDsOrderFunctionInputs {
    DSLOProtocol$IDSOrderMixin$DSOrder dsOrder;
}

struct DSLOProtocol$HashDsOrderFunctionOutputs {
    bytes32 outArg0;
}

struct DSLOProtocol$HashOrderFunctionInputs {
    DSLOProtocol$IDSOrderMixin$Order order;
}

struct DSLOProtocol$HashOrderFunctionOutputs {
    bytes32 outArg0;
}

struct DSLOProtocol$LtFunctionInputs {
    uint256 value;
    address target;
    bytes data;
}

struct DSLOProtocol$LtFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$NonceFunctionInputs {
    address outArg0;
}

struct DSLOProtocol$NonceFunctionOutputs {
    uint256 outArg0;
}

struct DSLOProtocol$NonceEqualsFunctionInputs {
    address makerAddress;
    uint256 makerNonce;
}

struct DSLOProtocol$NonceEqualsFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$OperatorsFunctionInputs {
    address outArg0;
}

struct DSLOProtocol$OperatorsFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$OrFunctionInputs {
    address[] targets;
    bytes[] data;
}

struct DSLOProtocol$OrFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$OwnerFunctionOutputs {
    address outArg0;
}

struct DSLOProtocol$PausedFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$RemainingFunctionInputs {
    bytes32 orderHash;
}

struct DSLOProtocol$RemainingFunctionOutputs {
    uint256 outArg0;
}

struct DSLOProtocol$RemainingRawFunctionInputs {
    bytes32 orderHash;
}

struct DSLOProtocol$RemainingRawFunctionOutputs {
    uint256 outArg0;
}

struct DSLOProtocol$RemainingsRawFunctionInputs {
    bytes32[] orderHashes;
}

struct DSLOProtocol$RemainingsRawFunctionOutputs {
    uint256[] outArg0;
}

struct DSLOProtocol$TimestampBelowFunctionInputs {
    uint256 time;
}

struct DSLOProtocol$TimestampBelowFunctionOutputs {
    bool outArg0;
}

struct DSLOProtocol$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct DSLOProtocol$UpdateDsOrderSignerFunctionInputs {
    address _address;
}

struct DSLOProtocol$UpdateGuardianFunctionInputs {
    address user;
    bool grantOrRevoke;
}

struct DSLOProtocol$UpdateInteractionWhitelistFunctionInputs {
    address _address;
    bool isWhitelist;
}

struct DSLOProtocol$UpdateOperatorFunctionInputs {
    address user;
    bool grantOrRevoke;
}

struct DSLOProtocol$FeeCollectedEventParams {
    address recipient;
    address token;
    uint256 amount;
}

struct DSLOProtocol$NonceIncreasedEventParams {
    address maker;
    uint256 oldNonce;
    uint256 newNonce;
}

struct DSLOProtocol$OrderCanceledEventParams {
    address maker;
    bytes32 orderHash;
    uint256 remainingRaw;
}

struct DSLOProtocol$OrderFilledEventParams {
    address taker;
    bytes32 orderHash;
    uint256 remaining;
    uint256 makingAmount;
    uint256 takingAmount;
}

struct DSLOProtocol$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct DSLOProtocol$PausedEventParams {
    address account;
}

struct DSLOProtocol$UnpausedEventParams {
    address account;
}

struct DSLOProtocol$UpdateGuardianEventParams {
    address user;
    bool grantOrRevoke;
}

struct DSLOProtocol$UpdateOperatorEventParams {
    address user;
    bool grantOrRevoke;
}

struct DSLOProtocol$UpdatedDsOrderSignerEventParams {
    address _address;
}

struct DSLOProtocol$UpdatedInteractionWhitelistEventParams {
    address _address;
    bool isWhitelist;
}

abstract contract DSLOProtocol$OnFeeCollectedEvent {
    function DSLOProtocol$onFeeCollectedEvent(EventContext memory ctx, DSLOProtocol$FeeCollectedEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnFeeCollectedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0xf228de527fc1b9843baac03b9a04565473a263375950e63435d4138464386f46),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onFeeCollectedEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnNonceIncreasedEvent {
    function DSLOProtocol$onNonceIncreasedEvent(EventContext memory ctx, DSLOProtocol$NonceIncreasedEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnNonceIncreasedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0xdc0537f71d06d3708f52baf4ddf6918b25f1a145ba08873de27485682b35cac1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onNonceIncreasedEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnOrderCanceledEvent {
    function DSLOProtocol$onOrderCanceledEvent(EventContext memory ctx, DSLOProtocol$OrderCanceledEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnOrderCanceledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0xcbfa7d191838ece7ba4783ca3a30afd316619b7f368094b57ee7ffde9a923db1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onOrderCanceledEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnOrderFilledEvent {
    function DSLOProtocol$onOrderFilledEvent(EventContext memory ctx, DSLOProtocol$OrderFilledEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnOrderFilledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0xda67fd5efd7c65cc617b4e30cdd2569c6c2b3d0034729f3c616c6a83b4520a8f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onOrderFilledEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnOwnershipTransferredEvent {
    function DSLOProtocol$onOwnershipTransferredEvent(EventContext memory ctx, DSLOProtocol$OwnershipTransferredEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnPausedEvent {
    function DSLOProtocol$onPausedEvent(EventContext memory ctx, DSLOProtocol$PausedEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnPausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onPausedEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnUnpausedEvent {
    function DSLOProtocol$onUnpausedEvent(EventContext memory ctx, DSLOProtocol$UnpausedEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnUnpausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUnpausedEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdateGuardianEvent {
    function DSLOProtocol$onUpdateGuardianEvent(EventContext memory ctx, DSLOProtocol$UpdateGuardianEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdateGuardianEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0x25d7ce8d7e0b3990938766275ee2d54fbe81347d287bfbf0429838409a889fdc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdateGuardianEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdateOperatorEvent {
    function DSLOProtocol$onUpdateOperatorEvent(EventContext memory ctx, DSLOProtocol$UpdateOperatorEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdateOperatorEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0x2ee52be9d342458b3d25e07faada7ff9bc06723b4aa24edb6321ac1316b8a9dd),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdateOperatorEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdatedDsOrderSignerEvent {
    function DSLOProtocol$onUpdatedDsOrderSignerEvent(EventContext memory ctx, DSLOProtocol$UpdatedDsOrderSignerEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdatedDsOrderSignerEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0xca306aea88edecdde85c3e1779eed220a877017780ec66da986cc22a83ebf671),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdatedDsOrderSignerEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdatedInteractionWhitelistEvent {
    function DSLOProtocol$onUpdatedInteractionWhitelistEvent(EventContext memory ctx, DSLOProtocol$UpdatedInteractionWhitelistEventParams memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdatedInteractionWhitelistEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes32(0x96b334259df143c9ad3afe9060498fd354c454701b379de2e6c83ec2336e60aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdatedInteractionWhitelistEvent.selector
        });
    }
}

abstract contract DSLOProtocol$OnDomainSeparatorFunction {
    function DSLOProtocol$onDomainSeparatorFunction(FunctionContext memory ctx, DSLOProtocol$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreDomainSeparatorFunction {
    function DSLOProtocol$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnDsLimitOrderTypehashFunction {
    function DSLOProtocol$onDsLimitOrderTypehashFunction(FunctionContext memory ctx, DSLOProtocol$DsLimitOrderTypehashFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnDsLimitOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x1b6fd218),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onDsLimitOrderTypehashFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreDsLimitOrderTypehashFunction {
    function DSLOProtocol$preDsLimitOrderTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreDsLimitOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x1b6fd218),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preDsLimitOrderTypehashFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnLimitOrderTypehashFunction {
    function DSLOProtocol$onLimitOrderTypehashFunction(FunctionContext memory ctx, DSLOProtocol$LimitOrderTypehashFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnLimitOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x54dd5f74),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onLimitOrderTypehashFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreLimitOrderTypehashFunction {
    function DSLOProtocol$preLimitOrderTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreLimitOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x54dd5f74),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preLimitOrderTypehashFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnAdvanceNonceFunction {
    function DSLOProtocol$onAdvanceNonceFunction(FunctionContext memory ctx, DSLOProtocol$AdvanceNonceFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnAdvanceNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x72c244a8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onAdvanceNonceFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreAdvanceNonceFunction {
    function DSLOProtocol$preAdvanceNonceFunction(PreFunctionContext memory ctx, DSLOProtocol$AdvanceNonceFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreAdvanceNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x72c244a8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preAdvanceNonceFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnAndFunction {
    function DSLOProtocol$onAndFunction(FunctionContext memory ctx, DSLOProtocol$AndFunctionInputs memory inputs, DSLOProtocol$AndFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnAndFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x961d5b1e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onAndFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreAndFunction {
    function DSLOProtocol$preAndFunction(PreFunctionContext memory ctx, DSLOProtocol$AndFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreAndFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x961d5b1e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preAndFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnArbitraryStaticCallFunction {
    function DSLOProtocol$onArbitraryStaticCallFunction(FunctionContext memory ctx, DSLOProtocol$ArbitraryStaticCallFunctionInputs memory inputs, DSLOProtocol$ArbitraryStaticCallFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnArbitraryStaticCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xbf15fcd8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onArbitraryStaticCallFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreArbitraryStaticCallFunction {
    function DSLOProtocol$preArbitraryStaticCallFunction(PreFunctionContext memory ctx, DSLOProtocol$ArbitraryStaticCallFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreArbitraryStaticCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xbf15fcd8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preArbitraryStaticCallFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnCancelBatchOrdersFunction {
    function DSLOProtocol$onCancelBatchOrdersFunction(FunctionContext memory ctx, DSLOProtocol$CancelBatchOrdersFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnCancelBatchOrdersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf7da2702),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onCancelBatchOrdersFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreCancelBatchOrdersFunction {
    function DSLOProtocol$preCancelBatchOrdersFunction(PreFunctionContext memory ctx, DSLOProtocol$CancelBatchOrdersFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreCancelBatchOrdersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf7da2702),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preCancelBatchOrdersFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnCancelOrderFunction {
    function DSLOProtocol$onCancelOrderFunction(FunctionContext memory ctx, DSLOProtocol$CancelOrderFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnCancelOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x4fae0284),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onCancelOrderFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreCancelOrderFunction {
    function DSLOProtocol$preCancelOrderFunction(PreFunctionContext memory ctx, DSLOProtocol$CancelOrderFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreCancelOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x4fae0284),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preCancelOrderFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnCheckPredicateFunction {
    function DSLOProtocol$onCheckPredicateFunction(FunctionContext memory ctx, DSLOProtocol$CheckPredicateFunctionInputs memory inputs, DSLOProtocol$CheckPredicateFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnCheckPredicateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x57ccb8fc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onCheckPredicateFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreCheckPredicateFunction {
    function DSLOProtocol$preCheckPredicateFunction(PreFunctionContext memory ctx, DSLOProtocol$CheckPredicateFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreCheckPredicateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x57ccb8fc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preCheckPredicateFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnDisableLogicFunction {
    function DSLOProtocol$onDisableLogicFunction(FunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerOnDisableLogicFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x9dd39239),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onDisableLogicFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreDisableLogicFunction {
    function DSLOProtocol$preDisableLogicFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreDisableLogicFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x9dd39239),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preDisableLogicFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnEnableLogicFunction {
    function DSLOProtocol$onEnableLogicFunction(FunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerOnEnableLogicFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf9338d18),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onEnableLogicFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreEnableLogicFunction {
    function DSLOProtocol$preEnableLogicFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreEnableLogicFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf9338d18),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preEnableLogicFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnEqFunction {
    function DSLOProtocol$onEqFunction(FunctionContext memory ctx, DSLOProtocol$EqFunctionInputs memory inputs, DSLOProtocol$EqFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnEqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x32565d61),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onEqFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreEqFunction {
    function DSLOProtocol$preEqFunction(PreFunctionContext memory ctx, DSLOProtocol$EqFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreEqFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x32565d61),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preEqFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnFillBatchOrdersToFunction {
    function DSLOProtocol$onFillBatchOrdersToFunction(FunctionContext memory ctx, DSLOProtocol$FillBatchOrdersToFunctionInputs memory inputs, DSLOProtocol$FillBatchOrdersToFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnFillBatchOrdersToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x6fbd13d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onFillBatchOrdersToFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreFillBatchOrdersToFunction {
    function DSLOProtocol$preFillBatchOrdersToFunction(PreFunctionContext memory ctx, DSLOProtocol$FillBatchOrdersToFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreFillBatchOrdersToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x6fbd13d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preFillBatchOrdersToFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnFillOrderToFunction {
    function DSLOProtocol$onFillOrderToFunction(FunctionContext memory ctx, DSLOProtocol$FillOrderToFunctionInputs memory inputs, DSLOProtocol$FillOrderToFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnFillOrderToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xd2f1d956),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onFillOrderToFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreFillOrderToFunction {
    function DSLOProtocol$preFillOrderToFunction(PreFunctionContext memory ctx, DSLOProtocol$FillOrderToFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreFillOrderToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xd2f1d956),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preFillOrderToFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnGetMakerAmountFunction {
    function DSLOProtocol$onGetMakerAmountFunction(FunctionContext memory ctx, DSLOProtocol$GetMakerAmountFunctionInputs memory inputs, DSLOProtocol$GetMakerAmountFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnGetMakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf4a215c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onGetMakerAmountFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreGetMakerAmountFunction {
    function DSLOProtocol$preGetMakerAmountFunction(PreFunctionContext memory ctx, DSLOProtocol$GetMakerAmountFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreGetMakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf4a215c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preGetMakerAmountFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnGetTakerAmountFunction {
    function DSLOProtocol$onGetTakerAmountFunction(FunctionContext memory ctx, DSLOProtocol$GetTakerAmountFunctionInputs memory inputs, DSLOProtocol$GetTakerAmountFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnGetTakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x296637bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onGetTakerAmountFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreGetTakerAmountFunction {
    function DSLOProtocol$preGetTakerAmountFunction(PreFunctionContext memory ctx, DSLOProtocol$GetTakerAmountFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreGetTakerAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x296637bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preGetTakerAmountFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnGtFunction {
    function DSLOProtocol$onGtFunction(FunctionContext memory ctx, DSLOProtocol$GtFunctionInputs memory inputs, DSLOProtocol$GtFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnGtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x057702e9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onGtFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreGtFunction {
    function DSLOProtocol$preGtFunction(PreFunctionContext memory ctx, DSLOProtocol$GtFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreGtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x057702e9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preGtFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnGuardiansFunction {
    function DSLOProtocol$onGuardiansFunction(FunctionContext memory ctx, DSLOProtocol$GuardiansFunctionInputs memory inputs, DSLOProtocol$GuardiansFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnGuardiansFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x0633b14a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onGuardiansFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreGuardiansFunction {
    function DSLOProtocol$preGuardiansFunction(PreFunctionContext memory ctx, DSLOProtocol$GuardiansFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreGuardiansFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x0633b14a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preGuardiansFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnHashDsOrderFunction {
    function DSLOProtocol$onHashDsOrderFunction(FunctionContext memory ctx, DSLOProtocol$HashDsOrderFunctionInputs memory inputs, DSLOProtocol$HashDsOrderFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnHashDsOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x134ba735),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onHashDsOrderFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreHashDsOrderFunction {
    function DSLOProtocol$preHashDsOrderFunction(PreFunctionContext memory ctx, DSLOProtocol$HashDsOrderFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreHashDsOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x134ba735),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preHashDsOrderFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnHashOrderFunction {
    function DSLOProtocol$onHashOrderFunction(FunctionContext memory ctx, DSLOProtocol$HashOrderFunctionInputs memory inputs, DSLOProtocol$HashOrderFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnHashOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xb6f22309),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onHashOrderFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreHashOrderFunction {
    function DSLOProtocol$preHashOrderFunction(PreFunctionContext memory ctx, DSLOProtocol$HashOrderFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreHashOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xb6f22309),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preHashOrderFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnIncreaseNonceFunction {
    function DSLOProtocol$onIncreaseNonceFunction(FunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerOnIncreaseNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xc53a0292),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onIncreaseNonceFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreIncreaseNonceFunction {
    function DSLOProtocol$preIncreaseNonceFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreIncreaseNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xc53a0292),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preIncreaseNonceFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnLtFunction {
    function DSLOProtocol$onLtFunction(FunctionContext memory ctx, DSLOProtocol$LtFunctionInputs memory inputs, DSLOProtocol$LtFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnLtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x871919d5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onLtFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreLtFunction {
    function DSLOProtocol$preLtFunction(PreFunctionContext memory ctx, DSLOProtocol$LtFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreLtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x871919d5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preLtFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnNonceFunction {
    function DSLOProtocol$onNonceFunction(FunctionContext memory ctx, DSLOProtocol$NonceFunctionInputs memory inputs, DSLOProtocol$NonceFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x70ae92d2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onNonceFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreNonceFunction {
    function DSLOProtocol$preNonceFunction(PreFunctionContext memory ctx, DSLOProtocol$NonceFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x70ae92d2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preNonceFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnNonceEqualsFunction {
    function DSLOProtocol$onNonceEqualsFunction(FunctionContext memory ctx, DSLOProtocol$NonceEqualsFunctionInputs memory inputs, DSLOProtocol$NonceEqualsFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnNonceEqualsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xcf6fc6e3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onNonceEqualsFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreNonceEqualsFunction {
    function DSLOProtocol$preNonceEqualsFunction(PreFunctionContext memory ctx, DSLOProtocol$NonceEqualsFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreNonceEqualsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xcf6fc6e3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preNonceEqualsFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnOperatorsFunction {
    function DSLOProtocol$onOperatorsFunction(FunctionContext memory ctx, DSLOProtocol$OperatorsFunctionInputs memory inputs, DSLOProtocol$OperatorsFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnOperatorsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x13e7c9d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onOperatorsFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreOperatorsFunction {
    function DSLOProtocol$preOperatorsFunction(PreFunctionContext memory ctx, DSLOProtocol$OperatorsFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreOperatorsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x13e7c9d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preOperatorsFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnOrFunction {
    function DSLOProtocol$onOrFunction(FunctionContext memory ctx, DSLOProtocol$OrFunctionInputs memory inputs, DSLOProtocol$OrFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnOrFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xe6133301),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onOrFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreOrFunction {
    function DSLOProtocol$preOrFunction(PreFunctionContext memory ctx, DSLOProtocol$OrFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreOrFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xe6133301),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preOrFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnOwnerFunction {
    function DSLOProtocol$onOwnerFunction(FunctionContext memory ctx, DSLOProtocol$OwnerFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onOwnerFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreOwnerFunction {
    function DSLOProtocol$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preOwnerFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnPausedFunction {
    function DSLOProtocol$onPausedFunction(FunctionContext memory ctx, DSLOProtocol$PausedFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onPausedFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PrePausedFunction {
    function DSLOProtocol$prePausedFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPrePausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$prePausedFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnRemainingFunction {
    function DSLOProtocol$onRemainingFunction(FunctionContext memory ctx, DSLOProtocol$RemainingFunctionInputs memory inputs, DSLOProtocol$RemainingFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnRemainingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xbc1ed74c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onRemainingFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreRemainingFunction {
    function DSLOProtocol$preRemainingFunction(PreFunctionContext memory ctx, DSLOProtocol$RemainingFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreRemainingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xbc1ed74c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preRemainingFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnRemainingRawFunction {
    function DSLOProtocol$onRemainingRawFunction(FunctionContext memory ctx, DSLOProtocol$RemainingRawFunctionInputs memory inputs, DSLOProtocol$RemainingRawFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnRemainingRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x7e54f092),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onRemainingRawFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreRemainingRawFunction {
    function DSLOProtocol$preRemainingRawFunction(PreFunctionContext memory ctx, DSLOProtocol$RemainingRawFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreRemainingRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x7e54f092),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preRemainingRawFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnRemainingsRawFunction {
    function DSLOProtocol$onRemainingsRawFunction(FunctionContext memory ctx, DSLOProtocol$RemainingsRawFunctionInputs memory inputs, DSLOProtocol$RemainingsRawFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnRemainingsRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x942461bb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onRemainingsRawFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreRemainingsRawFunction {
    function DSLOProtocol$preRemainingsRawFunction(PreFunctionContext memory ctx, DSLOProtocol$RemainingsRawFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreRemainingsRawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x942461bb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preRemainingsRawFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnRenounceOwnershipFunction {
    function DSLOProtocol$onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreRenounceOwnershipFunction {
    function DSLOProtocol$preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function DSLOProtocol$triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnTimestampBelowFunction {
    function DSLOProtocol$onTimestampBelowFunction(FunctionContext memory ctx, DSLOProtocol$TimestampBelowFunctionInputs memory inputs, DSLOProtocol$TimestampBelowFunctionOutputs memory outputs) virtual external;

    function DSLOProtocol$triggerOnTimestampBelowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x63592c2b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onTimestampBelowFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreTimestampBelowFunction {
    function DSLOProtocol$preTimestampBelowFunction(PreFunctionContext memory ctx, DSLOProtocol$TimestampBelowFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreTimestampBelowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x63592c2b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preTimestampBelowFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnTransferOwnershipFunction {
    function DSLOProtocol$onTransferOwnershipFunction(FunctionContext memory ctx, DSLOProtocol$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreTransferOwnershipFunction {
    function DSLOProtocol$preTransferOwnershipFunction(PreFunctionContext memory ctx, DSLOProtocol$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdateDsOrderSignerFunction {
    function DSLOProtocol$onUpdateDsOrderSignerFunction(FunctionContext memory ctx, DSLOProtocol$UpdateDsOrderSignerFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdateDsOrderSignerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x1522044d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdateDsOrderSignerFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreUpdateDsOrderSignerFunction {
    function DSLOProtocol$preUpdateDsOrderSignerFunction(PreFunctionContext memory ctx, DSLOProtocol$UpdateDsOrderSignerFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreUpdateDsOrderSignerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x1522044d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preUpdateDsOrderSignerFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdateGuardianFunction {
    function DSLOProtocol$onUpdateGuardianFunction(FunctionContext memory ctx, DSLOProtocol$UpdateGuardianFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdateGuardianFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x88f4950f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdateGuardianFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreUpdateGuardianFunction {
    function DSLOProtocol$preUpdateGuardianFunction(PreFunctionContext memory ctx, DSLOProtocol$UpdateGuardianFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreUpdateGuardianFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x88f4950f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preUpdateGuardianFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdateInteractionWhitelistFunction {
    function DSLOProtocol$onUpdateInteractionWhitelistFunction(FunctionContext memory ctx, DSLOProtocol$UpdateInteractionWhitelistFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdateInteractionWhitelistFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x6aa0caf8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdateInteractionWhitelistFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreUpdateInteractionWhitelistFunction {
    function DSLOProtocol$preUpdateInteractionWhitelistFunction(PreFunctionContext memory ctx, DSLOProtocol$UpdateInteractionWhitelistFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreUpdateInteractionWhitelistFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x6aa0caf8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preUpdateInteractionWhitelistFunction.selector
        });
    }
}

abstract contract DSLOProtocol$OnUpdateOperatorFunction {
    function DSLOProtocol$onUpdateOperatorFunction(FunctionContext memory ctx, DSLOProtocol$UpdateOperatorFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerOnUpdateOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x6d44a3b2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$onUpdateOperatorFunction.selector
        });
    }
}

abstract contract DSLOProtocol$PreUpdateOperatorFunction {
    function DSLOProtocol$preUpdateOperatorFunction(PreFunctionContext memory ctx, DSLOProtocol$UpdateOperatorFunctionInputs memory inputs) virtual external;

    function DSLOProtocol$triggerPreUpdateOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DSLOProtocol",
            selector: bytes4(0x6d44a3b2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DSLOProtocol$preUpdateOperatorFunction.selector
        });
    }
}

contract DSLOProtocol$EmitAllEvents is
  DSLOProtocol$OnFeeCollectedEvent,
DSLOProtocol$OnNonceIncreasedEvent,
DSLOProtocol$OnOrderCanceledEvent,
DSLOProtocol$OnOrderFilledEvent,
DSLOProtocol$OnOwnershipTransferredEvent,
DSLOProtocol$OnPausedEvent,
DSLOProtocol$OnUnpausedEvent,
DSLOProtocol$OnUpdateGuardianEvent,
DSLOProtocol$OnUpdateOperatorEvent,
DSLOProtocol$OnUpdatedDsOrderSignerEvent,
DSLOProtocol$OnUpdatedInteractionWhitelistEvent
{
  event FeeCollected(address recipient, address token, uint256 amount);
event NonceIncreased(address maker, uint256 oldNonce, uint256 newNonce);
event OrderCanceled(address maker, bytes32 orderHash, uint256 remainingRaw);
event OrderFilled(address taker, bytes32 orderHash, uint256 remaining, uint256 makingAmount, uint256 takingAmount);
event OwnershipTransferred(address previousOwner, address newOwner);
event Paused(address account);
event Unpaused(address account);
event UpdateGuardian(address user, bool grantOrRevoke);
event UpdateOperator(address user, bool grantOrRevoke);
event UpdatedDsOrderSigner(address _address);
event UpdatedInteractionWhitelist(address _address, bool isWhitelist);

  function DSLOProtocol$onFeeCollectedEvent(EventContext memory ctx, DSLOProtocol$FeeCollectedEventParams memory inputs) virtual external override {
    emit FeeCollected(inputs.recipient, inputs.token, inputs.amount);
  }
function DSLOProtocol$onNonceIncreasedEvent(EventContext memory ctx, DSLOProtocol$NonceIncreasedEventParams memory inputs) virtual external override {
    emit NonceIncreased(inputs.maker, inputs.oldNonce, inputs.newNonce);
  }
function DSLOProtocol$onOrderCanceledEvent(EventContext memory ctx, DSLOProtocol$OrderCanceledEventParams memory inputs) virtual external override {
    emit OrderCanceled(inputs.maker, inputs.orderHash, inputs.remainingRaw);
  }
function DSLOProtocol$onOrderFilledEvent(EventContext memory ctx, DSLOProtocol$OrderFilledEventParams memory inputs) virtual external override {
    emit OrderFilled(inputs.taker, inputs.orderHash, inputs.remaining, inputs.makingAmount, inputs.takingAmount);
  }
function DSLOProtocol$onOwnershipTransferredEvent(EventContext memory ctx, DSLOProtocol$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(inputs.previousOwner, inputs.newOwner);
  }
function DSLOProtocol$onPausedEvent(EventContext memory ctx, DSLOProtocol$PausedEventParams memory inputs) virtual external override {
    emit Paused(inputs.account);
  }
function DSLOProtocol$onUnpausedEvent(EventContext memory ctx, DSLOProtocol$UnpausedEventParams memory inputs) virtual external override {
    emit Unpaused(inputs.account);
  }
function DSLOProtocol$onUpdateGuardianEvent(EventContext memory ctx, DSLOProtocol$UpdateGuardianEventParams memory inputs) virtual external override {
    emit UpdateGuardian(inputs.user, inputs.grantOrRevoke);
  }
function DSLOProtocol$onUpdateOperatorEvent(EventContext memory ctx, DSLOProtocol$UpdateOperatorEventParams memory inputs) virtual external override {
    emit UpdateOperator(inputs.user, inputs.grantOrRevoke);
  }
function DSLOProtocol$onUpdatedDsOrderSignerEvent(EventContext memory ctx, DSLOProtocol$UpdatedDsOrderSignerEventParams memory inputs) virtual external override {
    emit UpdatedDsOrderSigner(inputs._address);
  }
function DSLOProtocol$onUpdatedInteractionWhitelistEvent(EventContext memory ctx, DSLOProtocol$UpdatedInteractionWhitelistEventParams memory inputs) virtual external override {
    emit UpdatedInteractionWhitelist(inputs._address, inputs.isWhitelist);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](11);
    triggers[0] = this.DSLOProtocol$triggerOnFeeCollectedEvent();
    triggers[1] = this.DSLOProtocol$triggerOnNonceIncreasedEvent();
    triggers[2] = this.DSLOProtocol$triggerOnOrderCanceledEvent();
    triggers[3] = this.DSLOProtocol$triggerOnOrderFilledEvent();
    triggers[4] = this.DSLOProtocol$triggerOnOwnershipTransferredEvent();
    triggers[5] = this.DSLOProtocol$triggerOnPausedEvent();
    triggers[6] = this.DSLOProtocol$triggerOnUnpausedEvent();
    triggers[7] = this.DSLOProtocol$triggerOnUpdateGuardianEvent();
    triggers[8] = this.DSLOProtocol$triggerOnUpdateOperatorEvent();
    triggers[9] = this.DSLOProtocol$triggerOnUpdatedDsOrderSignerEvent();
    triggers[10] = this.DSLOProtocol$triggerOnUpdatedInteractionWhitelistEvent();
    return triggers;
  }
}