// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function BalancerV3Vault$Abi() pure returns (Abi memory) {
    return Abi("BalancerV3Vault");
}
struct BalancerV3Vault$AddLiquidityParams {
    address pool;
    address to;
    uint256[] maxAmountsIn;
    uint256 minBptAmountOut;
    uint8 kind;
    bytes userData;
}

struct BalancerV3Vault$AddLiquidityFunctionInputs {
    BalancerV3Vault$AddLiquidityParams params;
}

struct BalancerV3Vault$AddLiquidityFunctionOutputs {
    uint256[] amountsIn;
    uint256 bptAmountOut;
    bytes returnData;
}

struct BalancerV3Vault$BufferWrapOrUnwrapParams {
    uint8 kind;
    uint8 direction;
    address wrappedToken;
    uint256 amountGivenRaw;
    uint256 limitRaw;
}

struct BalancerV3Vault$Erc4626BufferWrapOrUnwrapFunctionInputs {
    BalancerV3Vault$BufferWrapOrUnwrapParams params;
}

struct BalancerV3Vault$Erc4626BufferWrapOrUnwrapFunctionOutputs {
    uint256 amountCalculatedRaw;
    uint256 amountInRaw;
    uint256 amountOutRaw;
}

struct BalancerV3Vault$GetPoolTokenCountAndIndexOfTokenFunctionInputs {
    address pool;
    address token;
}

struct BalancerV3Vault$GetPoolTokenCountAndIndexOfTokenFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct BalancerV3Vault$GetVaultExtensionFunctionOutputs {
    address outArg0;
}

struct BalancerV3Vault$ReentrancyGuardEnteredFunctionOutputs {
    bool outArg0;
}

struct BalancerV3Vault$RemoveLiquidityParams {
    address pool;
    address from;
    uint256 maxBptAmountIn;
    uint256[] minAmountsOut;
    uint8 kind;
    bytes userData;
}

struct BalancerV3Vault$RemoveLiquidityFunctionInputs {
    BalancerV3Vault$RemoveLiquidityParams params;
}

struct BalancerV3Vault$RemoveLiquidityFunctionOutputs {
    uint256 bptAmountIn;
    uint256[] amountsOut;
    bytes returnData;
}

struct BalancerV3Vault$SendToFunctionInputs {
    address token;
    address to;
    uint256 amount;
}

struct BalancerV3Vault$SettleFunctionInputs {
    address token;
    uint256 amountHint;
}

struct BalancerV3Vault$SettleFunctionOutputs {
    uint256 credit;
}

struct BalancerV3Vault$VaultSwapParams {
    uint8 kind;
    address pool;
    address tokenIn;
    address tokenOut;
    uint256 amountGivenRaw;
    uint256 limitRaw;
    bytes userData;
}

struct BalancerV3Vault$SwapFunctionInputs {
    BalancerV3Vault$VaultSwapParams vaultSwapParams;
}

struct BalancerV3Vault$SwapFunctionOutputs {
    uint256 amountCalculated;
    uint256 amountIn;
    uint256 amountOut;
}

struct BalancerV3Vault$TransferFunctionInputs {
    address owner;
    address to;
    uint256 amount;
}

struct BalancerV3Vault$TransferFunctionOutputs {
    bool outArg0;
}

struct BalancerV3Vault$TransferFromFunctionInputs {
    address spender;
    address from;
    address to;
    uint256 amount;
}

struct BalancerV3Vault$TransferFromFunctionOutputs {
    bool outArg0;
}

struct BalancerV3Vault$UnlockFunctionInputs {
    bytes data;
}

struct BalancerV3Vault$UnlockFunctionOutputs {
    bytes result;
}

struct BalancerV3Vault$AggregateSwapFeePercentageChangedEventParams {
    address pool;
    uint256 aggregateSwapFeePercentage;
}

struct BalancerV3Vault$AggregateYieldFeePercentageChangedEventParams {
    address pool;
    uint256 aggregateYieldFeePercentage;
}

struct BalancerV3Vault$ApprovalEventParams {
    address pool;
    address owner;
    address spender;
    uint256 value;
}

struct BalancerV3Vault$AuthorizerChangedEventParams {
    address newAuthorizer;
}

struct BalancerV3Vault$BufferSharesBurnedEventParams {
    address wrappedToken;
    address from;
    uint256 burnedShares;
}

struct BalancerV3Vault$BufferSharesMintedEventParams {
    address wrappedToken;
    address to;
    uint256 issuedShares;
}

struct BalancerV3Vault$LiquidityAddedEventParams {
    address pool;
    address liquidityProvider;
    uint8 kind;
    uint256 totalSupply;
    uint256[] amountsAddedRaw;
    uint256[] swapFeeAmountsRaw;
}

struct BalancerV3Vault$LiquidityAddedToBufferEventParams {
    address wrappedToken;
    uint256 amountUnderlying;
    uint256 amountWrapped;
    bytes32 bufferBalances;
}

struct BalancerV3Vault$LiquidityRemovedEventParams {
    address pool;
    address liquidityProvider;
    uint8 kind;
    uint256 totalSupply;
    uint256[] amountsRemovedRaw;
    uint256[] swapFeeAmountsRaw;
}

struct BalancerV3Vault$LiquidityRemovedFromBufferEventParams {
    address wrappedToken;
    uint256 amountUnderlying;
    uint256 amountWrapped;
    bytes32 bufferBalances;
}

struct BalancerV3Vault$PoolInitializedEventParams {
    address pool;
}

