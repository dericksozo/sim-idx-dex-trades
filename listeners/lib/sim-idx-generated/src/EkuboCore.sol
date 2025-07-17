// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EkuboCore$Abi() pure returns (Abi memory) {
    return Abi("EkuboCore");
}
struct EkuboCore$PoolKey {
    address token0;
    address token1;
    bytes32 config;
}

struct EkuboCore$AccumulateAsFeesFunctionInputs {
    EkuboCore$PoolKey poolKey;
    uint128 amount0;
    uint128 amount1;
}

struct EkuboCore$Bounds {
    int32 lower;
    int32 upper;
}

struct EkuboCore$CollectFeesFunctionInputs {
    EkuboCore$PoolKey poolKey;
    bytes32 salt;
    EkuboCore$Bounds bounds;
}

struct EkuboCore$CollectFeesFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct EkuboCore$CompleteOwnershipHandoverFunctionInputs {
    address pendingOwner;
}

struct EkuboCore$ForwardFunctionInputs {
    address to;
}

struct EkuboCore$GetPoolFeesPerLiquidityInsideFunctionInputs {
    EkuboCore$PoolKey poolKey;
    EkuboCore$Bounds bounds;
}

struct EkuboCore$FeesPerLiquidity {
    uint256 value0;
    uint256 value1;
}

struct EkuboCore$GetPoolFeesPerLiquidityInsideFunctionOutputs {
    EkuboCore$FeesPerLiquidity outArg0;
}

struct EkuboCore$InitializePoolFunctionInputs {
    EkuboCore$PoolKey poolKey;
    int32 tick;
}

struct EkuboCore$InitializePoolFunctionOutputs {
    uint96 sqrtRatio;
}

struct EkuboCore$LoadFunctionInputs {
    address token0;
    address token1;
    bytes32 salt;
    uint128 amount0;
    uint128 amount1;
}

struct EkuboCore$NextInitializedTickFunctionInputs {
    bytes32 poolId;
    int32 fromTick;
    uint32 tickSpacing;
    uint256 skipAhead;
}

struct EkuboCore$NextInitializedTickFunctionOutputs {
    int32 tick;
    bool isInitialized;
}

struct EkuboCore$OwnerFunctionOutputs {
    address result;
}

struct EkuboCore$OwnershipHandoverExpiresAtFunctionInputs {
    address pendingOwner;
}

struct EkuboCore$OwnershipHandoverExpiresAtFunctionOutputs {
    uint256 result;
}

struct EkuboCore$PayFunctionInputs {
    address token;
}

struct EkuboCore$PayFunctionOutputs {
    uint128 payment;
}

struct EkuboCore$PrevInitializedTickFunctionInputs {
    bytes32 poolId;
    int32 fromTick;
    uint32 tickSpacing;
    uint256 skipAhead;
}

struct EkuboCore$PrevInitializedTickFunctionOutputs {
    int32 tick;
    bool isInitialized;
}

struct EkuboCore$CallPoints {
    bool beforeInitializePool;
    bool afterInitializePool;
    bool beforeSwap;
    bool afterSwap;
    bool beforeUpdatePosition;
    bool afterUpdatePosition;
    bool beforeCollectFees;
    bool afterCollectFees;
}

struct EkuboCore$RegisterExtensionFunctionInputs {
    EkuboCore$CallPoints expectedCallPoints;
}

struct EkuboCore$SaveFunctionInputs {
    address owner;
    address token0;
    address token1;
    bytes32 salt;
    uint128 amount0;
    uint128 amount1;
}

struct EkuboCore$Swap611415377FunctionInputs {
    EkuboCore$PoolKey poolKey;
    int128 amount;
    bool isToken1;
    uint96 sqrtRatioLimit;
    uint256 skipAhead;
}

struct EkuboCore$Swap611415377FunctionOutputs {
    int128 delta0;
    int128 delta1;
}

struct EkuboCore$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct EkuboCore$UpdatePositionParameters {
    bytes32 salt;
    EkuboCore$Bounds bounds;
    int128 liquidityDelta;
}

