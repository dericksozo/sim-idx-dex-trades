// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function AlgebraIntegralPool$Abi() pure returns (Abi memory) {
    return Abi("AlgebraIntegralPool");
}
struct AlgebraIntegralPool$BurnFunctionInputs {
    int24 bottomTick;
    int24 topTick;
    uint128 amount;
    bytes data;
}

struct AlgebraIntegralPool$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraIntegralPool$CollectFunctionInputs {
    address recipient;
    int24 bottomTick;
    int24 topTick;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct AlgebraIntegralPool$CollectFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct AlgebraIntegralPool$CommunityVaultFunctionOutputs {
    address outArg0;
}

struct AlgebraIntegralPool$FactoryFunctionOutputs {
    address outArg0;
}

struct AlgebraIntegralPool$FeeFunctionOutputs {
    uint16 currentFee;
}

struct AlgebraIntegralPool$FlashFunctionInputs {
    address recipient;
    uint256 amount0;
    uint256 amount1;
    bytes data;
}

struct AlgebraIntegralPool$GetCommunityFeePendingFunctionOutputs {
    uint128 outArg0;
    uint128 outArg1;
}

struct AlgebraIntegralPool$GetPluginFeePendingFunctionOutputs {
    uint128 outArg0;
    uint128 outArg1;
}

struct AlgebraIntegralPool$GetReservesFunctionOutputs {
    uint128 outArg0;
    uint128 outArg1;
}

struct AlgebraIntegralPool$GlobalStateFunctionOutputs {
    uint160 price;
    int24 tick;
    uint16 lastFee;
    uint8 pluginConfig;
    uint16 communityFee;
    bool unlocked;
}

struct AlgebraIntegralPool$InitializeFunctionInputs {
    uint160 initialPrice;
}

struct AlgebraIntegralPool$IsUnlockedFunctionOutputs {
    bool unlocked;
}

struct AlgebraIntegralPool$LastFeeTransferTimestampFunctionOutputs {
    uint32 outArg0;
}

struct AlgebraIntegralPool$LiquidityFunctionOutputs {
    uint128 outArg0;
}

struct AlgebraIntegralPool$MaxLiquidityPerTickFunctionOutputs {
    uint128 outArg0;
}

struct AlgebraIntegralPool$MintFunctionInputs {
    address leftoversRecipient;
    address recipient;
    int24 bottomTick;
    int24 topTick;
    uint128 liquidityDesired;
    bytes data;
}

struct AlgebraIntegralPool$MintFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
    uint128 liquidityActual;
}

struct AlgebraIntegralPool$NextTickGlobalFunctionOutputs {
    int24 outArg0;
}

struct AlgebraIntegralPool$PluginFunctionOutputs {
    address outArg0;
}

struct AlgebraIntegralPool$PositionsFunctionInputs {
    bytes32 outArg0;
}

struct AlgebraIntegralPool$PositionsFunctionOutputs {
    uint256 liquidity;
    uint256 innerFeeGrowth0Token;
    uint256 innerFeeGrowth1Token;
    uint128 fees0;
    uint128 fees1;
}

struct AlgebraIntegralPool$PrevTickGlobalFunctionOutputs {
    int24 outArg0;
}

struct AlgebraIntegralPool$SafelyGetStateOfAmmFunctionOutputs {
    uint160 sqrtPrice;
    int24 tick;
    uint16 lastFee;
    uint8 pluginConfig;
    uint128 activeLiquidity;
    int24 nextTick;
    int24 previousTick;
}

struct AlgebraIntegralPool$SetCommunityFeeFunctionInputs {
    uint16 newCommunityFee;
}

struct AlgebraIntegralPool$SetCommunityVaultFunctionInputs {
    address newCommunityVault;
}

struct AlgebraIntegralPool$SetFeeFunctionInputs {
    uint16 newFee;
}

struct AlgebraIntegralPool$SetPluginFunctionInputs {
    address newPluginAddress;
}

struct AlgebraIntegralPool$SetPluginConfigFunctionInputs {
    uint8 newConfig;
}

struct AlgebraIntegralPool$SetTickSpacingFunctionInputs {
    int24 newTickSpacing;
}

struct AlgebraIntegralPool$SwapFunctionInputs {
    address recipient;
    bool zeroToOne;
    int256 amountRequired;
    uint160 limitSqrtPrice;
    bytes data;
}

struct AlgebraIntegralPool$SwapFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct AlgebraIntegralPool$SwapWithPaymentInAdvanceFunctionInputs {
    address leftoversRecipient;
    address recipient;
    bool zeroToOne;
    int256 amountToSell;
    uint160 limitSqrtPrice;
    bytes data;
}