struct BalancerV3Vault$PoolPausedStateChangedEventParams {
    address pool;
    bool paused;
}

struct BalancerV3Vault$PoolRecoveryModeStateChangedEventParams {
    address pool;
    bool recoveryMode;
}

struct BalancerV3Vault$TokenConfig {
    address token;
    uint8 tokenType;
    address rateProvider;
    bool paysYieldFees;
}

struct BalancerV3Vault$PoolRoleAccounts {
    address pauseManager;
    address swapFeeManager;
    address poolCreator;
}

struct BalancerV3Vault$HooksConfig {
    bool enableHookAdjustedAmounts;
    bool shouldCallBeforeInitialize;
    bool shouldCallAfterInitialize;
    bool shouldCallComputeDynamicSwapFee;
    bool shouldCallBeforeSwap;
    bool shouldCallAfterSwap;
    bool shouldCallBeforeAddLiquidity;
    bool shouldCallAfterAddLiquidity;
    bool shouldCallBeforeRemoveLiquidity;
    bool shouldCallAfterRemoveLiquidity;
    address hooksContract;
}

struct BalancerV3Vault$LiquidityManagement {
    bool disableUnbalancedLiquidity;
    bool enableAddLiquidityCustom;
    bool enableRemoveLiquidityCustom;
    bool enableDonation;
}

struct BalancerV3Vault$PoolRegisteredEventParams {
    address pool;
    address factory;
    BalancerV3Vault$TokenConfig[] tokenConfig;
    uint256 swapFeePercentage;
    uint32 pauseWindowEndTime;
    BalancerV3Vault$PoolRoleAccounts roleAccounts;
    BalancerV3Vault$HooksConfig hooksConfig;
    BalancerV3Vault$LiquidityManagement liquidityManagement;
}

struct BalancerV3Vault$ProtocolFeeControllerChangedEventParams {
    address newProtocolFeeController;
}

struct BalancerV3Vault$SwapEventParams {
    address pool;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 amountOut;
    uint256 swapFeePercentage;
    uint256 swapFeeAmount;
}

struct BalancerV3Vault$SwapFeePercentageChangedEventParams {
    address pool;
    uint256 swapFeePercentage;
}

struct BalancerV3Vault$TransferEventParams {
    address pool;
    address from;
    address to;
    uint256 value;
}

struct BalancerV3Vault$UnwrapEventParams {
    address wrappedToken;
    uint256 burnedShares;
    uint256 withdrawnUnderlying;
    bytes32 bufferBalances;
}

struct BalancerV3Vault$VaultAuxiliaryEventParams {
    address pool;
    bytes32 eventKey;
    bytes eventData;
}

struct BalancerV3Vault$VaultBuffersPausedStateChangedEventParams {
    bool paused;
}

struct BalancerV3Vault$VaultPausedStateChangedEventParams {
    bool paused;
}

struct BalancerV3Vault$WrapEventParams {
    address wrappedToken;
    uint256 depositedUnderlying;
    uint256 mintedShares;
    bytes32 bufferBalances;
}