struct EkuboCore$UpdatePositionFunctionInputs {
    EkuboCore$PoolKey poolKey;
    EkuboCore$UpdatePositionParameters params;
}

struct EkuboCore$UpdatePositionFunctionOutputs {
    int128 delta0;
    int128 delta1;
}

struct EkuboCore$WithdrawFunctionInputs {
    address token;
    address recipient;
    uint128 amount;
}

struct EkuboCore$WithdrawProtocolFeesFunctionInputs {
    address recipient;
    address token;
    uint256 amount;
}

struct EkuboCore$ExtensionRegisteredEventParams {
    address extension;
}

struct EkuboCore$FeesAccumulatedEventParams {
    bytes32 poolId;
    uint128 amount0;
    uint128 amount1;
}

struct EkuboCore$OwnershipHandoverCanceledEventParams {
    address pendingOwner;
}

struct EkuboCore$OwnershipHandoverRequestedEventParams {
    address pendingOwner;
}

struct EkuboCore$OwnershipTransferredEventParams {
    address oldOwner;
    address newOwner;
}

struct EkuboCore$PoolInitializedEventParams {
    bytes32 poolId;
    EkuboCore$PoolKey poolKey;
    int32 tick;
    uint96 sqrtRatio;
}

struct EkuboCore$PositionKey {
    bytes32 salt;
    address owner;
    EkuboCore$Bounds bounds;
}

struct EkuboCore$PositionFeesCollectedEventParams {
    bytes32 poolId;
    EkuboCore$PositionKey positionKey;
    uint128 amount0;
    uint128 amount1;
}

struct EkuboCore$PositionUpdatedEventParams {
    address locker;
    bytes32 poolId;
    EkuboCore$UpdatePositionParameters params;
    int128 delta0;
    int128 delta1;
}

struct EkuboCore$ProtocolFeesWithdrawnEventParams {
    address recipient;
    address token;
    uint256 amount;
}

abstract contract EkuboCore$OnExtensionRegisteredEvent {
    function EkuboCore$onExtensionRegisteredEvent(EventContext memory ctx, EkuboCore$ExtensionRegisteredEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnExtensionRegisteredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0xec1256266e470abb868620c851f6bde2a3ff602549dcad318ab9ccfcb2977f14),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onExtensionRegisteredEvent.selector
        });
    }
}

abstract contract EkuboCore$OnFeesAccumulatedEvent {
    function EkuboCore$onFeesAccumulatedEvent(EventContext memory ctx, EkuboCore$FeesAccumulatedEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnFeesAccumulatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0xf7e050d866774820d81a86ca676f3afe7bc72603ee893f82e99c08fbde39af6c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onFeesAccumulatedEvent.selector
        });
    }
}

abstract contract EkuboCore$OnOwnershipHandoverCanceledEvent {
    function EkuboCore$onOwnershipHandoverCanceledEvent(EventContext memory ctx, EkuboCore$OwnershipHandoverCanceledEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnOwnershipHandoverCanceledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0xfa7b8eab7da67f412cc9575ed43464468f9bfbae89d1675917346ca6d8fe3c92),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onOwnershipHandoverCanceledEvent.selector
        });
    }
}

abstract contract EkuboCore$OnOwnershipHandoverRequestedEvent {
    function EkuboCore$onOwnershipHandoverRequestedEvent(EventContext memory ctx, EkuboCore$OwnershipHandoverRequestedEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnOwnershipHandoverRequestedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0xdbf36a107da19e49527a7176a1babf963b4b0ff8cde35ee35d6cd8f1f9ac7e1d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onOwnershipHandoverRequestedEvent.selector
        });
    }
}

abstract contract EkuboCore$OnOwnershipTransferredEvent {
    function EkuboCore$onOwnershipTransferredEvent(EventContext memory ctx, EkuboCore$OwnershipTransferredEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract EkuboCore$OnPoolInitializedEvent {
    function EkuboCore$onPoolInitializedEvent(EventContext memory ctx, EkuboCore$PoolInitializedEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnPoolInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0x5e4688b340694b7c7fd30047fd082117dc46e32acfbf81a44bb1fac0ae65154d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onPoolInitializedEvent.selector
        });
    }
}

