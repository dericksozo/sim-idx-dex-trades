// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function AirSwapV4$Abi() pure returns (Abi memory) {
    return Abi("AirSwapV4");
}
struct AirSwapV4$DomainChainIdFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$DomainNameFunctionOutputs {
    string outArg0;
}

struct AirSwapV4$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct AirSwapV4$DomainVersionFunctionOutputs {
    string outArg0;
}

struct AirSwapV4$FeeDivisorFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$OrderTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct AirSwapV4$AuthorizeFunctionInputs {
    address signatory;
}

struct AirSwapV4$AuthorizedFunctionInputs {
    address outArg0;
}

struct AirSwapV4$AuthorizedFunctionOutputs {
    address outArg0;
}

struct AirSwapV4$CalculateDiscountFunctionInputs {
    uint256 stakingBalance;
    uint256 feeAmount;
}

struct AirSwapV4$CalculateDiscountFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$CalculateProtocolFeeFunctionInputs {
    address wallet;
    uint256 amount;
}

struct AirSwapV4$CalculateProtocolFeeFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$CancelFunctionInputs {
    uint256[] nonces;
}

struct AirSwapV4$CheckFunctionInputs {
    address senderWallet;
    uint256 nonce;
    uint256 expiry;
    address signerWallet;
    address signerToken;
    uint256 signerAmount;
    address senderToken;
    uint256 senderAmount;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct AirSwapV4$CheckFunctionOutputs {
    uint256 outArg0;
    bytes32[] outArg1;
}

struct AirSwapV4$NonceUsedFunctionInputs {
    address signer;
    uint256 nonce;
}

struct AirSwapV4$NonceUsedFunctionOutputs {
    bool outArg0;
}

struct AirSwapV4$OwnerFunctionOutputs {
    address outArg0;
}

struct AirSwapV4$PendingOwnerFunctionOutputs {
    address outArg0;
}

struct AirSwapV4$ProtocolFeeFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$ProtocolFeeLightFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$ProtocolFeeWalletFunctionOutputs {
    address outArg0;
}

struct AirSwapV4$RebateMaxFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$RebateScaleFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV4$SetProtocolFeeFunctionInputs {
    uint256 _protocolFee;
}

struct AirSwapV4$SetProtocolFeeLightFunctionInputs {
    uint256 _protocolFeeLight;
}

struct AirSwapV4$SetProtocolFeeWalletFunctionInputs {
    address _protocolFeeWallet;
}

struct AirSwapV4$SetRebateMaxFunctionInputs {
    uint256 _rebateMax;
}

struct AirSwapV4$SetRebateScaleFunctionInputs {
    uint256 _rebateScale;
}

struct AirSwapV4$SetStakingFunctionInputs {
    address newstaking;
}

struct AirSwapV4$StakingFunctionOutputs {
    address outArg0;
}

struct AirSwapV4$SwapFunctionInputs {
    address recipient;
    uint256 nonce;
    uint256 expiry;
    address signerWallet;
    address signerToken;
    uint256 signerAmount;
    address senderToken;
    uint256 senderAmount;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct AirSwapV4$SwapAnySenderFunctionInputs {
    address recipient;
    uint256 nonce;
    uint256 expiry;
    address signerWallet;
    address signerToken;
    uint256 signerAmount;
    address senderToken;
    uint256 senderAmount;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct AirSwapV4$SwapLightFunctionInputs {
    uint256 nonce;
    uint256 expiry;
    address signerWallet;
    address signerToken;
    uint256 signerAmount;
    address senderToken;
    uint256 senderAmount;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct AirSwapV4$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct AirSwapV4$AuthorizeEventParams {
    address signer;
    address signerWallet;
}

struct AirSwapV4$CancelEventParams {
    uint256 nonce;
    address signerWallet;
}

struct AirSwapV4$OwnershipTransferStartedEventParams {
    address previousOwner;
    address newOwner;
}

struct AirSwapV4$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct AirSwapV4$RevokeEventParams {
    address signer;
    address signerWallet;
}

struct AirSwapV4$SetProtocolFeeEventParams {
    uint256 protocolFee;
}

struct AirSwapV4$SetProtocolFeeLightEventParams {
    uint256 protocolFeeLight;
}

struct AirSwapV4$SetProtocolFeeWalletEventParams {
    address feeWallet;
}

struct AirSwapV4$SetRebateMaxEventParams {
    uint256 rebateMax;
}

struct AirSwapV4$SetRebateScaleEventParams {
    uint256 rebateScale;
}

struct AirSwapV4$SetStakingEventParams {
    address staking;
}

struct AirSwapV4$SwapErc20EventParams {
    uint256 nonce;
    address signerWallet;
    address signerToken;
    uint256 signerAmount;
    uint256 protocolFee;
    address senderWallet;
    address senderToken;
    uint256 senderAmount;
}

abstract contract AirSwapV4$OnAuthorizeEvent {
    function AirSwapV4$onAuthorizeEvent(EventContext memory ctx, AirSwapV4$AuthorizeEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnAuthorizeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x30468de898bda644e26bab66e5a2241a3aa6aaf527257f5ca54e0f65204ba14a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onAuthorizeEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnCancelEvent {
    function AirSwapV4$onCancelEvent(EventContext memory ctx, AirSwapV4$CancelEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnCancelEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x8dd3c361eb2366ff27c2db0eb07b9261f1d052570742ab8c9a0c326f37aa576d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onCancelEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnOwnershipTransferStartedEvent {
    function AirSwapV4$onOwnershipTransferStartedEvent(EventContext memory ctx, AirSwapV4$OwnershipTransferStartedEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnOwnershipTransferStartedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x38d16b8cac22d99fc7c124b9cd0de2d3fa1faef420bfe791d8c362d765e22700),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onOwnershipTransferStartedEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnOwnershipTransferredEvent {
    function AirSwapV4$onOwnershipTransferredEvent(EventContext memory ctx, AirSwapV4$OwnershipTransferredEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnRevokeEvent {
    function AirSwapV4$onRevokeEvent(EventContext memory ctx, AirSwapV4$RevokeEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnRevokeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0xd7426110292f20fe59e73ccf52124e0f5440a756507c91c7b0a6c50e1eb1a23a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onRevokeEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSetProtocolFeeEvent {
    function AirSwapV4$onSetProtocolFeeEvent(EventContext memory ctx, AirSwapV4$SetProtocolFeeEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSetProtocolFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0xdc0410a296e1e33943a772020d333d5f99319d7fcad932a484c53889f7aaa2b1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetProtocolFeeEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSetProtocolFeeLightEvent {
    function AirSwapV4$onSetProtocolFeeLightEvent(EventContext memory ctx, AirSwapV4$SetProtocolFeeLightEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSetProtocolFeeLightEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x312cc1a9b7287129a22395b9572a3c9ed09ce456f02b519efb34e12bb429eed0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetProtocolFeeLightEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSetProtocolFeeWalletEvent {
    function AirSwapV4$onSetProtocolFeeWalletEvent(EventContext memory ctx, AirSwapV4$SetProtocolFeeWalletEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSetProtocolFeeWalletEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x8b2a800ce9e2e7ccdf4741ae0e41b1f16983192291080ae3b78ac4296ddf598a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetProtocolFeeWalletEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSetRebateMaxEvent {
    function AirSwapV4$onSetRebateMaxEvent(EventContext memory ctx, AirSwapV4$SetRebateMaxEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSetRebateMaxEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x8f4773d92ea1b8ff6e9ea92363a816f089d2042092c31bb82607707d6699b0b3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetRebateMaxEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSetRebateScaleEvent {
    function AirSwapV4$onSetRebateScaleEvent(EventContext memory ctx, AirSwapV4$SetRebateScaleEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSetRebateScaleEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x01d5d03fb73185766e93e2c8300b4fc67782909a607c987c6f76f35c84e2a325),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetRebateScaleEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSetStakingEvent {
    function AirSwapV4$onSetStakingEvent(EventContext memory ctx, AirSwapV4$SetStakingEventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSetStakingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0x58fd5d9c33114e6edf8ea5d30956f8d1a4ab112b004f99928b4bcf1b87d66662),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetStakingEvent.selector
        });
    }
}

abstract contract AirSwapV4$OnSwapErc20Event {
    function AirSwapV4$onSwapErc20Event(EventContext memory ctx, AirSwapV4$SwapErc20EventParams memory inputs) virtual external;

    function AirSwapV4$triggerOnSwapErc20Event() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes32(0xb651f2787ff61b5ab14f3936f2daebdad3d84aeb74438e82870cc3b7aee71e90),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSwapErc20Event.selector
        });
    }
}

abstract contract AirSwapV4$OnDomainChainIdFunction {
    function AirSwapV4$onDomainChainIdFunction(FunctionContext memory ctx, AirSwapV4$DomainChainIdFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnDomainChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x416f281d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onDomainChainIdFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreDomainChainIdFunction {
    function AirSwapV4$preDomainChainIdFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreDomainChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x416f281d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preDomainChainIdFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnDomainNameFunction {
    function AirSwapV4$onDomainNameFunction(FunctionContext memory ctx, AirSwapV4$DomainNameFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnDomainNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x796f077b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onDomainNameFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreDomainNameFunction {
    function AirSwapV4$preDomainNameFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreDomainNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x796f077b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preDomainNameFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnDomainSeparatorFunction {
    function AirSwapV4$onDomainSeparatorFunction(FunctionContext memory ctx, AirSwapV4$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreDomainSeparatorFunction {
    function AirSwapV4$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnDomainVersionFunction {
    function AirSwapV4$onDomainVersionFunction(FunctionContext memory ctx, AirSwapV4$DomainVersionFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnDomainVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xacb8cc49),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onDomainVersionFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreDomainVersionFunction {
    function AirSwapV4$preDomainVersionFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreDomainVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xacb8cc49),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preDomainVersionFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnFeeDivisorFunction {
    function AirSwapV4$onFeeDivisorFunction(FunctionContext memory ctx, AirSwapV4$FeeDivisorFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnFeeDivisorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x9e93ad8e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onFeeDivisorFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreFeeDivisorFunction {
    function AirSwapV4$preFeeDivisorFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreFeeDivisorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x9e93ad8e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preFeeDivisorFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnOrderTypehashFunction {
    function AirSwapV4$onOrderTypehashFunction(FunctionContext memory ctx, AirSwapV4$OrderTypehashFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xf973a209),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onOrderTypehashFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreOrderTypehashFunction {
    function AirSwapV4$preOrderTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xf973a209),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preOrderTypehashFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnAcceptOwnershipFunction {
    function AirSwapV4$onAcceptOwnershipFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerOnAcceptOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x79ba5097),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onAcceptOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreAcceptOwnershipFunction {
    function AirSwapV4$preAcceptOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreAcceptOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x79ba5097),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preAcceptOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnAuthorizeFunction {
    function AirSwapV4$onAuthorizeFunction(FunctionContext memory ctx, AirSwapV4$AuthorizeFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnAuthorizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb6a5d7de),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onAuthorizeFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreAuthorizeFunction {
    function AirSwapV4$preAuthorizeFunction(PreFunctionContext memory ctx, AirSwapV4$AuthorizeFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreAuthorizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb6a5d7de),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preAuthorizeFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnAuthorizedFunction {
    function AirSwapV4$onAuthorizedFunction(FunctionContext memory ctx, AirSwapV4$AuthorizedFunctionInputs memory inputs, AirSwapV4$AuthorizedFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnAuthorizedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb9181611),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onAuthorizedFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreAuthorizedFunction {
    function AirSwapV4$preAuthorizedFunction(PreFunctionContext memory ctx, AirSwapV4$AuthorizedFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreAuthorizedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb9181611),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preAuthorizedFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnCalculateDiscountFunction {
    function AirSwapV4$onCalculateDiscountFunction(FunctionContext memory ctx, AirSwapV4$CalculateDiscountFunctionInputs memory inputs, AirSwapV4$CalculateDiscountFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnCalculateDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x4d2af2b2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onCalculateDiscountFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreCalculateDiscountFunction {
    function AirSwapV4$preCalculateDiscountFunction(PreFunctionContext memory ctx, AirSwapV4$CalculateDiscountFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreCalculateDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x4d2af2b2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preCalculateDiscountFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnCalculateProtocolFeeFunction {
    function AirSwapV4$onCalculateProtocolFeeFunction(FunctionContext memory ctx, AirSwapV4$CalculateProtocolFeeFunctionInputs memory inputs, AirSwapV4$CalculateProtocolFeeFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnCalculateProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x52c5f1f5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onCalculateProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreCalculateProtocolFeeFunction {
    function AirSwapV4$preCalculateProtocolFeeFunction(PreFunctionContext memory ctx, AirSwapV4$CalculateProtocolFeeFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreCalculateProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x52c5f1f5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preCalculateProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnCancelFunction {
    function AirSwapV4$onCancelFunction(FunctionContext memory ctx, AirSwapV4$CancelFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnCancelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x2e340823),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onCancelFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreCancelFunction {
    function AirSwapV4$preCancelFunction(PreFunctionContext memory ctx, AirSwapV4$CancelFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreCancelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x2e340823),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preCancelFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnCheckFunction {
    function AirSwapV4$onCheckFunction(FunctionContext memory ctx, AirSwapV4$CheckFunctionInputs memory inputs, AirSwapV4$CheckFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb9cb01b0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onCheckFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreCheckFunction {
    function AirSwapV4$preCheckFunction(PreFunctionContext memory ctx, AirSwapV4$CheckFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb9cb01b0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preCheckFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnNonceUsedFunction {
    function AirSwapV4$onNonceUsedFunction(FunctionContext memory ctx, AirSwapV4$NonceUsedFunctionInputs memory inputs, AirSwapV4$NonceUsedFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnNonceUsedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x1647795e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onNonceUsedFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreNonceUsedFunction {
    function AirSwapV4$preNonceUsedFunction(PreFunctionContext memory ctx, AirSwapV4$NonceUsedFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreNonceUsedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x1647795e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preNonceUsedFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnOwnerFunction {
    function AirSwapV4$onOwnerFunction(FunctionContext memory ctx, AirSwapV4$OwnerFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onOwnerFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreOwnerFunction {
    function AirSwapV4$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preOwnerFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnPendingOwnerFunction {
    function AirSwapV4$onPendingOwnerFunction(FunctionContext memory ctx, AirSwapV4$PendingOwnerFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnPendingOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xe30c3978),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onPendingOwnerFunction.selector
        });
    }
}

abstract contract AirSwapV4$PrePendingOwnerFunction {
    function AirSwapV4$prePendingOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPrePendingOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xe30c3978),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$prePendingOwnerFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnProtocolFeeFunction {
    function AirSwapV4$onProtocolFeeFunction(FunctionContext memory ctx, AirSwapV4$ProtocolFeeFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb0e21e8a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreProtocolFeeFunction {
    function AirSwapV4$preProtocolFeeFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb0e21e8a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnProtocolFeeLightFunction {
    function AirSwapV4$onProtocolFeeLightFunction(FunctionContext memory ctx, AirSwapV4$ProtocolFeeLightFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xf4ebc699),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreProtocolFeeLightFunction {
    function AirSwapV4$preProtocolFeeLightFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xf4ebc699),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnProtocolFeeWalletFunction {
    function AirSwapV4$onProtocolFeeWalletFunction(FunctionContext memory ctx, AirSwapV4$ProtocolFeeWalletFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xcbf7c6c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreProtocolFeeWalletFunction {
    function AirSwapV4$preProtocolFeeWalletFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xcbf7c6c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnRebateMaxFunction {
    function AirSwapV4$onRebateMaxFunction(FunctionContext memory ctx, AirSwapV4$RebateMaxFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnRebateMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x770fde12),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onRebateMaxFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreRebateMaxFunction {
    function AirSwapV4$preRebateMaxFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreRebateMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x770fde12),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preRebateMaxFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnRebateScaleFunction {
    function AirSwapV4$onRebateScaleFunction(FunctionContext memory ctx, AirSwapV4$RebateScaleFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnRebateScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xdb985cd9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onRebateScaleFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreRebateScaleFunction {
    function AirSwapV4$preRebateScaleFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreRebateScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xdb985cd9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preRebateScaleFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnRenounceOwnershipFunction {
    function AirSwapV4$onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreRenounceOwnershipFunction {
    function AirSwapV4$preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnRevokeFunction {
    function AirSwapV4$onRevokeFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerOnRevokeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb6549f75),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onRevokeFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreRevokeFunction {
    function AirSwapV4$preRevokeFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreRevokeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xb6549f75),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preRevokeFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSetProtocolFeeFunction {
    function AirSwapV4$onSetProtocolFeeFunction(FunctionContext memory ctx, AirSwapV4$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x787dce3d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSetProtocolFeeFunction {
    function AirSwapV4$preSetProtocolFeeFunction(PreFunctionContext memory ctx, AirSwapV4$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x787dce3d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSetProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSetProtocolFeeLightFunction {
    function AirSwapV4$onSetProtocolFeeLightFunction(FunctionContext memory ctx, AirSwapV4$SetProtocolFeeLightFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSetProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xbfd4e557),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSetProtocolFeeLightFunction {
    function AirSwapV4$preSetProtocolFeeLightFunction(PreFunctionContext memory ctx, AirSwapV4$SetProtocolFeeLightFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSetProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xbfd4e557),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSetProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSetProtocolFeeWalletFunction {
    function AirSwapV4$onSetProtocolFeeWalletFunction(FunctionContext memory ctx, AirSwapV4$SetProtocolFeeWalletFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSetProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x7ce78525),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSetProtocolFeeWalletFunction {
    function AirSwapV4$preSetProtocolFeeWalletFunction(PreFunctionContext memory ctx, AirSwapV4$SetProtocolFeeWalletFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSetProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x7ce78525),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSetProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSetRebateMaxFunction {
    function AirSwapV4$onSetRebateMaxFunction(FunctionContext memory ctx, AirSwapV4$SetRebateMaxFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSetRebateMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xd31eaa83),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetRebateMaxFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSetRebateMaxFunction {
    function AirSwapV4$preSetRebateMaxFunction(PreFunctionContext memory ctx, AirSwapV4$SetRebateMaxFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSetRebateMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xd31eaa83),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSetRebateMaxFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSetRebateScaleFunction {
    function AirSwapV4$onSetRebateScaleFunction(FunctionContext memory ctx, AirSwapV4$SetRebateScaleFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSetRebateScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xe95b771c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetRebateScaleFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSetRebateScaleFunction {
    function AirSwapV4$preSetRebateScaleFunction(PreFunctionContext memory ctx, AirSwapV4$SetRebateScaleFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSetRebateScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xe95b771c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSetRebateScaleFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSetStakingFunction {
    function AirSwapV4$onSetStakingFunction(FunctionContext memory ctx, AirSwapV4$SetStakingFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSetStakingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x8ff39099),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSetStakingFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSetStakingFunction {
    function AirSwapV4$preSetStakingFunction(PreFunctionContext memory ctx, AirSwapV4$SetStakingFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSetStakingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x8ff39099),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSetStakingFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnStakingFunction {
    function AirSwapV4$onStakingFunction(FunctionContext memory ctx, AirSwapV4$StakingFunctionOutputs memory outputs) virtual external;

    function AirSwapV4$triggerOnStakingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x4cf088d9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onStakingFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreStakingFunction {
    function AirSwapV4$preStakingFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV4$triggerPreStakingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x4cf088d9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preStakingFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSwapFunction {
    function AirSwapV4$onSwapFunction(FunctionContext memory ctx, AirSwapV4$SwapFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x98956069),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSwapFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSwapFunction {
    function AirSwapV4$preSwapFunction(PreFunctionContext memory ctx, AirSwapV4$SwapFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x98956069),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSwapFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSwapAnySenderFunction {
    function AirSwapV4$onSwapAnySenderFunction(FunctionContext memory ctx, AirSwapV4$SwapAnySenderFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSwapAnySenderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x3eb1af24),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSwapAnySenderFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSwapAnySenderFunction {
    function AirSwapV4$preSwapAnySenderFunction(PreFunctionContext memory ctx, AirSwapV4$SwapAnySenderFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSwapAnySenderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x3eb1af24),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSwapAnySenderFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnSwapLightFunction {
    function AirSwapV4$onSwapLightFunction(FunctionContext memory ctx, AirSwapV4$SwapLightFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnSwapLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x46e4480d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onSwapLightFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreSwapLightFunction {
    function AirSwapV4$preSwapLightFunction(PreFunctionContext memory ctx, AirSwapV4$SwapLightFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreSwapLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0x46e4480d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preSwapLightFunction.selector
        });
    }
}

abstract contract AirSwapV4$OnTransferOwnershipFunction {
    function AirSwapV4$onTransferOwnershipFunction(FunctionContext memory ctx, AirSwapV4$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV4$PreTransferOwnershipFunction {
    function AirSwapV4$preTransferOwnershipFunction(PreFunctionContext memory ctx, AirSwapV4$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function AirSwapV4$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV4",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV4$preTransferOwnershipFunction.selector
        });
    }
}

contract AirSwapV4$EmitAllEvents is
  AirSwapV4$OnAuthorizeEvent,
AirSwapV4$OnCancelEvent,
AirSwapV4$OnOwnershipTransferStartedEvent,
AirSwapV4$OnOwnershipTransferredEvent,
AirSwapV4$OnRevokeEvent,
AirSwapV4$OnSetProtocolFeeEvent,
AirSwapV4$OnSetProtocolFeeLightEvent,
AirSwapV4$OnSetProtocolFeeWalletEvent,
AirSwapV4$OnSetRebateMaxEvent,
AirSwapV4$OnSetRebateScaleEvent,
AirSwapV4$OnSetStakingEvent,
AirSwapV4$OnSwapErc20Event
{
  event Authorize(address signer, address signerWallet);
event Cancel(uint256 nonce, address signerWallet);
event OwnershipTransferStarted(address previousOwner, address newOwner);
event OwnershipTransferred(address previousOwner, address newOwner);
event Revoke(address signer, address signerWallet);
event SetProtocolFee(uint256 protocolFee);
event SetProtocolFeeLight(uint256 protocolFeeLight);
event SetProtocolFeeWallet(address feeWallet);
event SetRebateMax(uint256 rebateMax);
event SetRebateScale(uint256 rebateScale);
event SetStaking(address staking);
event SwapErc20(uint256 nonce, address signerWallet, address signerToken, uint256 signerAmount, uint256 protocolFee, address senderWallet, address senderToken, uint256 senderAmount);

  function AirSwapV4$onAuthorizeEvent(EventContext memory ctx, AirSwapV4$AuthorizeEventParams memory inputs) virtual external override {
    emit Authorize(inputs.signer, inputs.signerWallet);
  }
function AirSwapV4$onCancelEvent(EventContext memory ctx, AirSwapV4$CancelEventParams memory inputs) virtual external override {
    emit Cancel(inputs.nonce, inputs.signerWallet);
  }
function AirSwapV4$onOwnershipTransferStartedEvent(EventContext memory ctx, AirSwapV4$OwnershipTransferStartedEventParams memory inputs) virtual external override {
    emit OwnershipTransferStarted(inputs.previousOwner, inputs.newOwner);
  }
function AirSwapV4$onOwnershipTransferredEvent(EventContext memory ctx, AirSwapV4$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(inputs.previousOwner, inputs.newOwner);
  }
function AirSwapV4$onRevokeEvent(EventContext memory ctx, AirSwapV4$RevokeEventParams memory inputs) virtual external override {
    emit Revoke(inputs.signer, inputs.signerWallet);
  }
function AirSwapV4$onSetProtocolFeeEvent(EventContext memory ctx, AirSwapV4$SetProtocolFeeEventParams memory inputs) virtual external override {
    emit SetProtocolFee(inputs.protocolFee);
  }
function AirSwapV4$onSetProtocolFeeLightEvent(EventContext memory ctx, AirSwapV4$SetProtocolFeeLightEventParams memory inputs) virtual external override {
    emit SetProtocolFeeLight(inputs.protocolFeeLight);
  }
function AirSwapV4$onSetProtocolFeeWalletEvent(EventContext memory ctx, AirSwapV4$SetProtocolFeeWalletEventParams memory inputs) virtual external override {
    emit SetProtocolFeeWallet(inputs.feeWallet);
  }
function AirSwapV4$onSetRebateMaxEvent(EventContext memory ctx, AirSwapV4$SetRebateMaxEventParams memory inputs) virtual external override {
    emit SetRebateMax(inputs.rebateMax);
  }
function AirSwapV4$onSetRebateScaleEvent(EventContext memory ctx, AirSwapV4$SetRebateScaleEventParams memory inputs) virtual external override {
    emit SetRebateScale(inputs.rebateScale);
  }
function AirSwapV4$onSetStakingEvent(EventContext memory ctx, AirSwapV4$SetStakingEventParams memory inputs) virtual external override {
    emit SetStaking(inputs.staking);
  }
function AirSwapV4$onSwapErc20Event(EventContext memory ctx, AirSwapV4$SwapErc20EventParams memory inputs) virtual external override {
    emit SwapErc20(inputs.nonce, inputs.signerWallet, inputs.signerToken, inputs.signerAmount, inputs.protocolFee, inputs.senderWallet, inputs.senderToken, inputs.senderAmount);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](12);
    triggers[0] = this.AirSwapV4$triggerOnAuthorizeEvent();
    triggers[1] = this.AirSwapV4$triggerOnCancelEvent();
    triggers[2] = this.AirSwapV4$triggerOnOwnershipTransferStartedEvent();
    triggers[3] = this.AirSwapV4$triggerOnOwnershipTransferredEvent();
    triggers[4] = this.AirSwapV4$triggerOnRevokeEvent();
    triggers[5] = this.AirSwapV4$triggerOnSetProtocolFeeEvent();
    triggers[6] = this.AirSwapV4$triggerOnSetProtocolFeeLightEvent();
    triggers[7] = this.AirSwapV4$triggerOnSetProtocolFeeWalletEvent();
    triggers[8] = this.AirSwapV4$triggerOnSetRebateMaxEvent();
    triggers[9] = this.AirSwapV4$triggerOnSetRebateScaleEvent();
    triggers[10] = this.AirSwapV4$triggerOnSetStakingEvent();
    triggers[11] = this.AirSwapV4$triggerOnSwapErc20Event();
    return triggers;
  }
}