struct AlgebraIntegralPool$SwapWithPaymentInAdvanceFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct AlgebraIntegralPool$TickSpacingFunctionOutputs {
    int24 outArg0;
}

struct AlgebraIntegralPool$TickTableFunctionInputs {
    int16 outArg0;
}

struct AlgebraIntegralPool$TickTableFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraIntegralPool$TickTreeRootFunctionOutputs {
    uint32 outArg0;
}

struct AlgebraIntegralPool$TickTreeSecondLayerFunctionInputs {
    int16 outArg0;
}

struct AlgebraIntegralPool$TickTreeSecondLayerFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraIntegralPool$TicksFunctionInputs {
    int24 outArg0;
}

struct AlgebraIntegralPool$TicksFunctionOutputs {
    uint256 liquidityTotal;
    int128 liquidityDelta;
    int24 prevTick;
    int24 nextTick;
    uint256 outerFeeGrowth0Token;
    uint256 outerFeeGrowth1Token;
}

struct AlgebraIntegralPool$Token0FunctionOutputs {
    address outArg0;
}

struct AlgebraIntegralPool$Token1FunctionOutputs {
    address outArg0;
}

struct AlgebraIntegralPool$TotalFeeGrowth0TokenFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraIntegralPool$TotalFeeGrowth1TokenFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraIntegralPool$BurnEventParams {
    address owner;
    int24 bottomTick;
    int24 topTick;
    uint128 liquidityAmount;
    uint256 amount0;
    uint256 amount1;
    uint24 pluginFee;
}

struct AlgebraIntegralPool$CollectEventParams {
    address owner;
    address recipient;
    int24 bottomTick;
    int24 topTick;
    uint128 amount0;
    uint128 amount1;
}

struct AlgebraIntegralPool$CommunityFeeEventParams {
    uint16 communityFeeNew;
}

struct AlgebraIntegralPool$CommunityVaultEventParams {
    address newCommunityVault;
}