abstract contract EkuboCore$OnPositionFeesCollectedEvent {
    function EkuboCore$onPositionFeesCollectedEvent(EventContext memory ctx, EkuboCore$PositionFeesCollectedEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnPositionFeesCollectedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0xbb3992d83c721f12a8f32242e0d21c3613949c6a69d2a35deecdf6943a61c8b2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onPositionFeesCollectedEvent.selector
        });
    }
}

abstract contract EkuboCore$OnPositionUpdatedEvent {
    function EkuboCore$onPositionUpdatedEvent(EventContext memory ctx, EkuboCore$PositionUpdatedEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnPositionUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0xa2d4008be4187c63684f323788e131e1370dbc2205499befe2834005a00c792c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onPositionUpdatedEvent.selector
        });
    }
}

abstract contract EkuboCore$OnProtocolFeesWithdrawnEvent {
    function EkuboCore$onProtocolFeesWithdrawnEvent(EventContext memory ctx, EkuboCore$ProtocolFeesWithdrawnEventParams memory inputs) virtual external;

    function EkuboCore$triggerOnProtocolFeesWithdrawnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes32(0x8fc241308ffc17817e6a8c6a52a8f7cd4931dfca0c539fd35a630311c7e4c57b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onProtocolFeesWithdrawnEvent.selector
        });
    }
}

abstract contract EkuboCore$OnAccumulateAsFeesFunction {
    function EkuboCore$onAccumulateAsFeesFunction(FunctionContext memory ctx, EkuboCore$AccumulateAsFeesFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnAccumulateAsFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xe96404f8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onAccumulateAsFeesFunction.selector
        });
    }
}

abstract contract EkuboCore$PreAccumulateAsFeesFunction {
    function EkuboCore$preAccumulateAsFeesFunction(PreFunctionContext memory ctx, EkuboCore$AccumulateAsFeesFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreAccumulateAsFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xe96404f8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preAccumulateAsFeesFunction.selector
        });
    }
}

abstract contract EkuboCore$OnCancelOwnershipHandoverFunction {
    function EkuboCore$onCancelOwnershipHandoverFunction(FunctionContext memory ctx) virtual external;

    function EkuboCore$triggerOnCancelOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x54d1f13d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onCancelOwnershipHandoverFunction.selector
        });
    }
}

abstract contract EkuboCore$PreCancelOwnershipHandoverFunction {
    function EkuboCore$preCancelOwnershipHandoverFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreCancelOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x54d1f13d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preCancelOwnershipHandoverFunction.selector
        });
    }
}

abstract contract EkuboCore$OnCollectFeesFunction {
    function EkuboCore$onCollectFeesFunction(FunctionContext memory ctx, EkuboCore$CollectFeesFunctionInputs memory inputs, EkuboCore$CollectFeesFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnCollectFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x645ec9b5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onCollectFeesFunction.selector
        });
    }
}

abstract contract EkuboCore$PreCollectFeesFunction {
    function EkuboCore$preCollectFeesFunction(PreFunctionContext memory ctx, EkuboCore$CollectFeesFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreCollectFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x645ec9b5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preCollectFeesFunction.selector
        });
    }
}

abstract contract EkuboCore$OnCompleteOwnershipHandoverFunction {
    function EkuboCore$onCompleteOwnershipHandoverFunction(FunctionContext memory ctx, EkuboCore$CompleteOwnershipHandoverFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnCompleteOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xf04e283e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onCompleteOwnershipHandoverFunction.selector
        });
    }
}

abstract contract EkuboCore$PreCompleteOwnershipHandoverFunction {
    function EkuboCore$preCompleteOwnershipHandoverFunction(PreFunctionContext memory ctx, EkuboCore$CompleteOwnershipHandoverFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreCompleteOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xf04e283e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preCompleteOwnershipHandoverFunction.selector
        });
    }
}

abstract contract EkuboCore$OnForwardFunction {
    function EkuboCore$onForwardFunction(FunctionContext memory ctx, EkuboCore$ForwardFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnForwardFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x101e8952),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onForwardFunction.selector
        });
    }
}

