// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function AirSwapV5$Abi() pure returns (Abi memory) {
    return Abi("AirSwapV5");
}
struct AirSwapV5$DomainChainIdFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct AirSwapV5$FeeDivisorFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$OrderTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct AirSwapV5$AuthorizeFunctionInputs {
    address signatory;
}

struct AirSwapV5$AuthorizedFunctionInputs {
    address outArg0;
}

struct AirSwapV5$AuthorizedFunctionOutputs {
    address outArg0;
}

struct AirSwapV5$BonusMaxFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$BonusScaleFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$CalculateBonusFunctionInputs {
    uint256 stakingBalance;
    uint256 feeAmount;
}

struct AirSwapV5$CalculateBonusFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$CalculateProtocolFeeFunctionInputs {
    address wallet;
    uint256 amount;
}

struct AirSwapV5$CalculateProtocolFeeFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$CancelFunctionInputs {
    uint256[] nonces;
}

struct AirSwapV5$CheckFunctionInputs {
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

struct AirSwapV5$CheckFunctionOutputs {
    bytes32[] outArg0;
}

struct AirSwapV5$CompleteOwnershipHandoverFunctionInputs {
    address pendingOwner;
}

struct AirSwapV5$Eip712DomainFunctionOutputs {
    bytes1 fields;
    string name;
    string version;
    uint256 chainId;
    address verifyingContract;
    bytes32 salt;
    uint256[] extensions;
}

struct AirSwapV5$NonceUsedFunctionInputs {
    address signer;
    uint256 nonce;
}

struct AirSwapV5$NonceUsedFunctionOutputs {
    bool outArg0;
}

struct AirSwapV5$OwnerFunctionOutputs {
    address result;
}

struct AirSwapV5$OwnershipHandoverExpiresAtFunctionInputs {
    address pendingOwner;
}

struct AirSwapV5$OwnershipHandoverExpiresAtFunctionOutputs {
    uint256 result;
}

struct AirSwapV5$ProtocolFeeFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$ProtocolFeeLightFunctionOutputs {
    uint256 outArg0;
}

struct AirSwapV5$ProtocolFeeWalletFunctionOutputs {
    address outArg0;
}

struct AirSwapV5$SetBonusMaxFunctionInputs {
    uint256 _bonusMax;
}

struct AirSwapV5$SetBonusScaleFunctionInputs {
    uint256 _bonusScale;
}

struct AirSwapV5$SetProtocolFeeFunctionInputs {
    uint256 _protocolFee;
}

struct AirSwapV5$SetProtocolFeeLightFunctionInputs {
    uint256 _protocolFeeLight;
}

struct AirSwapV5$SetProtocolFeeWalletFunctionInputs {
    address _protocolFeeWallet;
}

struct AirSwapV5$SetStakingFunctionInputs {
    address _stakingToken;
}

struct AirSwapV5$StakingTokenFunctionOutputs {
    address outArg0;
}

struct AirSwapV5$SwapFunctionInputs {
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

struct AirSwapV5$SwapAnySenderFunctionInputs {
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

struct AirSwapV5$SwapLightFunctionInputs {
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

struct AirSwapV5$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct AirSwapV5$AuthorizeEventParams {
    address signer;
    address signerWallet;
}

struct AirSwapV5$CancelEventParams {
    uint256 nonce;
    address signerWallet;
}

struct AirSwapV5$OwnershipHandoverCanceledEventParams {
    address pendingOwner;
}

struct AirSwapV5$OwnershipHandoverRequestedEventParams {
    address pendingOwner;
}

struct AirSwapV5$OwnershipTransferredEventParams {
    address oldOwner;
    address newOwner;
}

struct AirSwapV5$RevokeEventParams {
    address signer;
    address signerWallet;
}

struct AirSwapV5$SetBonusMaxEventParams {
    uint256 bonusMax;
}

struct AirSwapV5$SetBonusScaleEventParams {
    uint256 bonusScale;
}

struct AirSwapV5$SetProtocolFeeEventParams {
    uint256 protocolFee;
}

struct AirSwapV5$SetProtocolFeeLightEventParams {
    uint256 protocolFeeLight;
}

struct AirSwapV5$SetProtocolFeeWalletEventParams {
    address feeWallet;
}

struct AirSwapV5$SetStakingEventParams {
    address staking;
}

struct AirSwapV5$SwapErc20EventParams {
    uint256 nonce;
    address signerWallet;
}

abstract contract AirSwapV5$OnAuthorizeEvent {
    function AirSwapV5$onAuthorizeEvent(EventContext memory ctx, AirSwapV5$AuthorizeEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnAuthorizeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x30468de898bda644e26bab66e5a2241a3aa6aaf527257f5ca54e0f65204ba14a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onAuthorizeEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnCancelEvent {
    function AirSwapV5$onCancelEvent(EventContext memory ctx, AirSwapV5$CancelEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnCancelEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x8dd3c361eb2366ff27c2db0eb07b9261f1d052570742ab8c9a0c326f37aa576d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCancelEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnOwnershipHandoverCanceledEvent {
    function AirSwapV5$onOwnershipHandoverCanceledEvent(EventContext memory ctx, AirSwapV5$OwnershipHandoverCanceledEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnOwnershipHandoverCanceledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0xfa7b8eab7da67f412cc9575ed43464468f9bfbae89d1675917346ca6d8fe3c92),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onOwnershipHandoverCanceledEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnOwnershipHandoverRequestedEvent {
    function AirSwapV5$onOwnershipHandoverRequestedEvent(EventContext memory ctx, AirSwapV5$OwnershipHandoverRequestedEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnOwnershipHandoverRequestedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0xdbf36a107da19e49527a7176a1babf963b4b0ff8cde35ee35d6cd8f1f9ac7e1d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onOwnershipHandoverRequestedEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnOwnershipTransferredEvent {
    function AirSwapV5$onOwnershipTransferredEvent(EventContext memory ctx, AirSwapV5$OwnershipTransferredEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnRevokeEvent {
    function AirSwapV5$onRevokeEvent(EventContext memory ctx, AirSwapV5$RevokeEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnRevokeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0xd7426110292f20fe59e73ccf52124e0f5440a756507c91c7b0a6c50e1eb1a23a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onRevokeEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSetBonusMaxEvent {
    function AirSwapV5$onSetBonusMaxEvent(EventContext memory ctx, AirSwapV5$SetBonusMaxEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSetBonusMaxEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0xb113403a9e8b9f0173354acc3a5d210c86be40bb7259c19c55cea02227c5026f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetBonusMaxEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSetBonusScaleEvent {
    function AirSwapV5$onSetBonusScaleEvent(EventContext memory ctx, AirSwapV5$SetBonusScaleEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSetBonusScaleEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0xcc5b12dfbda3644d5f3190b40ad8215d4aaac870df5c8112735085679d7cc333),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetBonusScaleEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSetProtocolFeeEvent {
    function AirSwapV5$onSetProtocolFeeEvent(EventContext memory ctx, AirSwapV5$SetProtocolFeeEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSetProtocolFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0xdc0410a296e1e33943a772020d333d5f99319d7fcad932a484c53889f7aaa2b1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetProtocolFeeEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSetProtocolFeeLightEvent {
    function AirSwapV5$onSetProtocolFeeLightEvent(EventContext memory ctx, AirSwapV5$SetProtocolFeeLightEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSetProtocolFeeLightEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x312cc1a9b7287129a22395b9572a3c9ed09ce456f02b519efb34e12bb429eed0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetProtocolFeeLightEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSetProtocolFeeWalletEvent {
    function AirSwapV5$onSetProtocolFeeWalletEvent(EventContext memory ctx, AirSwapV5$SetProtocolFeeWalletEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSetProtocolFeeWalletEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x8b2a800ce9e2e7ccdf4741ae0e41b1f16983192291080ae3b78ac4296ddf598a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetProtocolFeeWalletEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSetStakingEvent {
    function AirSwapV5$onSetStakingEvent(EventContext memory ctx, AirSwapV5$SetStakingEventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSetStakingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x58fd5d9c33114e6edf8ea5d30956f8d1a4ab112b004f99928b4bcf1b87d66662),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetStakingEvent.selector
        });
    }
}

abstract contract AirSwapV5$OnSwapErc20Event {
    function AirSwapV5$onSwapErc20Event(EventContext memory ctx, AirSwapV5$SwapErc20EventParams memory inputs) virtual external;

    function AirSwapV5$triggerOnSwapErc20Event() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes32(0x4294f3cfba9ff22cfa9cb602947f7656aa160c0a6c8fa406a28e12bed6bf2093),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSwapErc20Event.selector
        });
    }
}

abstract contract AirSwapV5$OnDomainChainIdFunction {
    function AirSwapV5$onDomainChainIdFunction(FunctionContext memory ctx, AirSwapV5$DomainChainIdFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnDomainChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x416f281d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onDomainChainIdFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreDomainChainIdFunction {
    function AirSwapV5$preDomainChainIdFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreDomainChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x416f281d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preDomainChainIdFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnDomainSeparatorFunction {
    function AirSwapV5$onDomainSeparatorFunction(FunctionContext memory ctx, AirSwapV5$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreDomainSeparatorFunction {
    function AirSwapV5$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnFeeDivisorFunction {
    function AirSwapV5$onFeeDivisorFunction(FunctionContext memory ctx, AirSwapV5$FeeDivisorFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnFeeDivisorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x9e93ad8e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onFeeDivisorFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreFeeDivisorFunction {
    function AirSwapV5$preFeeDivisorFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreFeeDivisorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x9e93ad8e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preFeeDivisorFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnOrderTypehashFunction {
    function AirSwapV5$onOrderTypehashFunction(FunctionContext memory ctx, AirSwapV5$OrderTypehashFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf973a209),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onOrderTypehashFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreOrderTypehashFunction {
    function AirSwapV5$preOrderTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreOrderTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf973a209),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preOrderTypehashFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnAuthorizeFunction {
    function AirSwapV5$onAuthorizeFunction(FunctionContext memory ctx, AirSwapV5$AuthorizeFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnAuthorizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb6a5d7de),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onAuthorizeFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreAuthorizeFunction {
    function AirSwapV5$preAuthorizeFunction(PreFunctionContext memory ctx, AirSwapV5$AuthorizeFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreAuthorizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb6a5d7de),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preAuthorizeFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnAuthorizedFunction {
    function AirSwapV5$onAuthorizedFunction(FunctionContext memory ctx, AirSwapV5$AuthorizedFunctionInputs memory inputs, AirSwapV5$AuthorizedFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnAuthorizedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb9181611),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onAuthorizedFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreAuthorizedFunction {
    function AirSwapV5$preAuthorizedFunction(PreFunctionContext memory ctx, AirSwapV5$AuthorizedFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreAuthorizedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb9181611),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preAuthorizedFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnBonusMaxFunction {
    function AirSwapV5$onBonusMaxFunction(FunctionContext memory ctx, AirSwapV5$BonusMaxFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnBonusMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x7aba86d2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onBonusMaxFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreBonusMaxFunction {
    function AirSwapV5$preBonusMaxFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreBonusMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x7aba86d2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preBonusMaxFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnBonusScaleFunction {
    function AirSwapV5$onBonusScaleFunction(FunctionContext memory ctx, AirSwapV5$BonusScaleFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnBonusScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xc5c62a7d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onBonusScaleFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreBonusScaleFunction {
    function AirSwapV5$preBonusScaleFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreBonusScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xc5c62a7d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preBonusScaleFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnCalculateBonusFunction {
    function AirSwapV5$onCalculateBonusFunction(FunctionContext memory ctx, AirSwapV5$CalculateBonusFunctionInputs memory inputs, AirSwapV5$CalculateBonusFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnCalculateBonusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x6f72fd20),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCalculateBonusFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreCalculateBonusFunction {
    function AirSwapV5$preCalculateBonusFunction(PreFunctionContext memory ctx, AirSwapV5$CalculateBonusFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreCalculateBonusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x6f72fd20),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preCalculateBonusFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnCalculateProtocolFeeFunction {
    function AirSwapV5$onCalculateProtocolFeeFunction(FunctionContext memory ctx, AirSwapV5$CalculateProtocolFeeFunctionInputs memory inputs, AirSwapV5$CalculateProtocolFeeFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnCalculateProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x52c5f1f5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCalculateProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreCalculateProtocolFeeFunction {
    function AirSwapV5$preCalculateProtocolFeeFunction(PreFunctionContext memory ctx, AirSwapV5$CalculateProtocolFeeFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreCalculateProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x52c5f1f5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preCalculateProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnCancelFunction {
    function AirSwapV5$onCancelFunction(FunctionContext memory ctx, AirSwapV5$CancelFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnCancelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x2e340823),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCancelFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreCancelFunction {
    function AirSwapV5$preCancelFunction(PreFunctionContext memory ctx, AirSwapV5$CancelFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreCancelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x2e340823),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preCancelFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnCancelOwnershipHandoverFunction {
    function AirSwapV5$onCancelOwnershipHandoverFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerOnCancelOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x54d1f13d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCancelOwnershipHandoverFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreCancelOwnershipHandoverFunction {
    function AirSwapV5$preCancelOwnershipHandoverFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreCancelOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x54d1f13d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preCancelOwnershipHandoverFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnCheckFunction {
    function AirSwapV5$onCheckFunction(FunctionContext memory ctx, AirSwapV5$CheckFunctionInputs memory inputs, AirSwapV5$CheckFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb9cb01b0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCheckFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreCheckFunction {
    function AirSwapV5$preCheckFunction(PreFunctionContext memory ctx, AirSwapV5$CheckFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb9cb01b0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preCheckFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnCompleteOwnershipHandoverFunction {
    function AirSwapV5$onCompleteOwnershipHandoverFunction(FunctionContext memory ctx, AirSwapV5$CompleteOwnershipHandoverFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnCompleteOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf04e283e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onCompleteOwnershipHandoverFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreCompleteOwnershipHandoverFunction {
    function AirSwapV5$preCompleteOwnershipHandoverFunction(PreFunctionContext memory ctx, AirSwapV5$CompleteOwnershipHandoverFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreCompleteOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf04e283e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preCompleteOwnershipHandoverFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnEip712DomainFunction {
    function AirSwapV5$onEip712DomainFunction(FunctionContext memory ctx, AirSwapV5$Eip712DomainFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnEip712DomainFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x84b0196e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onEip712DomainFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreEip712DomainFunction {
    function AirSwapV5$preEip712DomainFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreEip712DomainFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x84b0196e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preEip712DomainFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnNonceUsedFunction {
    function AirSwapV5$onNonceUsedFunction(FunctionContext memory ctx, AirSwapV5$NonceUsedFunctionInputs memory inputs, AirSwapV5$NonceUsedFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnNonceUsedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x1647795e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onNonceUsedFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreNonceUsedFunction {
    function AirSwapV5$preNonceUsedFunction(PreFunctionContext memory ctx, AirSwapV5$NonceUsedFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreNonceUsedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x1647795e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preNonceUsedFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnOwnerFunction {
    function AirSwapV5$onOwnerFunction(FunctionContext memory ctx, AirSwapV5$OwnerFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onOwnerFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreOwnerFunction {
    function AirSwapV5$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preOwnerFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnOwnershipHandoverExpiresAtFunction {
    function AirSwapV5$onOwnershipHandoverExpiresAtFunction(FunctionContext memory ctx, AirSwapV5$OwnershipHandoverExpiresAtFunctionInputs memory inputs, AirSwapV5$OwnershipHandoverExpiresAtFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnOwnershipHandoverExpiresAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xfee81cf4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onOwnershipHandoverExpiresAtFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreOwnershipHandoverExpiresAtFunction {
    function AirSwapV5$preOwnershipHandoverExpiresAtFunction(PreFunctionContext memory ctx, AirSwapV5$OwnershipHandoverExpiresAtFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreOwnershipHandoverExpiresAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xfee81cf4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preOwnershipHandoverExpiresAtFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnProtocolFeeFunction {
    function AirSwapV5$onProtocolFeeFunction(FunctionContext memory ctx, AirSwapV5$ProtocolFeeFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb0e21e8a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreProtocolFeeFunction {
    function AirSwapV5$preProtocolFeeFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb0e21e8a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnProtocolFeeLightFunction {
    function AirSwapV5$onProtocolFeeLightFunction(FunctionContext memory ctx, AirSwapV5$ProtocolFeeLightFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf4ebc699),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreProtocolFeeLightFunction {
    function AirSwapV5$preProtocolFeeLightFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf4ebc699),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnProtocolFeeWalletFunction {
    function AirSwapV5$onProtocolFeeWalletFunction(FunctionContext memory ctx, AirSwapV5$ProtocolFeeWalletFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xcbf7c6c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreProtocolFeeWalletFunction {
    function AirSwapV5$preProtocolFeeWalletFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xcbf7c6c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnRenounceOwnershipFunction {
    function AirSwapV5$onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreRenounceOwnershipFunction {
    function AirSwapV5$preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnRequestOwnershipHandoverFunction {
    function AirSwapV5$onRequestOwnershipHandoverFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerOnRequestOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x25692962),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onRequestOwnershipHandoverFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreRequestOwnershipHandoverFunction {
    function AirSwapV5$preRequestOwnershipHandoverFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreRequestOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x25692962),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preRequestOwnershipHandoverFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnRevokeFunction {
    function AirSwapV5$onRevokeFunction(FunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerOnRevokeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb6549f75),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onRevokeFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreRevokeFunction {
    function AirSwapV5$preRevokeFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreRevokeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xb6549f75),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preRevokeFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSetBonusMaxFunction {
    function AirSwapV5$onSetBonusMaxFunction(FunctionContext memory ctx, AirSwapV5$SetBonusMaxFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSetBonusMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x9cff19e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetBonusMaxFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSetBonusMaxFunction {
    function AirSwapV5$preSetBonusMaxFunction(PreFunctionContext memory ctx, AirSwapV5$SetBonusMaxFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSetBonusMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x9cff19e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSetBonusMaxFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSetBonusScaleFunction {
    function AirSwapV5$onSetBonusScaleFunction(FunctionContext memory ctx, AirSwapV5$SetBonusScaleFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSetBonusScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x6fb30d43),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetBonusScaleFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSetBonusScaleFunction {
    function AirSwapV5$preSetBonusScaleFunction(PreFunctionContext memory ctx, AirSwapV5$SetBonusScaleFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSetBonusScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x6fb30d43),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSetBonusScaleFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSetProtocolFeeFunction {
    function AirSwapV5$onSetProtocolFeeFunction(FunctionContext memory ctx, AirSwapV5$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x787dce3d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSetProtocolFeeFunction {
    function AirSwapV5$preSetProtocolFeeFunction(PreFunctionContext memory ctx, AirSwapV5$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x787dce3d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSetProtocolFeeFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSetProtocolFeeLightFunction {
    function AirSwapV5$onSetProtocolFeeLightFunction(FunctionContext memory ctx, AirSwapV5$SetProtocolFeeLightFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSetProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xbfd4e557),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSetProtocolFeeLightFunction {
    function AirSwapV5$preSetProtocolFeeLightFunction(PreFunctionContext memory ctx, AirSwapV5$SetProtocolFeeLightFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSetProtocolFeeLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xbfd4e557),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSetProtocolFeeLightFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSetProtocolFeeWalletFunction {
    function AirSwapV5$onSetProtocolFeeWalletFunction(FunctionContext memory ctx, AirSwapV5$SetProtocolFeeWalletFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSetProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x7ce78525),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSetProtocolFeeWalletFunction {
    function AirSwapV5$preSetProtocolFeeWalletFunction(PreFunctionContext memory ctx, AirSwapV5$SetProtocolFeeWalletFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSetProtocolFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x7ce78525),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSetProtocolFeeWalletFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSetStakingFunction {
    function AirSwapV5$onSetStakingFunction(FunctionContext memory ctx, AirSwapV5$SetStakingFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSetStakingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x8ff39099),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSetStakingFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSetStakingFunction {
    function AirSwapV5$preSetStakingFunction(PreFunctionContext memory ctx, AirSwapV5$SetStakingFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSetStakingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x8ff39099),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSetStakingFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnStakingTokenFunction {
    function AirSwapV5$onStakingTokenFunction(FunctionContext memory ctx, AirSwapV5$StakingTokenFunctionOutputs memory outputs) virtual external;

    function AirSwapV5$triggerOnStakingTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x72f702f3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onStakingTokenFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreStakingTokenFunction {
    function AirSwapV5$preStakingTokenFunction(PreFunctionContext memory ctx) virtual external;

    function AirSwapV5$triggerPreStakingTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x72f702f3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preStakingTokenFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSwapFunction {
    function AirSwapV5$onSwapFunction(FunctionContext memory ctx, AirSwapV5$SwapFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x98956069),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSwapFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSwapFunction {
    function AirSwapV5$preSwapFunction(PreFunctionContext memory ctx, AirSwapV5$SwapFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x98956069),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSwapFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSwapAnySenderFunction {
    function AirSwapV5$onSwapAnySenderFunction(FunctionContext memory ctx, AirSwapV5$SwapAnySenderFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSwapAnySenderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x3eb1af24),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSwapAnySenderFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSwapAnySenderFunction {
    function AirSwapV5$preSwapAnySenderFunction(PreFunctionContext memory ctx, AirSwapV5$SwapAnySenderFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSwapAnySenderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x3eb1af24),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSwapAnySenderFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnSwapLightFunction {
    function AirSwapV5$onSwapLightFunction(FunctionContext memory ctx, AirSwapV5$SwapLightFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnSwapLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x46e4480d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onSwapLightFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreSwapLightFunction {
    function AirSwapV5$preSwapLightFunction(PreFunctionContext memory ctx, AirSwapV5$SwapLightFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreSwapLightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0x46e4480d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preSwapLightFunction.selector
        });
    }
}

abstract contract AirSwapV5$OnTransferOwnershipFunction {
    function AirSwapV5$onTransferOwnershipFunction(FunctionContext memory ctx, AirSwapV5$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract AirSwapV5$PreTransferOwnershipFunction {
    function AirSwapV5$preTransferOwnershipFunction(PreFunctionContext memory ctx, AirSwapV5$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function AirSwapV5$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AirSwapV5",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AirSwapV5$preTransferOwnershipFunction.selector
        });
    }
}


struct AirSwapV5$EmitAllEvents$Authorize {
  address signer;
  address signerWallet;
}

struct AirSwapV5$EmitAllEvents$Cancel {
  uint256 nonce;
  address signerWallet;
}

struct AirSwapV5$EmitAllEvents$OwnershipHandoverCanceled {
  address pendingOwner;
}

struct AirSwapV5$EmitAllEvents$OwnershipHandoverRequested {
  address pendingOwner;
}

struct AirSwapV5$EmitAllEvents$OwnershipTransferred {
  address oldOwner;
  address newOwner;
}

struct AirSwapV5$EmitAllEvents$Revoke {
  address signer;
  address signerWallet;
}

struct AirSwapV5$EmitAllEvents$SetBonusMax {
  uint256 bonusMax;
}

struct AirSwapV5$EmitAllEvents$SetBonusScale {
  uint256 bonusScale;
}

struct AirSwapV5$EmitAllEvents$SetProtocolFee {
  uint256 protocolFee;
}

struct AirSwapV5$EmitAllEvents$SetProtocolFeeLight {
  uint256 protocolFeeLight;
}

struct AirSwapV5$EmitAllEvents$SetProtocolFeeWallet {
  address feeWallet;
}

struct AirSwapV5$EmitAllEvents$SetStaking {
  address staking;
}

struct AirSwapV5$EmitAllEvents$SwapErc20 {
  uint256 nonce;
  address signerWallet;
}

contract AirSwapV5$EmitAllEvents is
  AirSwapV5$OnAuthorizeEvent,
AirSwapV5$OnCancelEvent,
AirSwapV5$OnOwnershipHandoverCanceledEvent,
AirSwapV5$OnOwnershipHandoverRequestedEvent,
AirSwapV5$OnOwnershipTransferredEvent,
AirSwapV5$OnRevokeEvent,
AirSwapV5$OnSetBonusMaxEvent,
AirSwapV5$OnSetBonusScaleEvent,
AirSwapV5$OnSetProtocolFeeEvent,
AirSwapV5$OnSetProtocolFeeLightEvent,
AirSwapV5$OnSetProtocolFeeWalletEvent,
AirSwapV5$OnSetStakingEvent,
AirSwapV5$OnSwapErc20Event
{
  event Authorize(AirSwapV5$EmitAllEvents$Authorize);
  event Cancel(AirSwapV5$EmitAllEvents$Cancel);
  event OwnershipHandoverCanceled(AirSwapV5$EmitAllEvents$OwnershipHandoverCanceled);
  event OwnershipHandoverRequested(AirSwapV5$EmitAllEvents$OwnershipHandoverRequested);
  event OwnershipTransferred(AirSwapV5$EmitAllEvents$OwnershipTransferred);
  event Revoke(AirSwapV5$EmitAllEvents$Revoke);
  event SetBonusMax(AirSwapV5$EmitAllEvents$SetBonusMax);
  event SetBonusScale(AirSwapV5$EmitAllEvents$SetBonusScale);
  event SetProtocolFee(AirSwapV5$EmitAllEvents$SetProtocolFee);
  event SetProtocolFeeLight(AirSwapV5$EmitAllEvents$SetProtocolFeeLight);
  event SetProtocolFeeWallet(AirSwapV5$EmitAllEvents$SetProtocolFeeWallet);
  event SetStaking(AirSwapV5$EmitAllEvents$SetStaking);
  event SwapErc20(AirSwapV5$EmitAllEvents$SwapErc20);

  function AirSwapV5$onAuthorizeEvent(EventContext memory ctx, AirSwapV5$AuthorizeEventParams memory inputs) virtual external override {
    emit Authorize(AirSwapV5$EmitAllEvents$Authorize(inputs.signer, inputs.signerWallet));
  }
function AirSwapV5$onCancelEvent(EventContext memory ctx, AirSwapV5$CancelEventParams memory inputs) virtual external override {
    emit Cancel(AirSwapV5$EmitAllEvents$Cancel(inputs.nonce, inputs.signerWallet));
  }
function AirSwapV5$onOwnershipHandoverCanceledEvent(EventContext memory ctx, AirSwapV5$OwnershipHandoverCanceledEventParams memory inputs) virtual external override {
    emit OwnershipHandoverCanceled(AirSwapV5$EmitAllEvents$OwnershipHandoverCanceled(inputs.pendingOwner));
  }
function AirSwapV5$onOwnershipHandoverRequestedEvent(EventContext memory ctx, AirSwapV5$OwnershipHandoverRequestedEventParams memory inputs) virtual external override {
    emit OwnershipHandoverRequested(AirSwapV5$EmitAllEvents$OwnershipHandoverRequested(inputs.pendingOwner));
  }
function AirSwapV5$onOwnershipTransferredEvent(EventContext memory ctx, AirSwapV5$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(AirSwapV5$EmitAllEvents$OwnershipTransferred(inputs.oldOwner, inputs.newOwner));
  }
function AirSwapV5$onRevokeEvent(EventContext memory ctx, AirSwapV5$RevokeEventParams memory inputs) virtual external override {
    emit Revoke(AirSwapV5$EmitAllEvents$Revoke(inputs.signer, inputs.signerWallet));
  }
function AirSwapV5$onSetBonusMaxEvent(EventContext memory ctx, AirSwapV5$SetBonusMaxEventParams memory inputs) virtual external override {
    emit SetBonusMax(AirSwapV5$EmitAllEvents$SetBonusMax(inputs.bonusMax));
  }
function AirSwapV5$onSetBonusScaleEvent(EventContext memory ctx, AirSwapV5$SetBonusScaleEventParams memory inputs) virtual external override {
    emit SetBonusScale(AirSwapV5$EmitAllEvents$SetBonusScale(inputs.bonusScale));
  }
function AirSwapV5$onSetProtocolFeeEvent(EventContext memory ctx, AirSwapV5$SetProtocolFeeEventParams memory inputs) virtual external override {
    emit SetProtocolFee(AirSwapV5$EmitAllEvents$SetProtocolFee(inputs.protocolFee));
  }
function AirSwapV5$onSetProtocolFeeLightEvent(EventContext memory ctx, AirSwapV5$SetProtocolFeeLightEventParams memory inputs) virtual external override {
    emit SetProtocolFeeLight(AirSwapV5$EmitAllEvents$SetProtocolFeeLight(inputs.protocolFeeLight));
  }
function AirSwapV5$onSetProtocolFeeWalletEvent(EventContext memory ctx, AirSwapV5$SetProtocolFeeWalletEventParams memory inputs) virtual external override {
    emit SetProtocolFeeWallet(AirSwapV5$EmitAllEvents$SetProtocolFeeWallet(inputs.feeWallet));
  }
function AirSwapV5$onSetStakingEvent(EventContext memory ctx, AirSwapV5$SetStakingEventParams memory inputs) virtual external override {
    emit SetStaking(AirSwapV5$EmitAllEvents$SetStaking(inputs.staking));
  }
function AirSwapV5$onSwapErc20Event(EventContext memory ctx, AirSwapV5$SwapErc20EventParams memory inputs) virtual external override {
    emit SwapErc20(AirSwapV5$EmitAllEvents$SwapErc20(inputs.nonce, inputs.signerWallet));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](13);
    triggers[0] = this.AirSwapV5$triggerOnAuthorizeEvent();
    triggers[1] = this.AirSwapV5$triggerOnCancelEvent();
    triggers[2] = this.AirSwapV5$triggerOnOwnershipHandoverCanceledEvent();
    triggers[3] = this.AirSwapV5$triggerOnOwnershipHandoverRequestedEvent();
    triggers[4] = this.AirSwapV5$triggerOnOwnershipTransferredEvent();
    triggers[5] = this.AirSwapV5$triggerOnRevokeEvent();
    triggers[6] = this.AirSwapV5$triggerOnSetBonusMaxEvent();
    triggers[7] = this.AirSwapV5$triggerOnSetBonusScaleEvent();
    triggers[8] = this.AirSwapV5$triggerOnSetProtocolFeeEvent();
    triggers[9] = this.AirSwapV5$triggerOnSetProtocolFeeLightEvent();
    triggers[10] = this.AirSwapV5$triggerOnSetProtocolFeeWalletEvent();
    triggers[11] = this.AirSwapV5$triggerOnSetStakingEvent();
    triggers[12] = this.AirSwapV5$triggerOnSwapErc20Event();
    return triggers;
  }
}