struct AlgebraIntegralPool$ExcessTokensEventParams {
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraIntegralPool$FeeEventParams {
    uint16 fee;
}

struct AlgebraIntegralPool$FlashEventParams {
    address sender;
    address recipient;
    uint256 amount0;
    uint256 amount1;
    uint256 paid0;
    uint256 paid1;
}

struct AlgebraIntegralPool$InitializeEventParams {
    uint160 price;
    int24 tick;
}

struct AlgebraIntegralPool$MintEventParams {
    address sender;
    address owner;
    int24 bottomTick;
    int24 topTick;
    uint128 liquidityAmount;
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraIntegralPool$PluginEventParams {
    address newPluginAddress;
}

struct AlgebraIntegralPool$PluginConfigEventParams {
    uint8 newPluginConfig;
}

struct AlgebraIntegralPool$SkimEventParams {
    address to;
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraIntegralPool$SwapEventParams {
    address sender;
    address recipient;
    int256 amount0;
    int256 amount1;
    uint160 price;
    uint128 liquidity;
    int24 tick;
    uint24 overrideFee;
    uint24 pluginFee;
}

struct AlgebraIntegralPool$TickSpacingEventParams {
    int24 newTickSpacing;
}

abstract contract AlgebraIntegralPool$OnBurnEvent {
    function AlgebraIntegralPool$onBurnEvent(EventContext memory ctx, AlgebraIntegralPool$BurnEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x932214d4a69c27c086643126ed97c32681da179064c678836c173f99bd13ca01),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onBurnEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnCollectEvent {
    function AlgebraIntegralPool$onCollectEvent(EventContext memory ctx, AlgebraIntegralPool$CollectEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnCollectEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x70935338e69775456a85ddef226c395fb668b63fa0115f5f20610b388e6ca9c0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onCollectEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnCommunityFeeEvent {
    function AlgebraIntegralPool$onCommunityFeeEvent(EventContext memory ctx, AlgebraIntegralPool$CommunityFeeEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnCommunityFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x3647dccc990d4941b0b05b32527ef493a98d6187b20639ca2f9743f3b55ca5e1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onCommunityFeeEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnCommunityVaultEvent {
    function AlgebraIntegralPool$onCommunityVaultEvent(EventContext memory ctx, AlgebraIntegralPool$CommunityVaultEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnCommunityVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0xb0b573c1f636e1f8bd9b415ba6c04d6dd49100bc25493fc6305b65ec0e581df3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onCommunityVaultEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnExcessTokensEvent {
    function AlgebraIntegralPool$onExcessTokensEvent(EventContext memory ctx, AlgebraIntegralPool$ExcessTokensEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnExcessTokensEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0xef10ebb00f0dbc72ad4602e94abbbda6f3d40632714f70e9c8fa30d5d44289c9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onExcessTokensEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnFeeEvent {
    function AlgebraIntegralPool$onFeeEvent(EventContext memory ctx, AlgebraIntegralPool$FeeEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x598b9f043c813aa6be3426ca60d1c65d17256312890be5118dab55b0775ebe2a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onFeeEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnFlashEvent {
    function AlgebraIntegralPool$onFlashEvent(EventContext memory ctx, AlgebraIntegralPool$FlashEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnFlashEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0xbdbdb71d7860376ba52b25a5028beea23581364a40522f6bcfb86bb1f2dca633),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onFlashEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnInitializeEvent {
    function AlgebraIntegralPool$onInitializeEvent(EventContext memory ctx, AlgebraIntegralPool$InitializeEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x98636036cb66a9c19a37435efc1e90142190214e8abeb821bdba3f2990dd4c95),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onInitializeEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnMintEvent {
    function AlgebraIntegralPool$onMintEvent(EventContext memory ctx, AlgebraIntegralPool$MintEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x7a53080ba414158be7ec69b987b5fb7d07dee101fe85488f0853ae16239d0bde),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onMintEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnPluginEvent {
    function AlgebraIntegralPool$onPluginEvent(EventContext memory ctx, AlgebraIntegralPool$PluginEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnPluginEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x27a3944eff2135a57675f17e72501038982b73620d01f794c72e93d61a3932a2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onPluginEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnPluginConfigEvent {
    function AlgebraIntegralPool$onPluginConfigEvent(EventContext memory ctx, AlgebraIntegralPool$PluginConfigEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnPluginConfigEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x3a6271b36c1b44bd6a0a0d56230602dc6919b7c17af57254306fadf5fee69dc3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onPluginConfigEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSkimEvent {
    function AlgebraIntegralPool$onSkimEvent(EventContext memory ctx, AlgebraIntegralPool$SkimEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSkimEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0xb94331e4420f16b156f53c397a8adcd09481283ee7830f7b688b22858e9db80b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSkimEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSwapEvent {
    function AlgebraIntegralPool$onSwapEvent(EventContext memory ctx, AlgebraIntegralPool$SwapEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x121cb44ee54098b1a04743c487e7460d8dd429b27f88b1f4d4767396e1a59f79),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSwapEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTickSpacingEvent {
    function AlgebraIntegralPool$onTickSpacingEvent(EventContext memory ctx, AlgebraIntegralPool$TickSpacingEventParams memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnTickSpacingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes32(0x01413b1d5d4c359e9a0daa7909ecda165f6e8c51fe2ff529d74b22a5a7c02645),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTickSpacingEvent.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnBurnFunction {
    function AlgebraIntegralPool$onBurnFunction(FunctionContext memory ctx, AlgebraIntegralPool$BurnFunctionInputs memory inputs, AlgebraIntegralPool$BurnFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x3b3bc70e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onBurnFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreBurnFunction {
    function AlgebraIntegralPool$preBurnFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$BurnFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x3b3bc70e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preBurnFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnCollectFunction {
    function AlgebraIntegralPool$onCollectFunction(FunctionContext memory ctx, AlgebraIntegralPool$CollectFunctionInputs memory inputs, AlgebraIntegralPool$CollectFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onCollectFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreCollectFunction {
    function AlgebraIntegralPool$preCollectFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$CollectFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preCollectFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnCommunityVaultFunction {
    function AlgebraIntegralPool$onCommunityVaultFunction(FunctionContext memory ctx, AlgebraIntegralPool$CommunityVaultFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnCommunityVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x53e97868),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onCommunityVaultFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreCommunityVaultFunction {
    function AlgebraIntegralPool$preCommunityVaultFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreCommunityVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x53e97868),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preCommunityVaultFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnFactoryFunction {
    function AlgebraIntegralPool$onFactoryFunction(FunctionContext memory ctx, AlgebraIntegralPool$FactoryFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onFactoryFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreFactoryFunction {
    function AlgebraIntegralPool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preFactoryFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnFeeFunction {
    function AlgebraIntegralPool$onFeeFunction(FunctionContext memory ctx, AlgebraIntegralPool$FeeFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onFeeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreFeeFunction {
    function AlgebraIntegralPool$preFeeFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preFeeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnFlashFunction {
    function AlgebraIntegralPool$onFlashFunction(FunctionContext memory ctx, AlgebraIntegralPool$FlashFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onFlashFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreFlashFunction {
    function AlgebraIntegralPool$preFlashFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$FlashFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preFlashFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnGetCommunityFeePendingFunction {
    function AlgebraIntegralPool$onGetCommunityFeePendingFunction(FunctionContext memory ctx, AlgebraIntegralPool$GetCommunityFeePendingFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnGetCommunityFeePendingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x7bd78025),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onGetCommunityFeePendingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreGetCommunityFeePendingFunction {
    function AlgebraIntegralPool$preGetCommunityFeePendingFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreGetCommunityFeePendingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x7bd78025),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preGetCommunityFeePendingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnGetPluginFeePendingFunction {
    function AlgebraIntegralPool$onGetPluginFeePendingFunction(FunctionContext memory ctx, AlgebraIntegralPool$GetPluginFeePendingFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnGetPluginFeePendingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xa1eded87),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onGetPluginFeePendingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreGetPluginFeePendingFunction {
    function AlgebraIntegralPool$preGetPluginFeePendingFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreGetPluginFeePendingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xa1eded87),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preGetPluginFeePendingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnGetReservesFunction {
    function AlgebraIntegralPool$onGetReservesFunction(FunctionContext memory ctx, AlgebraIntegralPool$GetReservesFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onGetReservesFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreGetReservesFunction {
    function AlgebraIntegralPool$preGetReservesFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preGetReservesFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnGlobalStateFunction {
    function AlgebraIntegralPool$onGlobalStateFunction(FunctionContext memory ctx, AlgebraIntegralPool$GlobalStateFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnGlobalStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xe76c01e4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onGlobalStateFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreGlobalStateFunction {
    function AlgebraIntegralPool$preGlobalStateFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreGlobalStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xe76c01e4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preGlobalStateFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnInitializeFunction {
    function AlgebraIntegralPool$onInitializeFunction(FunctionContext memory ctx, AlgebraIntegralPool$InitializeFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onInitializeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreInitializeFunction {
    function AlgebraIntegralPool$preInitializeFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$InitializeFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preInitializeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnIsUnlockedFunction {
    function AlgebraIntegralPool$onIsUnlockedFunction(FunctionContext memory ctx, AlgebraIntegralPool$IsUnlockedFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnIsUnlockedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x8380edb7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onIsUnlockedFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreIsUnlockedFunction {
    function AlgebraIntegralPool$preIsUnlockedFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreIsUnlockedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x8380edb7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preIsUnlockedFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnLastFeeTransferTimestampFunction {
    function AlgebraIntegralPool$onLastFeeTransferTimestampFunction(FunctionContext memory ctx, AlgebraIntegralPool$LastFeeTransferTimestampFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnLastFeeTransferTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x77f8c3a9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onLastFeeTransferTimestampFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreLastFeeTransferTimestampFunction {
    function AlgebraIntegralPool$preLastFeeTransferTimestampFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreLastFeeTransferTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x77f8c3a9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preLastFeeTransferTimestampFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnLiquidityFunction {
    function AlgebraIntegralPool$onLiquidityFunction(FunctionContext memory ctx, AlgebraIntegralPool$LiquidityFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onLiquidityFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreLiquidityFunction {
    function AlgebraIntegralPool$preLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preLiquidityFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnMaxLiquidityPerTickFunction {
    function AlgebraIntegralPool$onMaxLiquidityPerTickFunction(FunctionContext memory ctx, AlgebraIntegralPool$MaxLiquidityPerTickFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreMaxLiquidityPerTickFunction {
    function AlgebraIntegralPool$preMaxLiquidityPerTickFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnMintFunction {
    function AlgebraIntegralPool$onMintFunction(FunctionContext memory ctx, AlgebraIntegralPool$MintFunctionInputs memory inputs, AlgebraIntegralPool$MintFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xaafe29c0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onMintFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreMintFunction {
    function AlgebraIntegralPool$preMintFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$MintFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xaafe29c0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preMintFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnNextTickGlobalFunction {
    function AlgebraIntegralPool$onNextTickGlobalFunction(FunctionContext memory ctx, AlgebraIntegralPool$NextTickGlobalFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnNextTickGlobalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd5c35a7e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onNextTickGlobalFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreNextTickGlobalFunction {
    function AlgebraIntegralPool$preNextTickGlobalFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreNextTickGlobalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd5c35a7e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preNextTickGlobalFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnPluginFunction {
    function AlgebraIntegralPool$onPluginFunction(FunctionContext memory ctx, AlgebraIntegralPool$PluginFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnPluginFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xef01df4f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onPluginFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PrePluginFunction {
    function AlgebraIntegralPool$prePluginFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPrePluginFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xef01df4f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$prePluginFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnPositionsFunction {
    function AlgebraIntegralPool$onPositionsFunction(FunctionContext memory ctx, AlgebraIntegralPool$PositionsFunctionInputs memory inputs, AlgebraIntegralPool$PositionsFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onPositionsFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PrePositionsFunction {
    function AlgebraIntegralPool$prePositionsFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$PositionsFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPrePositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$prePositionsFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnPrevTickGlobalFunction {
    function AlgebraIntegralPool$onPrevTickGlobalFunction(FunctionContext memory ctx, AlgebraIntegralPool$PrevTickGlobalFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnPrevTickGlobalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x050a4d21),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onPrevTickGlobalFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PrePrevTickGlobalFunction {
    function AlgebraIntegralPool$prePrevTickGlobalFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPrePrevTickGlobalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x050a4d21),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$prePrevTickGlobalFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSafelyGetStateOfAmmFunction {
    function AlgebraIntegralPool$onSafelyGetStateOfAmmFunction(FunctionContext memory ctx, AlgebraIntegralPool$SafelyGetStateOfAmmFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnSafelyGetStateOfAmmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x97ce1c51),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSafelyGetStateOfAmmFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSafelyGetStateOfAmmFunction {
    function AlgebraIntegralPool$preSafelyGetStateOfAmmFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreSafelyGetStateOfAmmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x97ce1c51),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSafelyGetStateOfAmmFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSetCommunityFeeFunction {
    function AlgebraIntegralPool$onSetCommunityFeeFunction(FunctionContext memory ctx, AlgebraIntegralPool$SetCommunityFeeFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSetCommunityFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x240a875a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSetCommunityFeeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSetCommunityFeeFunction {
    function AlgebraIntegralPool$preSetCommunityFeeFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SetCommunityFeeFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSetCommunityFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x240a875a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSetCommunityFeeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSetCommunityVaultFunction {
    function AlgebraIntegralPool$onSetCommunityVaultFunction(FunctionContext memory ctx, AlgebraIntegralPool$SetCommunityVaultFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSetCommunityVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd8544cf3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSetCommunityVaultFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSetCommunityVaultFunction {
    function AlgebraIntegralPool$preSetCommunityVaultFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SetCommunityVaultFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSetCommunityVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd8544cf3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSetCommunityVaultFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSetFeeFunction {
    function AlgebraIntegralPool$onSetFeeFunction(FunctionContext memory ctx, AlgebraIntegralPool$SetFeeFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSetFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x8e005553),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSetFeeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSetFeeFunction {
    function AlgebraIntegralPool$preSetFeeFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SetFeeFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSetFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x8e005553),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSetFeeFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSetPluginFunction {
    function AlgebraIntegralPool$onSetPluginFunction(FunctionContext memory ctx, AlgebraIntegralPool$SetPluginFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSetPluginFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xcc1f97cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSetPluginFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSetPluginFunction {
    function AlgebraIntegralPool$preSetPluginFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SetPluginFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSetPluginFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xcc1f97cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSetPluginFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSetPluginConfigFunction {
    function AlgebraIntegralPool$onSetPluginConfigFunction(FunctionContext memory ctx, AlgebraIntegralPool$SetPluginConfigFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSetPluginConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xbca57f81),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSetPluginConfigFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSetPluginConfigFunction {
    function AlgebraIntegralPool$preSetPluginConfigFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SetPluginConfigFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSetPluginConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xbca57f81),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSetPluginConfigFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSetTickSpacingFunction {
    function AlgebraIntegralPool$onSetTickSpacingFunction(FunctionContext memory ctx, AlgebraIntegralPool$SetTickSpacingFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerOnSetTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xf085a610),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSetTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSetTickSpacingFunction {
    function AlgebraIntegralPool$preSetTickSpacingFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SetTickSpacingFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSetTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xf085a610),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSetTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSkimFunction {
    function AlgebraIntegralPool$onSkimFunction(FunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x1dd19cb4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSkimFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSkimFunction {
    function AlgebraIntegralPool$preSkimFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x1dd19cb4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSkimFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSwapFunction {
    function AlgebraIntegralPool$onSwapFunction(FunctionContext memory ctx, AlgebraIntegralPool$SwapFunctionInputs memory inputs, AlgebraIntegralPool$SwapFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSwapFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSwapFunction {
    function AlgebraIntegralPool$preSwapFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SwapFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSwapFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSwapWithPaymentInAdvanceFunction {
    function AlgebraIntegralPool$onSwapWithPaymentInAdvanceFunction(FunctionContext memory ctx, AlgebraIntegralPool$SwapWithPaymentInAdvanceFunctionInputs memory inputs, AlgebraIntegralPool$SwapWithPaymentInAdvanceFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnSwapWithPaymentInAdvanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x9e4e0227),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSwapWithPaymentInAdvanceFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSwapWithPaymentInAdvanceFunction {
    function AlgebraIntegralPool$preSwapWithPaymentInAdvanceFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$SwapWithPaymentInAdvanceFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreSwapWithPaymentInAdvanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x9e4e0227),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSwapWithPaymentInAdvanceFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnSyncFunction {
    function AlgebraIntegralPool$onSyncFunction(FunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerOnSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onSyncFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreSyncFunction {
    function AlgebraIntegralPool$preSyncFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preSyncFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTickSpacingFunction {
    function AlgebraIntegralPool$onTickSpacingFunction(FunctionContext memory ctx, AlgebraIntegralPool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTickSpacingFunction {
    function AlgebraIntegralPool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTickTableFunction {
    function AlgebraIntegralPool$onTickTableFunction(FunctionContext memory ctx, AlgebraIntegralPool$TickTableFunctionInputs memory inputs, AlgebraIntegralPool$TickTableFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTickTableFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xc677e3e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTickTableFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTickTableFunction {
    function AlgebraIntegralPool$preTickTableFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$TickTableFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreTickTableFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xc677e3e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTickTableFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTickTreeRootFunction {
    function AlgebraIntegralPool$onTickTreeRootFunction(FunctionContext memory ctx, AlgebraIntegralPool$TickTreeRootFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTickTreeRootFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x578b9a36),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTickTreeRootFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTickTreeRootFunction {
    function AlgebraIntegralPool$preTickTreeRootFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreTickTreeRootFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x578b9a36),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTickTreeRootFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTickTreeSecondLayerFunction {
    function AlgebraIntegralPool$onTickTreeSecondLayerFunction(FunctionContext memory ctx, AlgebraIntegralPool$TickTreeSecondLayerFunctionInputs memory inputs, AlgebraIntegralPool$TickTreeSecondLayerFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTickTreeSecondLayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd8619037),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTickTreeSecondLayerFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTickTreeSecondLayerFunction {
    function AlgebraIntegralPool$preTickTreeSecondLayerFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$TickTreeSecondLayerFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreTickTreeSecondLayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd8619037),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTickTreeSecondLayerFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTicksFunction {
    function AlgebraIntegralPool$onTicksFunction(FunctionContext memory ctx, AlgebraIntegralPool$TicksFunctionInputs memory inputs, AlgebraIntegralPool$TicksFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTicksFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTicksFunction {
    function AlgebraIntegralPool$preTicksFunction(PreFunctionContext memory ctx, AlgebraIntegralPool$TicksFunctionInputs memory inputs) virtual external;

    function AlgebraIntegralPool$triggerPreTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTicksFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnToken0Function {
    function AlgebraIntegralPool$onToken0Function(FunctionContext memory ctx, AlgebraIntegralPool$Token0FunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onToken0Function.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreToken0Function {
    function AlgebraIntegralPool$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preToken0Function.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnToken1Function {
    function AlgebraIntegralPool$onToken1Function(FunctionContext memory ctx, AlgebraIntegralPool$Token1FunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onToken1Function.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreToken1Function {
    function AlgebraIntegralPool$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preToken1Function.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTotalFeeGrowth0TokenFunction {
    function AlgebraIntegralPool$onTotalFeeGrowth0TokenFunction(FunctionContext memory ctx, AlgebraIntegralPool$TotalFeeGrowth0TokenFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTotalFeeGrowth0TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x6378ae44),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTotalFeeGrowth0TokenFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTotalFeeGrowth0TokenFunction {
    function AlgebraIntegralPool$preTotalFeeGrowth0TokenFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreTotalFeeGrowth0TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0x6378ae44),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTotalFeeGrowth0TokenFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$OnTotalFeeGrowth1TokenFunction {
    function AlgebraIntegralPool$onTotalFeeGrowth1TokenFunction(FunctionContext memory ctx, AlgebraIntegralPool$TotalFeeGrowth1TokenFunctionOutputs memory outputs) virtual external;

    function AlgebraIntegralPool$triggerOnTotalFeeGrowth1TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xecdecf42),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$onTotalFeeGrowth1TokenFunction.selector
        });
    }
}

abstract contract AlgebraIntegralPool$PreTotalFeeGrowth1TokenFunction {
    function AlgebraIntegralPool$preTotalFeeGrowth1TokenFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraIntegralPool$triggerPreTotalFeeGrowth1TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraIntegralPool",
            selector: bytes4(0xecdecf42),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraIntegralPool$preTotalFeeGrowth1TokenFunction.selector
        });
    }
}


struct AlgebraIntegralPool$EmitAllEvents$Burn {
  address owner;
  int24 bottomTick;
  int24 topTick;
  uint128 liquidityAmount;
  uint256 amount0;
  uint256 amount1;
  uint24 pluginFee;
}

struct AlgebraIntegralPool$EmitAllEvents$Collect {
  address owner;
  address recipient;
  int24 bottomTick;
  int24 topTick;
  uint128 amount0;
  uint128 amount1;
}

struct AlgebraIntegralPool$EmitAllEvents$CommunityFee {
  uint16 communityFeeNew;
}

struct AlgebraIntegralPool$EmitAllEvents$CommunityVault {
  address newCommunityVault;
}

struct AlgebraIntegralPool$EmitAllEvents$ExcessTokens {
  uint256 amount0;
  uint256 amount1;
}

struct AlgebraIntegralPool$EmitAllEvents$Fee {
  uint16 fee;
}

struct AlgebraIntegralPool$EmitAllEvents$Flash {
  address sender;
  address recipient;
  uint256 amount0;
  uint256 amount1;
  uint256 paid0;
  uint256 paid1;
}

struct AlgebraIntegralPool$EmitAllEvents$Initialize {
  uint160 price;
  int24 tick;
}

struct AlgebraIntegralPool$EmitAllEvents$Mint {
  address sender;
  address owner;
  int24 bottomTick;
  int24 topTick;
  uint128 liquidityAmount;
  uint256 amount0;
  uint256 amount1;
}

struct AlgebraIntegralPool$EmitAllEvents$Plugin {
  address newPluginAddress;
}

struct AlgebraIntegralPool$EmitAllEvents$PluginConfig {
  uint8 newPluginConfig;
}

struct AlgebraIntegralPool$EmitAllEvents$Skim {
  address to;
  uint256 amount0;
  uint256 amount1;
}

struct AlgebraIntegralPool$EmitAllEvents$Swap {
  address sender;
  address recipient;
  int256 amount0;
  int256 amount1;
  uint160 price;
  uint128 liquidity;
  int24 tick;
  uint24 overrideFee;
  uint24 pluginFee;
}

struct AlgebraIntegralPool$EmitAllEvents$TickSpacing {
  int24 newTickSpacing;
}

contract AlgebraIntegralPool$EmitAllEvents is
  AlgebraIntegralPool$OnBurnEvent,
AlgebraIntegralPool$OnCollectEvent,
AlgebraIntegralPool$OnCommunityFeeEvent,
AlgebraIntegralPool$OnCommunityVaultEvent,
AlgebraIntegralPool$OnExcessTokensEvent,
AlgebraIntegralPool$OnFeeEvent,
AlgebraIntegralPool$OnFlashEvent,
AlgebraIntegralPool$OnInitializeEvent,
AlgebraIntegralPool$OnMintEvent,
AlgebraIntegralPool$OnPluginEvent,
AlgebraIntegralPool$OnPluginConfigEvent,
AlgebraIntegralPool$OnSkimEvent,
AlgebraIntegralPool$OnSwapEvent,
AlgebraIntegralPool$OnTickSpacingEvent
{
  event Burn(AlgebraIntegralPool$EmitAllEvents$Burn);
  event Collect(AlgebraIntegralPool$EmitAllEvents$Collect);
  event CommunityFee(AlgebraIntegralPool$EmitAllEvents$CommunityFee);
  event CommunityVault(AlgebraIntegralPool$EmitAllEvents$CommunityVault);
  event ExcessTokens(AlgebraIntegralPool$EmitAllEvents$ExcessTokens);
  event Fee(AlgebraIntegralPool$EmitAllEvents$Fee);
  event Flash(AlgebraIntegralPool$EmitAllEvents$Flash);
  event Initialize(AlgebraIntegralPool$EmitAllEvents$Initialize);
  event Mint(AlgebraIntegralPool$EmitAllEvents$Mint);
  event Plugin(AlgebraIntegralPool$EmitAllEvents$Plugin);
  event PluginConfig(AlgebraIntegralPool$EmitAllEvents$PluginConfig);
  event Skim(AlgebraIntegralPool$EmitAllEvents$Skim);
  event Swap(AlgebraIntegralPool$EmitAllEvents$Swap);
  event TickSpacing(AlgebraIntegralPool$EmitAllEvents$TickSpacing);

  function AlgebraIntegralPool$onBurnEvent(EventContext memory ctx, AlgebraIntegralPool$BurnEventParams memory inputs) virtual external override {
    emit Burn(AlgebraIntegralPool$EmitAllEvents$Burn(inputs.owner, inputs.bottomTick, inputs.topTick, inputs.liquidityAmount, inputs.amount0, inputs.amount1, inputs.pluginFee));
  }
function AlgebraIntegralPool$onCollectEvent(EventContext memory ctx, AlgebraIntegralPool$CollectEventParams memory inputs) virtual external override {
    emit Collect(AlgebraIntegralPool$EmitAllEvents$Collect(inputs.owner, inputs.recipient, inputs.bottomTick, inputs.topTick, inputs.amount0, inputs.amount1));
  }
function AlgebraIntegralPool$onCommunityFeeEvent(EventContext memory ctx, AlgebraIntegralPool$CommunityFeeEventParams memory inputs) virtual external override {
    emit CommunityFee(AlgebraIntegralPool$EmitAllEvents$CommunityFee(inputs.communityFeeNew));
  }
function AlgebraIntegralPool$onCommunityVaultEvent(EventContext memory ctx, AlgebraIntegralPool$CommunityVaultEventParams memory inputs) virtual external override {
    emit CommunityVault(AlgebraIntegralPool$EmitAllEvents$CommunityVault(inputs.newCommunityVault));
  }
function AlgebraIntegralPool$onExcessTokensEvent(EventContext memory ctx, AlgebraIntegralPool$ExcessTokensEventParams memory inputs) virtual external override {
    emit ExcessTokens(AlgebraIntegralPool$EmitAllEvents$ExcessTokens(inputs.amount0, inputs.amount1));
  }
function AlgebraIntegralPool$onFeeEvent(EventContext memory ctx, AlgebraIntegralPool$FeeEventParams memory inputs) virtual external override {
    emit Fee(AlgebraIntegralPool$EmitAllEvents$Fee(inputs.fee));
  }
function AlgebraIntegralPool$onFlashEvent(EventContext memory ctx, AlgebraIntegralPool$FlashEventParams memory inputs) virtual external override {
    emit Flash(AlgebraIntegralPool$EmitAllEvents$Flash(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.paid0, inputs.paid1));
  }
function AlgebraIntegralPool$onInitializeEvent(EventContext memory ctx, AlgebraIntegralPool$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(AlgebraIntegralPool$EmitAllEvents$Initialize(inputs.price, inputs.tick));
  }
function AlgebraIntegralPool$onMintEvent(EventContext memory ctx, AlgebraIntegralPool$MintEventParams memory inputs) virtual external override {
    emit Mint(AlgebraIntegralPool$EmitAllEvents$Mint(inputs.sender, inputs.owner, inputs.bottomTick, inputs.topTick, inputs.liquidityAmount, inputs.amount0, inputs.amount1));
  }
function AlgebraIntegralPool$onPluginEvent(EventContext memory ctx, AlgebraIntegralPool$PluginEventParams memory inputs) virtual external override {
    emit Plugin(AlgebraIntegralPool$EmitAllEvents$Plugin(inputs.newPluginAddress));
  }
function AlgebraIntegralPool$onPluginConfigEvent(EventContext memory ctx, AlgebraIntegralPool$PluginConfigEventParams memory inputs) virtual external override {
    emit PluginConfig(AlgebraIntegralPool$EmitAllEvents$PluginConfig(inputs.newPluginConfig));
  }
function AlgebraIntegralPool$onSkimEvent(EventContext memory ctx, AlgebraIntegralPool$SkimEventParams memory inputs) virtual external override {
    emit Skim(AlgebraIntegralPool$EmitAllEvents$Skim(inputs.to, inputs.amount0, inputs.amount1));
  }
function AlgebraIntegralPool$onSwapEvent(EventContext memory ctx, AlgebraIntegralPool$SwapEventParams memory inputs) virtual external override {
    emit Swap(AlgebraIntegralPool$EmitAllEvents$Swap(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.price, inputs.liquidity, inputs.tick, inputs.overrideFee, inputs.pluginFee));
  }
function AlgebraIntegralPool$onTickSpacingEvent(EventContext memory ctx, AlgebraIntegralPool$TickSpacingEventParams memory inputs) virtual external override {
    emit TickSpacing(AlgebraIntegralPool$EmitAllEvents$TickSpacing(inputs.newTickSpacing));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](14);
    triggers[0] = this.AlgebraIntegralPool$triggerOnBurnEvent();
    triggers[1] = this.AlgebraIntegralPool$triggerOnCollectEvent();
    triggers[2] = this.AlgebraIntegralPool$triggerOnCommunityFeeEvent();
    triggers[3] = this.AlgebraIntegralPool$triggerOnCommunityVaultEvent();
    triggers[4] = this.AlgebraIntegralPool$triggerOnExcessTokensEvent();
    triggers[5] = this.AlgebraIntegralPool$triggerOnFeeEvent();
    triggers[6] = this.AlgebraIntegralPool$triggerOnFlashEvent();
    triggers[7] = this.AlgebraIntegralPool$triggerOnInitializeEvent();
    triggers[8] = this.AlgebraIntegralPool$triggerOnMintEvent();
    triggers[9] = this.AlgebraIntegralPool$triggerOnPluginEvent();
    triggers[10] = this.AlgebraIntegralPool$triggerOnPluginConfigEvent();
    triggers[11] = this.AlgebraIntegralPool$triggerOnSkimEvent();
    triggers[12] = this.AlgebraIntegralPool$triggerOnSwapEvent();
    triggers[13] = this.AlgebraIntegralPool$triggerOnTickSpacingEvent();
    return triggers;
  }
}