abstract contract EkuboCore$PreForwardFunction {
    function EkuboCore$preForwardFunction(PreFunctionContext memory ctx, EkuboCore$ForwardFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreForwardFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x101e8952),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preForwardFunction.selector
        });
    }
}

abstract contract EkuboCore$OnGetPoolFeesPerLiquidityInsideFunction {
    function EkuboCore$onGetPoolFeesPerLiquidityInsideFunction(FunctionContext memory ctx, EkuboCore$GetPoolFeesPerLiquidityInsideFunctionInputs memory inputs, EkuboCore$GetPoolFeesPerLiquidityInsideFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnGetPoolFeesPerLiquidityInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x05d7e694),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onGetPoolFeesPerLiquidityInsideFunction.selector
        });
    }
}

abstract contract EkuboCore$PreGetPoolFeesPerLiquidityInsideFunction {
    function EkuboCore$preGetPoolFeesPerLiquidityInsideFunction(PreFunctionContext memory ctx, EkuboCore$GetPoolFeesPerLiquidityInsideFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreGetPoolFeesPerLiquidityInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x05d7e694),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preGetPoolFeesPerLiquidityInsideFunction.selector
        });
    }
}

abstract contract EkuboCore$OnInitializePoolFunction {
    function EkuboCore$onInitializePoolFunction(FunctionContext memory ctx, EkuboCore$InitializePoolFunctionInputs memory inputs, EkuboCore$InitializePoolFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnInitializePoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xc0530244),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onInitializePoolFunction.selector
        });
    }
}

abstract contract EkuboCore$PreInitializePoolFunction {
    function EkuboCore$preInitializePoolFunction(PreFunctionContext memory ctx, EkuboCore$InitializePoolFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreInitializePoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xc0530244),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preInitializePoolFunction.selector
        });
    }
}

abstract contract EkuboCore$OnLoadFunction {
    function EkuboCore$onLoadFunction(FunctionContext memory ctx, EkuboCore$LoadFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnLoadFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xacdf754f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onLoadFunction.selector
        });
    }
}

abstract contract EkuboCore$PreLoadFunction {
    function EkuboCore$preLoadFunction(PreFunctionContext memory ctx, EkuboCore$LoadFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreLoadFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xacdf754f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preLoadFunction.selector
        });
    }
}

abstract contract EkuboCore$OnLockFunction {
    function EkuboCore$onLockFunction(FunctionContext memory ctx) virtual external;

    function EkuboCore$triggerOnLockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xf83d08ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onLockFunction.selector
        });
    }
}

abstract contract EkuboCore$PreLockFunction {
    function EkuboCore$preLockFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreLockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xf83d08ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preLockFunction.selector
        });
    }
}

abstract contract EkuboCore$OnNextInitializedTickFunction {
    function EkuboCore$onNextInitializedTickFunction(FunctionContext memory ctx, EkuboCore$NextInitializedTickFunctionInputs memory inputs, EkuboCore$NextInitializedTickFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnNextInitializedTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x66e064a8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onNextInitializedTickFunction.selector
        });
    }
}

abstract contract EkuboCore$PreNextInitializedTickFunction {
    function EkuboCore$preNextInitializedTickFunction(PreFunctionContext memory ctx, EkuboCore$NextInitializedTickFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreNextInitializedTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x66e064a8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preNextInitializedTickFunction.selector
        });
    }
}

abstract contract EkuboCore$OnOwnerFunction {
    function EkuboCore$onOwnerFunction(FunctionContext memory ctx, EkuboCore$OwnerFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onOwnerFunction.selector
        });
    }
}

abstract contract EkuboCore$PreOwnerFunction {
    function EkuboCore$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preOwnerFunction.selector
        });
    }
}

abstract contract EkuboCore$OnOwnershipHandoverExpiresAtFunction {
    function EkuboCore$onOwnershipHandoverExpiresAtFunction(FunctionContext memory ctx, EkuboCore$OwnershipHandoverExpiresAtFunctionInputs memory inputs, EkuboCore$OwnershipHandoverExpiresAtFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnOwnershipHandoverExpiresAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xfee81cf4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onOwnershipHandoverExpiresAtFunction.selector
        });
    }
}