abstract contract BalancerV3Vault$OnAggregateSwapFeePercentageChangedEvent {
    function BalancerV3Vault$onAggregateSwapFeePercentageChangedEvent(EventContext memory ctx, BalancerV3Vault$AggregateSwapFeePercentageChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnAggregateSwapFeePercentageChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xe4d371097beea42453a37406e2aef4c04f3c548f84ac50e72578662c0dcd7354),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onAggregateSwapFeePercentageChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnAggregateYieldFeePercentageChangedEvent {
    function BalancerV3Vault$onAggregateYieldFeePercentageChangedEvent(EventContext memory ctx, BalancerV3Vault$AggregateYieldFeePercentageChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnAggregateYieldFeePercentageChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x606eb97d83164bd6b200d638cd49c14c65d94d4f2c674cfd85e24e0e202c3ca5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onAggregateYieldFeePercentageChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnApprovalEvent {
    function BalancerV3Vault$onApprovalEvent(EventContext memory ctx, BalancerV3Vault$ApprovalEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xa0175360a15bca328baf7ea85c7b784d58b222a50d0ce760b10dba336d226a61),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onApprovalEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnAuthorizerChangedEvent {
    function BalancerV3Vault$onAuthorizerChangedEvent(EventContext memory ctx, BalancerV3Vault$AuthorizerChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnAuthorizerChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x94b979b6831a51293e2641426f97747feed46f17779fed9cd18d1ecefcfe92ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onAuthorizerChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnBufferSharesBurnedEvent {
    function BalancerV3Vault$onBufferSharesBurnedEvent(EventContext memory ctx, BalancerV3Vault$BufferSharesBurnedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnBufferSharesBurnedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x4e09f7f7fc37ce2897800e2c2a9099565edb0a133d19d84a6871b3530af8846b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onBufferSharesBurnedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnBufferSharesMintedEvent {
    function BalancerV3Vault$onBufferSharesMintedEvent(EventContext memory ctx, BalancerV3Vault$BufferSharesMintedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnBufferSharesMintedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xd66f031d33381c6408f0b32c884461e5de3df8808399b6f3a3d86b1368f8ec34),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onBufferSharesMintedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnLiquidityAddedEvent {
    function BalancerV3Vault$onLiquidityAddedEvent(EventContext memory ctx, BalancerV3Vault$LiquidityAddedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnLiquidityAddedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xa26a52d8d53702bba7f137907b8e1f99ff87f6d450144270ca25e72481cca871),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onLiquidityAddedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnLiquidityAddedToBufferEvent {
    function BalancerV3Vault$onLiquidityAddedToBufferEvent(EventContext memory ctx, BalancerV3Vault$LiquidityAddedToBufferEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnLiquidityAddedToBufferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x75c4dc5f23640eeba7d404d9165f515fc3d9e23a5c8b6e2d09b4b9da56ff00a9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onLiquidityAddedToBufferEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnLiquidityRemovedEvent {
    function BalancerV3Vault$onLiquidityRemovedEvent(EventContext memory ctx, BalancerV3Vault$LiquidityRemovedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnLiquidityRemovedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xfbe5b0d79fb94f1e81c0a92bf86ae9d3a19e9d1bf6202c0d3e75120f65d5d8a5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onLiquidityRemovedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnLiquidityRemovedFromBufferEvent {
    function BalancerV3Vault$onLiquidityRemovedFromBufferEvent(EventContext memory ctx, BalancerV3Vault$LiquidityRemovedFromBufferEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnLiquidityRemovedFromBufferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x44d97b36e99b590b3d2875aad3b167b1d7fb1e063f3f1325a1eeac76caee5113),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onLiquidityRemovedFromBufferEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnPoolInitializedEvent {
    function BalancerV3Vault$onPoolInitializedEvent(EventContext memory ctx, BalancerV3Vault$PoolInitializedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnPoolInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xcad8c9d32507393b6508ca4a888b81979919b477510585bde8488f153072d6f3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onPoolInitializedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnPoolPausedStateChangedEvent {
    function BalancerV3Vault$onPoolPausedStateChangedEvent(EventContext memory ctx, BalancerV3Vault$PoolPausedStateChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnPoolPausedStateChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x57e20448028297190122571be7cb6c1b1ef85730c673f7c72f533c8662419aa7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onPoolPausedStateChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnPoolRecoveryModeStateChangedEvent {
    function BalancerV3Vault$onPoolRecoveryModeStateChangedEvent(EventContext memory ctx, BalancerV3Vault$PoolRecoveryModeStateChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnPoolRecoveryModeStateChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xc2354cc2f78ea57777e55ddd43a7f22b112ce98868596880edaeb22b4f9c73a9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onPoolRecoveryModeStateChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnPoolRegisteredEvent {
    function BalancerV3Vault$onPoolRegisteredEvent(EventContext memory ctx, BalancerV3Vault$PoolRegisteredEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnPoolRegisteredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xbc1561eeab9f40962e2fb827a7ff9c7cdb47a9d7c84caeefa4ed90e043842dad),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onPoolRegisteredEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnProtocolFeeControllerChangedEvent {
    function BalancerV3Vault$onProtocolFeeControllerChangedEvent(EventContext memory ctx, BalancerV3Vault$ProtocolFeeControllerChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnProtocolFeeControllerChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x280a60b1e63c1774d397d35cce80eb80e51408ead755fb446e6f744ce98e5df0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onProtocolFeeControllerChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnSwapEvent {
    function BalancerV3Vault$onSwapEvent(EventContext memory ctx, BalancerV3Vault$SwapEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x0874b2d545cb271cdbda4e093020c452328b24af12382ed62c4d00f5c26709db),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onSwapEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnSwapFeePercentageChangedEvent {
    function BalancerV3Vault$onSwapFeePercentageChangedEvent(EventContext memory ctx, BalancerV3Vault$SwapFeePercentageChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnSwapFeePercentageChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x89d41522342fabac1471ca6073a5623e5caf367b03ca6e9a001478d0cf8be4a1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onSwapFeePercentageChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnTransferEvent {
    function BalancerV3Vault$onTransferEvent(EventContext memory ctx, BalancerV3Vault$TransferEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xd1398bee19313d6bf672ccb116e51f4a1a947e91c757907f51fbb5b5e56c698f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onTransferEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnUnwrapEvent {
    function BalancerV3Vault$onUnwrapEvent(EventContext memory ctx, BalancerV3Vault$UnwrapEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnUnwrapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xeeb740c90bf2b18c9532eb7d473137767036d893dff3e009f32718f821b2a4c0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onUnwrapEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnVaultAuxiliaryEvent {
    function BalancerV3Vault$onVaultAuxiliaryEvent(EventContext memory ctx, BalancerV3Vault$VaultAuxiliaryEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnVaultAuxiliaryEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x4bc4412e210115456903c65b5277d299a505e79f2eb852b92b1ca52d85856428),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onVaultAuxiliaryEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnVaultBuffersPausedStateChangedEvent {
    function BalancerV3Vault$onVaultBuffersPausedStateChangedEvent(EventContext memory ctx, BalancerV3Vault$VaultBuffersPausedStateChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnVaultBuffersPausedStateChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x300c7ca619eb846386aa0a6e5916ac2a41406448b0a2e99ba9ccafeb899015a5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onVaultBuffersPausedStateChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnVaultPausedStateChangedEvent {
    function BalancerV3Vault$onVaultPausedStateChangedEvent(EventContext memory ctx, BalancerV3Vault$VaultPausedStateChangedEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnVaultPausedStateChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xe0629fe656e45ad7fd63a24b899da368690024c07043b88e57aee5095b1d3d02),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onVaultPausedStateChangedEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnVaultQueriesDisabledEvent {
    function BalancerV3Vault$onVaultQueriesDisabledEvent(EventContext memory ctx) virtual external;

    function BalancerV3Vault$triggerOnVaultQueriesDisabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0xbd204090fd387f08e3076528bf09b4fc99d8100d749eace96c06002d3fedc625),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onVaultQueriesDisabledEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnVaultQueriesEnabledEvent {
    function BalancerV3Vault$onVaultQueriesEnabledEvent(EventContext memory ctx) virtual external;

    function BalancerV3Vault$triggerOnVaultQueriesEnabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x91d7478835f2b5adc315f5aad920f4a7f0a02f7fddf3042d17b2c80168ea17f5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onVaultQueriesEnabledEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnWrapEvent {
    function BalancerV3Vault$onWrapEvent(EventContext memory ctx, BalancerV3Vault$WrapEventParams memory inputs) virtual external;

    function BalancerV3Vault$triggerOnWrapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes32(0x3771d13c67011e31e12031c54bb59b0bf544a80b81d280a3711e172aa8b7f47b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onWrapEvent.selector
        });
    }
}

abstract contract BalancerV3Vault$OnAddLiquidityFunction {
    function BalancerV3Vault$onAddLiquidityFunction(FunctionContext memory ctx, BalancerV3Vault$AddLiquidityFunctionInputs memory inputs, BalancerV3Vault$AddLiquidityFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x4af29ec4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onAddLiquidityFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreAddLiquidityFunction {
    function BalancerV3Vault$preAddLiquidityFunction(PreFunctionContext memory ctx, BalancerV3Vault$AddLiquidityFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x4af29ec4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preAddLiquidityFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnErc4626BufferWrapOrUnwrapFunction {
    function BalancerV3Vault$onErc4626BufferWrapOrUnwrapFunction(FunctionContext memory ctx, BalancerV3Vault$Erc4626BufferWrapOrUnwrapFunctionInputs memory inputs, BalancerV3Vault$Erc4626BufferWrapOrUnwrapFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnErc4626BufferWrapOrUnwrapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x43583be5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onErc4626BufferWrapOrUnwrapFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreErc4626BufferWrapOrUnwrapFunction {
    function BalancerV3Vault$preErc4626BufferWrapOrUnwrapFunction(PreFunctionContext memory ctx, BalancerV3Vault$Erc4626BufferWrapOrUnwrapFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreErc4626BufferWrapOrUnwrapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x43583be5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preErc4626BufferWrapOrUnwrapFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnGetPoolTokenCountAndIndexOfTokenFunction {
    function BalancerV3Vault$onGetPoolTokenCountAndIndexOfTokenFunction(FunctionContext memory ctx, BalancerV3Vault$GetPoolTokenCountAndIndexOfTokenFunctionInputs memory inputs, BalancerV3Vault$GetPoolTokenCountAndIndexOfTokenFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnGetPoolTokenCountAndIndexOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xc9c1661b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onGetPoolTokenCountAndIndexOfTokenFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreGetPoolTokenCountAndIndexOfTokenFunction {
    function BalancerV3Vault$preGetPoolTokenCountAndIndexOfTokenFunction(PreFunctionContext memory ctx, BalancerV3Vault$GetPoolTokenCountAndIndexOfTokenFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreGetPoolTokenCountAndIndexOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xc9c1661b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preGetPoolTokenCountAndIndexOfTokenFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnGetVaultExtensionFunction {
    function BalancerV3Vault$onGetVaultExtensionFunction(FunctionContext memory ctx, BalancerV3Vault$GetVaultExtensionFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnGetVaultExtensionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xb9a8effa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onGetVaultExtensionFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreGetVaultExtensionFunction {
    function BalancerV3Vault$preGetVaultExtensionFunction(PreFunctionContext memory ctx) virtual external;

    function BalancerV3Vault$triggerPreGetVaultExtensionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xb9a8effa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preGetVaultExtensionFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnReentrancyGuardEnteredFunction {
    function BalancerV3Vault$onReentrancyGuardEnteredFunction(FunctionContext memory ctx, BalancerV3Vault$ReentrancyGuardEnteredFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnReentrancyGuardEnteredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xd2c725e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onReentrancyGuardEnteredFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreReentrancyGuardEnteredFunction {
    function BalancerV3Vault$preReentrancyGuardEnteredFunction(PreFunctionContext memory ctx) virtual external;

    function BalancerV3Vault$triggerPreReentrancyGuardEnteredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xd2c725e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preReentrancyGuardEnteredFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnRemoveLiquidityFunction {
    function BalancerV3Vault$onRemoveLiquidityFunction(FunctionContext memory ctx, BalancerV3Vault$RemoveLiquidityFunctionInputs memory inputs, BalancerV3Vault$RemoveLiquidityFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x21457897),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onRemoveLiquidityFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreRemoveLiquidityFunction {
    function BalancerV3Vault$preRemoveLiquidityFunction(PreFunctionContext memory ctx, BalancerV3Vault$RemoveLiquidityFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x21457897),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preRemoveLiquidityFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnSendToFunction {
    function BalancerV3Vault$onSendToFunction(FunctionContext memory ctx, BalancerV3Vault$SendToFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerOnSendToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xae639329),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onSendToFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreSendToFunction {
    function BalancerV3Vault$preSendToFunction(PreFunctionContext memory ctx, BalancerV3Vault$SendToFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreSendToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xae639329),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preSendToFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnSettleFunction {
    function BalancerV3Vault$onSettleFunction(FunctionContext memory ctx, BalancerV3Vault$SettleFunctionInputs memory inputs, BalancerV3Vault$SettleFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x15afd409),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onSettleFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreSettleFunction {
    function BalancerV3Vault$preSettleFunction(PreFunctionContext memory ctx, BalancerV3Vault$SettleFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x15afd409),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preSettleFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnSwapFunction {
    function BalancerV3Vault$onSwapFunction(FunctionContext memory ctx, BalancerV3Vault$SwapFunctionInputs memory inputs, BalancerV3Vault$SwapFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x2bfb780c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onSwapFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreSwapFunction {
    function BalancerV3Vault$preSwapFunction(PreFunctionContext memory ctx, BalancerV3Vault$SwapFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x2bfb780c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preSwapFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnTransferFunction {
    function BalancerV3Vault$onTransferFunction(FunctionContext memory ctx, BalancerV3Vault$TransferFunctionInputs memory inputs, BalancerV3Vault$TransferFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xbeabacc8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onTransferFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreTransferFunction {
    function BalancerV3Vault$preTransferFunction(PreFunctionContext memory ctx, BalancerV3Vault$TransferFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0xbeabacc8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preTransferFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnTransferFromFunction {
    function BalancerV3Vault$onTransferFromFunction(FunctionContext memory ctx, BalancerV3Vault$TransferFromFunctionInputs memory inputs, BalancerV3Vault$TransferFromFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x15dacbea),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onTransferFromFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreTransferFromFunction {
    function BalancerV3Vault$preTransferFromFunction(PreFunctionContext memory ctx, BalancerV3Vault$TransferFromFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x15dacbea),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preTransferFromFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$OnUnlockFunction {
    function BalancerV3Vault$onUnlockFunction(FunctionContext memory ctx, BalancerV3Vault$UnlockFunctionInputs memory inputs, BalancerV3Vault$UnlockFunctionOutputs memory outputs) virtual external;

    function BalancerV3Vault$triggerOnUnlockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x48c89491),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$onUnlockFunction.selector
        });
    }
}

abstract contract BalancerV3Vault$PreUnlockFunction {
    function BalancerV3Vault$preUnlockFunction(PreFunctionContext memory ctx, BalancerV3Vault$UnlockFunctionInputs memory inputs) virtual external;

    function BalancerV3Vault$triggerPreUnlockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BalancerV3Vault",
            selector: bytes4(0x48c89491),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BalancerV3Vault$preUnlockFunction.selector
        });
    }
}


struct BalancerV3Vault$EmitAllEvents$AggregateSwapFeePercentageChanged {
  address pool;
  uint256 aggregateSwapFeePercentage;
}

struct BalancerV3Vault$EmitAllEvents$AggregateYieldFeePercentageChanged {
  address pool;
  uint256 aggregateYieldFeePercentage;
}

struct BalancerV3Vault$EmitAllEvents$Approval {
  address pool;
  address owner;
  address spender;
  uint256 value;
}

struct BalancerV3Vault$EmitAllEvents$AuthorizerChanged {
  address newAuthorizer;
}

struct BalancerV3Vault$EmitAllEvents$BufferSharesBurned {
  address wrappedToken;
  address from;
  uint256 burnedShares;
}

struct BalancerV3Vault$EmitAllEvents$BufferSharesMinted {
  address wrappedToken;
  address to;
  uint256 issuedShares;
}

struct BalancerV3Vault$EmitAllEvents$LiquidityAdded {
  address pool;
  address liquidityProvider;
  uint8 kind;
  uint256 totalSupply;
  uint256[] amountsAddedRaw;
  uint256[] swapFeeAmountsRaw;
}

struct BalancerV3Vault$EmitAllEvents$LiquidityAddedToBuffer {
  address wrappedToken;
  uint256 amountUnderlying;
  uint256 amountWrapped;
  bytes32 bufferBalances;
}

struct BalancerV3Vault$EmitAllEvents$LiquidityRemoved {
  address pool;
  address liquidityProvider;
  uint8 kind;
  uint256 totalSupply;
  uint256[] amountsRemovedRaw;
  uint256[] swapFeeAmountsRaw;
}

struct BalancerV3Vault$EmitAllEvents$LiquidityRemovedFromBuffer {
  address wrappedToken;
  uint256 amountUnderlying;
  uint256 amountWrapped;
  bytes32 bufferBalances;
}

struct BalancerV3Vault$EmitAllEvents$PoolInitialized {
  address pool;
}

struct BalancerV3Vault$EmitAllEvents$PoolPausedStateChanged {
  address pool;
  bool paused;
}

struct BalancerV3Vault$EmitAllEvents$PoolRecoveryModeStateChanged {
  address pool;
  bool recoveryMode;
}

struct BalancerV3Vault$EmitAllEvents$PoolRegistered {
  address pool;
  address factory;
  BalancerV3Vault$TokenConfig[] tokenConfig;
  uint256 swapFeePercentage;
  uint32 pauseWindowEndTime;
  BalancerV3Vault$PoolRoleAccounts roleAccounts;
  BalancerV3Vault$HooksConfig hooksConfig;
  BalancerV3Vault$LiquidityManagement liquidityManagement;
}

struct BalancerV3Vault$EmitAllEvents$ProtocolFeeControllerChanged {
  address newProtocolFeeController;
}

struct BalancerV3Vault$EmitAllEvents$Swap {
  address pool;
  address tokenIn;
  address tokenOut;
  uint256 amountIn;
  uint256 amountOut;
  uint256 swapFeePercentage;
  uint256 swapFeeAmount;
}

struct BalancerV3Vault$EmitAllEvents$SwapFeePercentageChanged {
  address pool;
  uint256 swapFeePercentage;
}

struct BalancerV3Vault$EmitAllEvents$Transfer {
  address pool;
  address from;
  address to;
  uint256 value;
}

struct BalancerV3Vault$EmitAllEvents$Unwrap {
  address wrappedToken;
  uint256 burnedShares;
  uint256 withdrawnUnderlying;
  bytes32 bufferBalances;
}

struct BalancerV3Vault$EmitAllEvents$VaultAuxiliary {
  address pool;
  bytes32 eventKey;
  bytes eventData;
}

struct BalancerV3Vault$EmitAllEvents$VaultBuffersPausedStateChanged {
  bool paused;
}

struct BalancerV3Vault$EmitAllEvents$VaultPausedStateChanged {
  bool paused;
}

struct BalancerV3Vault$EmitAllEvents$Wrap {
  address wrappedToken;
  uint256 depositedUnderlying;
  uint256 mintedShares;
  bytes32 bufferBalances;
}

contract BalancerV3Vault$EmitAllEvents is
  BalancerV3Vault$OnAggregateSwapFeePercentageChangedEvent,
BalancerV3Vault$OnAggregateYieldFeePercentageChangedEvent,
BalancerV3Vault$OnApprovalEvent,
BalancerV3Vault$OnAuthorizerChangedEvent,
BalancerV3Vault$OnBufferSharesBurnedEvent,
BalancerV3Vault$OnBufferSharesMintedEvent,
BalancerV3Vault$OnLiquidityAddedEvent,
BalancerV3Vault$OnLiquidityAddedToBufferEvent,
BalancerV3Vault$OnLiquidityRemovedEvent,
BalancerV3Vault$OnLiquidityRemovedFromBufferEvent,
BalancerV3Vault$OnPoolInitializedEvent,
BalancerV3Vault$OnPoolPausedStateChangedEvent,
BalancerV3Vault$OnPoolRecoveryModeStateChangedEvent,
BalancerV3Vault$OnPoolRegisteredEvent,
BalancerV3Vault$OnProtocolFeeControllerChangedEvent,
BalancerV3Vault$OnSwapEvent,
BalancerV3Vault$OnSwapFeePercentageChangedEvent,
BalancerV3Vault$OnTransferEvent,
BalancerV3Vault$OnUnwrapEvent,
BalancerV3Vault$OnVaultAuxiliaryEvent,
BalancerV3Vault$OnVaultBuffersPausedStateChangedEvent,
BalancerV3Vault$OnVaultPausedStateChangedEvent,
BalancerV3Vault$OnVaultQueriesDisabledEvent,
BalancerV3Vault$OnVaultQueriesEnabledEvent,
BalancerV3Vault$OnWrapEvent
{
  event AggregateSwapFeePercentageChanged(BalancerV3Vault$EmitAllEvents$AggregateSwapFeePercentageChanged);
  event AggregateYieldFeePercentageChanged(BalancerV3Vault$EmitAllEvents$AggregateYieldFeePercentageChanged);
  event Approval(BalancerV3Vault$EmitAllEvents$Approval);
  event AuthorizerChanged(BalancerV3Vault$EmitAllEvents$AuthorizerChanged);
  event BufferSharesBurned(BalancerV3Vault$EmitAllEvents$BufferSharesBurned);
  event BufferSharesMinted(BalancerV3Vault$EmitAllEvents$BufferSharesMinted);
  event LiquidityAdded(BalancerV3Vault$EmitAllEvents$LiquidityAdded);
  event LiquidityAddedToBuffer(BalancerV3Vault$EmitAllEvents$LiquidityAddedToBuffer);
  event LiquidityRemoved(BalancerV3Vault$EmitAllEvents$LiquidityRemoved);
  event LiquidityRemovedFromBuffer(BalancerV3Vault$EmitAllEvents$LiquidityRemovedFromBuffer);
  event PoolInitialized(BalancerV3Vault$EmitAllEvents$PoolInitialized);
  event PoolPausedStateChanged(BalancerV3Vault$EmitAllEvents$PoolPausedStateChanged);
  event PoolRecoveryModeStateChanged(BalancerV3Vault$EmitAllEvents$PoolRecoveryModeStateChanged);
  event PoolRegistered(BalancerV3Vault$EmitAllEvents$PoolRegistered);
  event ProtocolFeeControllerChanged(BalancerV3Vault$EmitAllEvents$ProtocolFeeControllerChanged);
  event Swap(BalancerV3Vault$EmitAllEvents$Swap);
  event SwapFeePercentageChanged(BalancerV3Vault$EmitAllEvents$SwapFeePercentageChanged);
  event Transfer(BalancerV3Vault$EmitAllEvents$Transfer);
  event Unwrap(BalancerV3Vault$EmitAllEvents$Unwrap);
  event VaultAuxiliary(BalancerV3Vault$EmitAllEvents$VaultAuxiliary);
  event VaultBuffersPausedStateChanged(BalancerV3Vault$EmitAllEvents$VaultBuffersPausedStateChanged);
  event VaultPausedStateChanged(BalancerV3Vault$EmitAllEvents$VaultPausedStateChanged);
  event VaultQueriesDisabled();
  event VaultQueriesEnabled();
  event Wrap(BalancerV3Vault$EmitAllEvents$Wrap);

  function BalancerV3Vault$onAggregateSwapFeePercentageChangedEvent(EventContext memory ctx, BalancerV3Vault$AggregateSwapFeePercentageChangedEventParams memory inputs) virtual external override {
    emit AggregateSwapFeePercentageChanged(BalancerV3Vault$EmitAllEvents$AggregateSwapFeePercentageChanged(inputs.pool, inputs.aggregateSwapFeePercentage));
  }
function BalancerV3Vault$onAggregateYieldFeePercentageChangedEvent(EventContext memory ctx, BalancerV3Vault$AggregateYieldFeePercentageChangedEventParams memory inputs) virtual external override {
    emit AggregateYieldFeePercentageChanged(BalancerV3Vault$EmitAllEvents$AggregateYieldFeePercentageChanged(inputs.pool, inputs.aggregateYieldFeePercentage));
  }
function BalancerV3Vault$onApprovalEvent(EventContext memory ctx, BalancerV3Vault$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(BalancerV3Vault$EmitAllEvents$Approval(inputs.pool, inputs.owner, inputs.spender, inputs.value));
  }
function BalancerV3Vault$onAuthorizerChangedEvent(EventContext memory ctx, BalancerV3Vault$AuthorizerChangedEventParams memory inputs) virtual external override {
    emit AuthorizerChanged(BalancerV3Vault$EmitAllEvents$AuthorizerChanged(inputs.newAuthorizer));
  }
function BalancerV3Vault$onBufferSharesBurnedEvent(EventContext memory ctx, BalancerV3Vault$BufferSharesBurnedEventParams memory inputs) virtual external override {
    emit BufferSharesBurned(BalancerV3Vault$EmitAllEvents$BufferSharesBurned(inputs.wrappedToken, inputs.from, inputs.burnedShares));
  }
function BalancerV3Vault$onBufferSharesMintedEvent(EventContext memory ctx, BalancerV3Vault$BufferSharesMintedEventParams memory inputs) virtual external override {
    emit BufferSharesMinted(BalancerV3Vault$EmitAllEvents$BufferSharesMinted(inputs.wrappedToken, inputs.to, inputs.issuedShares));
  }
function BalancerV3Vault$onLiquidityAddedEvent(EventContext memory ctx, BalancerV3Vault$LiquidityAddedEventParams memory inputs) virtual external override {
    emit LiquidityAdded(BalancerV3Vault$EmitAllEvents$LiquidityAdded(inputs.pool, inputs.liquidityProvider, inputs.kind, inputs.totalSupply, inputs.amountsAddedRaw, inputs.swapFeeAmountsRaw));
  }
function BalancerV3Vault$onLiquidityAddedToBufferEvent(EventContext memory ctx, BalancerV3Vault$LiquidityAddedToBufferEventParams memory inputs) virtual external override {
    emit LiquidityAddedToBuffer(BalancerV3Vault$EmitAllEvents$LiquidityAddedToBuffer(inputs.wrappedToken, inputs.amountUnderlying, inputs.amountWrapped, inputs.bufferBalances));
  }
function BalancerV3Vault$onLiquidityRemovedEvent(EventContext memory ctx, BalancerV3Vault$LiquidityRemovedEventParams memory inputs) virtual external override {
    emit LiquidityRemoved(BalancerV3Vault$EmitAllEvents$LiquidityRemoved(inputs.pool, inputs.liquidityProvider, inputs.kind, inputs.totalSupply, inputs.amountsRemovedRaw, inputs.swapFeeAmountsRaw));
  }
function BalancerV3Vault$onLiquidityRemovedFromBufferEvent(EventContext memory ctx, BalancerV3Vault$LiquidityRemovedFromBufferEventParams memory inputs) virtual external override {
    emit LiquidityRemovedFromBuffer(BalancerV3Vault$EmitAllEvents$LiquidityRemovedFromBuffer(inputs.wrappedToken, inputs.amountUnderlying, inputs.amountWrapped, inputs.bufferBalances));
  }
function BalancerV3Vault$onPoolInitializedEvent(EventContext memory ctx, BalancerV3Vault$PoolInitializedEventParams memory inputs) virtual external override {
    emit PoolInitialized(BalancerV3Vault$EmitAllEvents$PoolInitialized(inputs.pool));
  }
function BalancerV3Vault$onPoolPausedStateChangedEvent(EventContext memory ctx, BalancerV3Vault$PoolPausedStateChangedEventParams memory inputs) virtual external override {
    emit PoolPausedStateChanged(BalancerV3Vault$EmitAllEvents$PoolPausedStateChanged(inputs.pool, inputs.paused));
  }
function BalancerV3Vault$onPoolRecoveryModeStateChangedEvent(EventContext memory ctx, BalancerV3Vault$PoolRecoveryModeStateChangedEventParams memory inputs) virtual external override {
    emit PoolRecoveryModeStateChanged(BalancerV3Vault$EmitAllEvents$PoolRecoveryModeStateChanged(inputs.pool, inputs.recoveryMode));
  }
function BalancerV3Vault$onPoolRegisteredEvent(EventContext memory ctx, BalancerV3Vault$PoolRegisteredEventParams memory inputs) virtual external override {
    emit PoolRegistered(BalancerV3Vault$EmitAllEvents$PoolRegistered(inputs.pool, inputs.factory, inputs.tokenConfig, inputs.swapFeePercentage, inputs.pauseWindowEndTime, inputs.roleAccounts, inputs.hooksConfig, inputs.liquidityManagement));
  }
function BalancerV3Vault$onProtocolFeeControllerChangedEvent(EventContext memory ctx, BalancerV3Vault$ProtocolFeeControllerChangedEventParams memory inputs) virtual external override {
    emit ProtocolFeeControllerChanged(BalancerV3Vault$EmitAllEvents$ProtocolFeeControllerChanged(inputs.newProtocolFeeController));
  }
function BalancerV3Vault$onSwapEvent(EventContext memory ctx, BalancerV3Vault$SwapEventParams memory inputs) virtual external override {
    emit Swap(BalancerV3Vault$EmitAllEvents$Swap(inputs.pool, inputs.tokenIn, inputs.tokenOut, inputs.amountIn, inputs.amountOut, inputs.swapFeePercentage, inputs.swapFeeAmount));
  }
function BalancerV3Vault$onSwapFeePercentageChangedEvent(EventContext memory ctx, BalancerV3Vault$SwapFeePercentageChangedEventParams memory inputs) virtual external override {
    emit SwapFeePercentageChanged(BalancerV3Vault$EmitAllEvents$SwapFeePercentageChanged(inputs.pool, inputs.swapFeePercentage));
  }
function BalancerV3Vault$onTransferEvent(EventContext memory ctx, BalancerV3Vault$TransferEventParams memory inputs) virtual external override {
    emit Transfer(BalancerV3Vault$EmitAllEvents$Transfer(inputs.pool, inputs.from, inputs.to, inputs.value));
  }
function BalancerV3Vault$onUnwrapEvent(EventContext memory ctx, BalancerV3Vault$UnwrapEventParams memory inputs) virtual external override {
    emit Unwrap(BalancerV3Vault$EmitAllEvents$Unwrap(inputs.wrappedToken, inputs.burnedShares, inputs.withdrawnUnderlying, inputs.bufferBalances));
  }
function BalancerV3Vault$onVaultAuxiliaryEvent(EventContext memory ctx, BalancerV3Vault$VaultAuxiliaryEventParams memory inputs) virtual external override {
    emit VaultAuxiliary(BalancerV3Vault$EmitAllEvents$VaultAuxiliary(inputs.pool, inputs.eventKey, inputs.eventData));
  }
function BalancerV3Vault$onVaultBuffersPausedStateChangedEvent(EventContext memory ctx, BalancerV3Vault$VaultBuffersPausedStateChangedEventParams memory inputs) virtual external override {
    emit VaultBuffersPausedStateChanged(BalancerV3Vault$EmitAllEvents$VaultBuffersPausedStateChanged(inputs.paused));
  }
function BalancerV3Vault$onVaultPausedStateChangedEvent(EventContext memory ctx, BalancerV3Vault$VaultPausedStateChangedEventParams memory inputs) virtual external override {
    emit VaultPausedStateChanged(BalancerV3Vault$EmitAllEvents$VaultPausedStateChanged(inputs.paused));
  }
function BalancerV3Vault$onVaultQueriesDisabledEvent(EventContext memory ctx) virtual external override {
    emit VaultQueriesDisabled();
  }
function BalancerV3Vault$onVaultQueriesEnabledEvent(EventContext memory ctx) virtual external override {
    emit VaultQueriesEnabled();
  }
function BalancerV3Vault$onWrapEvent(EventContext memory ctx, BalancerV3Vault$WrapEventParams memory inputs) virtual external override {
    emit Wrap(BalancerV3Vault$EmitAllEvents$Wrap(inputs.wrappedToken, inputs.depositedUnderlying, inputs.mintedShares, inputs.bufferBalances));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](25);
    triggers[0] = this.BalancerV3Vault$triggerOnAggregateSwapFeePercentageChangedEvent();
    triggers[1] = this.BalancerV3Vault$triggerOnAggregateYieldFeePercentageChangedEvent();
    triggers[2] = this.BalancerV3Vault$triggerOnApprovalEvent();
    triggers[3] = this.BalancerV3Vault$triggerOnAuthorizerChangedEvent();
    triggers[4] = this.BalancerV3Vault$triggerOnBufferSharesBurnedEvent();
    triggers[5] = this.BalancerV3Vault$triggerOnBufferSharesMintedEvent();
    triggers[6] = this.BalancerV3Vault$triggerOnLiquidityAddedEvent();
    triggers[7] = this.BalancerV3Vault$triggerOnLiquidityAddedToBufferEvent();
    triggers[8] = this.BalancerV3Vault$triggerOnLiquidityRemovedEvent();
    triggers[9] = this.BalancerV3Vault$triggerOnLiquidityRemovedFromBufferEvent();
    triggers[10] = this.BalancerV3Vault$triggerOnPoolInitializedEvent();
    triggers[11] = this.BalancerV3Vault$triggerOnPoolPausedStateChangedEvent();
    triggers[12] = this.BalancerV3Vault$triggerOnPoolRecoveryModeStateChangedEvent();
    triggers[13] = this.BalancerV3Vault$triggerOnPoolRegisteredEvent();
    triggers[14] = this.BalancerV3Vault$triggerOnProtocolFeeControllerChangedEvent();
    triggers[15] = this.BalancerV3Vault$triggerOnSwapEvent();
    triggers[16] = this.BalancerV3Vault$triggerOnSwapFeePercentageChangedEvent();
    triggers[17] = this.BalancerV3Vault$triggerOnTransferEvent();
    triggers[18] = this.BalancerV3Vault$triggerOnUnwrapEvent();
    triggers[19] = this.BalancerV3Vault$triggerOnVaultAuxiliaryEvent();
    triggers[20] = this.BalancerV3Vault$triggerOnVaultBuffersPausedStateChangedEvent();
    triggers[21] = this.BalancerV3Vault$triggerOnVaultPausedStateChangedEvent();
    triggers[22] = this.BalancerV3Vault$triggerOnVaultQueriesDisabledEvent();
    triggers[23] = this.BalancerV3Vault$triggerOnVaultQueriesEnabledEvent();
    triggers[24] = this.BalancerV3Vault$triggerOnWrapEvent();
    return triggers;
  }
}