abstract contract EkuboCore$PreOwnershipHandoverExpiresAtFunction {
    function EkuboCore$preOwnershipHandoverExpiresAtFunction(PreFunctionContext memory ctx, EkuboCore$OwnershipHandoverExpiresAtFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreOwnershipHandoverExpiresAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xfee81cf4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preOwnershipHandoverExpiresAtFunction.selector
        });
    }
}

abstract contract EkuboCore$OnPayFunction {
    function EkuboCore$onPayFunction(FunctionContext memory ctx, EkuboCore$PayFunctionInputs memory inputs, EkuboCore$PayFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnPayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x0c11dedd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onPayFunction.selector
        });
    }
}

abstract contract EkuboCore$PrePayFunction {
    function EkuboCore$prePayFunction(PreFunctionContext memory ctx, EkuboCore$PayFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPrePayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x0c11dedd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$prePayFunction.selector
        });
    }
}

abstract contract EkuboCore$OnPrevInitializedTickFunction {
    function EkuboCore$onPrevInitializedTickFunction(FunctionContext memory ctx, EkuboCore$PrevInitializedTickFunctionInputs memory inputs, EkuboCore$PrevInitializedTickFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnPrevInitializedTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x0e7f2639),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onPrevInitializedTickFunction.selector
        });
    }
}

abstract contract EkuboCore$PrePrevInitializedTickFunction {
    function EkuboCore$prePrevInitializedTickFunction(PreFunctionContext memory ctx, EkuboCore$PrevInitializedTickFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPrePrevInitializedTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x0e7f2639),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$prePrevInitializedTickFunction.selector
        });
    }
}

abstract contract EkuboCore$OnRegisterExtensionFunction {
    function EkuboCore$onRegisterExtensionFunction(FunctionContext memory ctx, EkuboCore$RegisterExtensionFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnRegisterExtensionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xde6f935f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onRegisterExtensionFunction.selector
        });
    }
}

abstract contract EkuboCore$PreRegisterExtensionFunction {
    function EkuboCore$preRegisterExtensionFunction(PreFunctionContext memory ctx, EkuboCore$RegisterExtensionFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreRegisterExtensionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xde6f935f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preRegisterExtensionFunction.selector
        });
    }
}

abstract contract EkuboCore$OnRenounceOwnershipFunction {
    function EkuboCore$onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function EkuboCore$triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract EkuboCore$PreRenounceOwnershipFunction {
    function EkuboCore$preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract EkuboCore$OnRequestOwnershipHandoverFunction {
    function EkuboCore$onRequestOwnershipHandoverFunction(FunctionContext memory ctx) virtual external;

    function EkuboCore$triggerOnRequestOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x25692962),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onRequestOwnershipHandoverFunction.selector
        });
    }
}

abstract contract EkuboCore$PreRequestOwnershipHandoverFunction {
    function EkuboCore$preRequestOwnershipHandoverFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreRequestOwnershipHandoverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x25692962),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preRequestOwnershipHandoverFunction.selector
        });
    }
}

abstract contract EkuboCore$OnSaveFunction {
    function EkuboCore$onSaveFunction(FunctionContext memory ctx, EkuboCore$SaveFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnSaveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x624ae7e3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onSaveFunction.selector
        });
    }
}

abstract contract EkuboCore$PreSaveFunction {
    function EkuboCore$preSaveFunction(PreFunctionContext memory ctx, EkuboCore$SaveFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreSaveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x624ae7e3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preSaveFunction.selector
        });
    }
}

abstract contract EkuboCore$OnSloadFunction {
    function EkuboCore$onSloadFunction(FunctionContext memory ctx) virtual external;

    function EkuboCore$triggerOnSloadFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x380eb4e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onSloadFunction.selector
        });
    }
}

abstract contract EkuboCore$PreSloadFunction {
    function EkuboCore$preSloadFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreSloadFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x380eb4e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preSloadFunction.selector
        });
    }
}

abstract contract EkuboCore$OnSwap611415377Function {
    function EkuboCore$onSwap611415377Function(FunctionContext memory ctx, EkuboCore$Swap611415377FunctionInputs memory inputs, EkuboCore$Swap611415377FunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnSwap611415377Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x00000000),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onSwap611415377Function.selector
        });
    }
}

abstract contract EkuboCore$PreSwap611415377Function {
    function EkuboCore$preSwap611415377Function(PreFunctionContext memory ctx, EkuboCore$Swap611415377FunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreSwap611415377Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x00000000),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preSwap611415377Function.selector
        });
    }
}

abstract contract EkuboCore$OnTloadFunction {
    function EkuboCore$onTloadFunction(FunctionContext memory ctx) virtual external;

    function EkuboCore$triggerOnTloadFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xed832830),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onTloadFunction.selector
        });
    }
}

abstract contract EkuboCore$PreTloadFunction {
    function EkuboCore$preTloadFunction(PreFunctionContext memory ctx) virtual external;

    function EkuboCore$triggerPreTloadFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xed832830),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preTloadFunction.selector
        });
    }
}

abstract contract EkuboCore$OnTransferOwnershipFunction {
    function EkuboCore$onTransferOwnershipFunction(FunctionContext memory ctx, EkuboCore$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract EkuboCore$PreTransferOwnershipFunction {
    function EkuboCore$preTransferOwnershipFunction(PreFunctionContext memory ctx, EkuboCore$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract EkuboCore$OnUpdatePositionFunction {
    function EkuboCore$onUpdatePositionFunction(FunctionContext memory ctx, EkuboCore$UpdatePositionFunctionInputs memory inputs, EkuboCore$UpdatePositionFunctionOutputs memory outputs) virtual external;

    function EkuboCore$triggerOnUpdatePositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x55f48d01),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onUpdatePositionFunction.selector
        });
    }
}

abstract contract EkuboCore$PreUpdatePositionFunction {
    function EkuboCore$preUpdatePositionFunction(PreFunctionContext memory ctx, EkuboCore$UpdatePositionFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreUpdatePositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x55f48d01),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preUpdatePositionFunction.selector
        });
    }
}

abstract contract EkuboCore$OnWithdrawFunction {
    function EkuboCore$onWithdrawFunction(FunctionContext memory ctx, EkuboCore$WithdrawFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x03a65ab6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onWithdrawFunction.selector
        });
    }
}

abstract contract EkuboCore$PreWithdrawFunction {
    function EkuboCore$preWithdrawFunction(PreFunctionContext memory ctx, EkuboCore$WithdrawFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x03a65ab6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preWithdrawFunction.selector
        });
    }
}

abstract contract EkuboCore$OnWithdrawProtocolFeesFunction {
    function EkuboCore$onWithdrawProtocolFeesFunction(FunctionContext memory ctx, EkuboCore$WithdrawProtocolFeesFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerOnWithdrawProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x3d512514),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$onWithdrawProtocolFeesFunction.selector
        });
    }
}

abstract contract EkuboCore$PreWithdrawProtocolFeesFunction {
    function EkuboCore$preWithdrawProtocolFeesFunction(PreFunctionContext memory ctx, EkuboCore$WithdrawProtocolFeesFunctionInputs memory inputs) virtual external;

    function EkuboCore$triggerPreWithdrawProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EkuboCore",
            selector: bytes4(0x3d512514),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EkuboCore$preWithdrawProtocolFeesFunction.selector
        });
    }
}

contract EkuboCore$EmitAllEvents is
  EkuboCore$OnExtensionRegisteredEvent,
EkuboCore$OnFeesAccumulatedEvent,
EkuboCore$OnOwnershipHandoverCanceledEvent,
EkuboCore$OnOwnershipHandoverRequestedEvent,
EkuboCore$OnOwnershipTransferredEvent,
EkuboCore$OnPoolInitializedEvent,
EkuboCore$OnPositionFeesCollectedEvent,
EkuboCore$OnPositionUpdatedEvent,
EkuboCore$OnProtocolFeesWithdrawnEvent
{
  event ExtensionRegistered(address extension);
event FeesAccumulated(bytes32 poolId, uint128 amount0, uint128 amount1);
event OwnershipHandoverCanceled(address pendingOwner);
event OwnershipHandoverRequested(address pendingOwner);
event OwnershipTransferred(address oldOwner, address newOwner);
event PoolInitialized(bytes32 poolId, EkuboCore$PoolKey poolKey, int32 tick, uint96 sqrtRatio);
event PositionFeesCollected(bytes32 poolId, EkuboCore$PositionKey positionKey, uint128 amount0, uint128 amount1);
event PositionUpdated(address locker, bytes32 poolId, EkuboCore$UpdatePositionParameters params, int128 delta0, int128 delta1);
event ProtocolFeesWithdrawn(address recipient, address token, uint256 amount);

  function EkuboCore$onExtensionRegisteredEvent(EventContext memory ctx, EkuboCore$ExtensionRegisteredEventParams memory inputs) virtual external override {
    emit ExtensionRegistered(inputs.extension);
  }
function EkuboCore$onFeesAccumulatedEvent(EventContext memory ctx, EkuboCore$FeesAccumulatedEventParams memory inputs) virtual external override {
    emit FeesAccumulated(inputs.poolId, inputs.amount0, inputs.amount1);
  }
function EkuboCore$onOwnershipHandoverCanceledEvent(EventContext memory ctx, EkuboCore$OwnershipHandoverCanceledEventParams memory inputs) virtual external override {
    emit OwnershipHandoverCanceled(inputs.pendingOwner);
  }
function EkuboCore$onOwnershipHandoverRequestedEvent(EventContext memory ctx, EkuboCore$OwnershipHandoverRequestedEventParams memory inputs) virtual external override {
    emit OwnershipHandoverRequested(inputs.pendingOwner);
  }
function EkuboCore$onOwnershipTransferredEvent(EventContext memory ctx, EkuboCore$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(inputs.oldOwner, inputs.newOwner);
  }
function EkuboCore$onPoolInitializedEvent(EventContext memory ctx, EkuboCore$PoolInitializedEventParams memory inputs) virtual external override {
    emit PoolInitialized(inputs.poolId, inputs.poolKey, inputs.tick, inputs.sqrtRatio);
  }
function EkuboCore$onPositionFeesCollectedEvent(EventContext memory ctx, EkuboCore$PositionFeesCollectedEventParams memory inputs) virtual external override {
    emit PositionFeesCollected(inputs.poolId, inputs.positionKey, inputs.amount0, inputs.amount1);
  }
function EkuboCore$onPositionUpdatedEvent(EventContext memory ctx, EkuboCore$PositionUpdatedEventParams memory inputs) virtual external override {
    emit PositionUpdated(inputs.locker, inputs.poolId, inputs.params, inputs.delta0, inputs.delta1);
  }
function EkuboCore$onProtocolFeesWithdrawnEvent(EventContext memory ctx, EkuboCore$ProtocolFeesWithdrawnEventParams memory inputs) virtual external override {
    emit ProtocolFeesWithdrawn(inputs.recipient, inputs.token, inputs.amount);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](9);
    triggers[0] = this.EkuboCore$triggerOnExtensionRegisteredEvent();
    triggers[1] = this.EkuboCore$triggerOnFeesAccumulatedEvent();
    triggers[2] = this.EkuboCore$triggerOnOwnershipHandoverCanceledEvent();
    triggers[3] = this.EkuboCore$triggerOnOwnershipHandoverRequestedEvent();
    triggers[4] = this.EkuboCore$triggerOnOwnershipTransferredEvent();
    triggers[5] = this.EkuboCore$triggerOnPoolInitializedEvent();
    triggers[6] = this.EkuboCore$triggerOnPositionFeesCollectedEvent();
    triggers[7] = this.EkuboCore$triggerOnPositionUpdatedEvent();
    triggers[8] = this.EkuboCore$triggerOnProtocolFeesWithdrawnEvent();
    return triggers;
  }
}