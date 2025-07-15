// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function Vault$Abi() pure returns (Abi memory) {
    return Abi("Vault");
}
struct Vault$WethFunctionOutputs {
    address outArg0;
}

struct Vault$IVault$BatchSwapStep {
    bytes32 poolId;
    uint256 assetInIndex;
    uint256 assetOutIndex;
    uint256 amount;
    bytes userData;
}

struct Vault$IVault$FundManagement {
    address sender;
    bool fromInternalBalance;
    address recipient;
    bool toInternalBalance;
}

struct Vault$BatchSwapFunctionInputs {
    uint8 kind;
    Vault$IVault$BatchSwapStep[] swaps;
    address[] assets;
    Vault$IVault$FundManagement funds;
    int256[] limits;
    uint256 deadline;
}

struct Vault$BatchSwapFunctionOutputs {
    int256[] assetDeltas;
}

struct Vault$DeregisterTokensFunctionInputs {
    bytes32 poolId;
    address[] tokens;
}

struct Vault$IVault$ExitPoolRequest {
    address[] assets;
    uint256[] minAmountsOut;
    bytes userData;
    bool toInternalBalance;
}

struct Vault$ExitPoolFunctionInputs {
    bytes32 poolId;
    address sender;
    address recipient;
    Vault$IVault$ExitPoolRequest request;
}

struct Vault$FlashLoanFunctionInputs {
    address recipient;
    address[] tokens;
    uint256[] amounts;
    bytes userData;
}

struct Vault$GetActionIdFunctionInputs {
    bytes4 selector;
}

struct Vault$GetActionIdFunctionOutputs {
    bytes32 outArg0;
}

struct Vault$GetAuthorizerFunctionOutputs {
    address outArg0;
}

struct Vault$GetDomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct Vault$GetInternalBalanceFunctionInputs {
    address user;
    address[] tokens;
}

struct Vault$GetInternalBalanceFunctionOutputs {
    uint256[] balances;
}

struct Vault$GetNextNonceFunctionInputs {
    address user;
}

struct Vault$GetNextNonceFunctionOutputs {
    uint256 outArg0;
}

struct Vault$GetPausedStateFunctionOutputs {
    bool paused;
    uint256 pauseWindowEndTime;
    uint256 bufferPeriodEndTime;
}

struct Vault$GetPoolFunctionInputs {
    bytes32 poolId;
}

struct Vault$GetPoolFunctionOutputs {
    address outArg0;
    uint8 outArg1;
}

struct Vault$GetPoolTokenInfoFunctionInputs {
    bytes32 poolId;
    address token;
}

struct Vault$GetPoolTokenInfoFunctionOutputs {
    uint256 cash;
    uint256 managed;
    uint256 lastChangeBlock;
    address assetManager;
}

struct Vault$GetPoolTokensFunctionInputs {
    bytes32 poolId;
}

struct Vault$GetPoolTokensFunctionOutputs {
    address[] tokens;
    uint256[] balances;
    uint256 lastChangeBlock;
}

struct Vault$GetProtocolFeesCollectorFunctionOutputs {
    address outArg0;
}

struct Vault$HasApprovedRelayerFunctionInputs {
    address user;
    address relayer;
}

struct Vault$HasApprovedRelayerFunctionOutputs {
    bool outArg0;
}

struct Vault$IVault$JoinPoolRequest {
    address[] assets;
    uint256[] maxAmountsIn;
    bytes userData;
    bool fromInternalBalance;
}

struct Vault$JoinPoolFunctionInputs {
    bytes32 poolId;
    address sender;
    address recipient;
    Vault$IVault$JoinPoolRequest request;
}

struct Vault$IVault$PoolBalanceOp {
    uint8 kind;
    bytes32 poolId;
    address token;
    uint256 amount;
}

struct Vault$ManagePoolBalanceFunctionInputs {
    Vault$IVault$PoolBalanceOp[] ops;
}

struct Vault$IVault$UserBalanceOp {
    uint8 kind;
    address asset;
    uint256 amount;
    address sender;
    address recipient;
}

struct Vault$ManageUserBalanceFunctionInputs {
    Vault$IVault$UserBalanceOp[] ops;
}

struct Vault$QueryBatchSwapFunctionInputs {
    uint8 kind;
    Vault$IVault$BatchSwapStep[] swaps;
    address[] assets;
    Vault$IVault$FundManagement funds;
}

struct Vault$QueryBatchSwapFunctionOutputs {
    int256[] outArg0;
}

struct Vault$RegisterPoolFunctionInputs {
    uint8 specialization;
}

struct Vault$RegisterPoolFunctionOutputs {
    bytes32 outArg0;
}

struct Vault$RegisterTokensFunctionInputs {
    bytes32 poolId;
    address[] tokens;
    address[] assetManagers;
}

struct Vault$SetAuthorizerFunctionInputs {
    address newAuthorizer;
}

struct Vault$SetPausedFunctionInputs {
    bool paused;
}

struct Vault$SetRelayerApprovalFunctionInputs {
    address sender;
    address relayer;
    bool approved;
}

struct Vault$IVault$SingleSwap {
    bytes32 poolId;
    uint8 kind;
    address assetIn;
    address assetOut;
    uint256 amount;
    bytes userData;
}

struct Vault$SwapFunctionInputs {
    Vault$IVault$SingleSwap singleSwap;
    Vault$IVault$FundManagement funds;
    uint256 limit;
    uint256 deadline;
}

struct Vault$SwapFunctionOutputs {
    uint256 amountCalculated;
}

struct Vault$AuthorizerChangedEventParams {
    address newAuthorizer;
}

struct Vault$ExternalBalanceTransferEventParams {
    address token;
    address sender;
    address recipient;
    uint256 amount;
}

struct Vault$FlashLoanEventParams {
    address recipient;
    address token;
    uint256 amount;
    uint256 feeAmount;
}

struct Vault$InternalBalanceChangedEventParams {
    address user;
    address token;
    int256 delta;
}

struct Vault$PausedStateChangedEventParams {
    bool paused;
}

struct Vault$PoolBalanceChangedEventParams {
    bytes32 poolId;
    address liquidityProvider;
    address[] tokens;
    int256[] deltas;
    uint256[] protocolFeeAmounts;
}

struct Vault$PoolBalanceManagedEventParams {
    bytes32 poolId;
    address assetManager;
    address token;
    int256 cashDelta;
    int256 managedDelta;
}

struct Vault$PoolRegisteredEventParams {
    bytes32 poolId;
    address poolAddress;
    uint8 specialization;
}

struct Vault$RelayerApprovalChangedEventParams {
    address relayer;
    address sender;
    bool approved;
}

struct Vault$SwapEventParams {
    bytes32 poolId;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 amountOut;
}

struct Vault$TokensDeregisteredEventParams {
    bytes32 poolId;
    address[] tokens;
}

struct Vault$TokensRegisteredEventParams {
    bytes32 poolId;
    address[] tokens;
    address[] assetManagers;
}

abstract contract Vault$OnAuthorizerChangedEvent {
    function Vault$onAuthorizerChangedEvent(EventContext memory ctx, Vault$AuthorizerChangedEventParams memory inputs) virtual external;

    function Vault$triggerOnAuthorizerChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x94b979b6831a51293e2641426f97747feed46f17779fed9cd18d1ecefcfe92ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onAuthorizerChangedEvent.selector
        });
    }
}

abstract contract Vault$OnExternalBalanceTransferEvent {
    function Vault$onExternalBalanceTransferEvent(EventContext memory ctx, Vault$ExternalBalanceTransferEventParams memory inputs) virtual external;

    function Vault$triggerOnExternalBalanceTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x540a1a3f28340caec336c81d8d7b3df139ee5cdc1839a4f283d7ebb7eaae2d5c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onExternalBalanceTransferEvent.selector
        });
    }
}

abstract contract Vault$OnFlashLoanEvent {
    function Vault$onFlashLoanEvent(EventContext memory ctx, Vault$FlashLoanEventParams memory inputs) virtual external;

    function Vault$triggerOnFlashLoanEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x0d7d75e01ab95780d3cd1c8ec0dd6c2ce19e3a20427eec8bf53283b6fb8e95f0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onFlashLoanEvent.selector
        });
    }
}

abstract contract Vault$OnInternalBalanceChangedEvent {
    function Vault$onInternalBalanceChangedEvent(EventContext memory ctx, Vault$InternalBalanceChangedEventParams memory inputs) virtual external;

    function Vault$triggerOnInternalBalanceChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x18e1ea4139e68413d7d08aa752e71568e36b2c5bf940893314c2c5b01eaa0c42),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onInternalBalanceChangedEvent.selector
        });
    }
}

abstract contract Vault$OnPausedStateChangedEvent {
    function Vault$onPausedStateChangedEvent(EventContext memory ctx, Vault$PausedStateChangedEventParams memory inputs) virtual external;

    function Vault$triggerOnPausedStateChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x9e3a5e37224532dea67b89face185703738a228a6e8a23dee546960180d3be64),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onPausedStateChangedEvent.selector
        });
    }
}

abstract contract Vault$OnPoolBalanceChangedEvent {
    function Vault$onPoolBalanceChangedEvent(EventContext memory ctx, Vault$PoolBalanceChangedEventParams memory inputs) virtual external;

    function Vault$triggerOnPoolBalanceChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0xe5ce249087ce04f05a957192435400fd97868dba0e6a4b4c049abf8af80dae78),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onPoolBalanceChangedEvent.selector
        });
    }
}

abstract contract Vault$OnPoolBalanceManagedEvent {
    function Vault$onPoolBalanceManagedEvent(EventContext memory ctx, Vault$PoolBalanceManagedEventParams memory inputs) virtual external;

    function Vault$triggerOnPoolBalanceManagedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x6edcaf6241105b4c94c2efdbf3a6b12458eb3d07be3a0e81d24b13c44045fe7a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onPoolBalanceManagedEvent.selector
        });
    }
}

abstract contract Vault$OnPoolRegisteredEvent {
    function Vault$onPoolRegisteredEvent(EventContext memory ctx, Vault$PoolRegisteredEventParams memory inputs) virtual external;

    function Vault$triggerOnPoolRegisteredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x3c13bc30b8e878c53fd2a36b679409c073afd75950be43d8858768e956fbc20e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onPoolRegisteredEvent.selector
        });
    }
}

abstract contract Vault$OnRelayerApprovalChangedEvent {
    function Vault$onRelayerApprovalChangedEvent(EventContext memory ctx, Vault$RelayerApprovalChangedEventParams memory inputs) virtual external;

    function Vault$triggerOnRelayerApprovalChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x46961fdb4502b646d5095fba7600486a8ac05041d55cdf0f16ed677180b5cad8),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onRelayerApprovalChangedEvent.selector
        });
    }
}

abstract contract Vault$OnSwapEvent {
    function Vault$onSwapEvent(EventContext memory ctx, Vault$SwapEventParams memory inputs) virtual external;

    function Vault$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x2170c741c41531aec20e7c107c24eecfdd15e69c9bb0a8dd37b1840b9e0b207b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onSwapEvent.selector
        });
    }
}

abstract contract Vault$OnTokensDeregisteredEvent {
    function Vault$onTokensDeregisteredEvent(EventContext memory ctx, Vault$TokensDeregisteredEventParams memory inputs) virtual external;

    function Vault$triggerOnTokensDeregisteredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0x7dcdc6d02ef40c7c1a7046a011b058bd7f988fa14e20a66344f9d4e60657d610),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onTokensDeregisteredEvent.selector
        });
    }
}

abstract contract Vault$OnTokensRegisteredEvent {
    function Vault$onTokensRegisteredEvent(EventContext memory ctx, Vault$TokensRegisteredEventParams memory inputs) virtual external;

    function Vault$triggerOnTokensRegisteredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes32(0xf5847d3f2197b16cdcd2098ec95d0905cd1abdaf415f07bb7cef2bba8ac5dec4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onTokensRegisteredEvent.selector
        });
    }
}

abstract contract Vault$OnWethFunction {
    function Vault$onWethFunction(FunctionContext memory ctx, Vault$WethFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnWethFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xad5c4648),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onWethFunction.selector
        });
    }
}

abstract contract Vault$PreWethFunction {
    function Vault$preWethFunction(PreFunctionContext memory ctx) virtual external;

    function Vault$triggerPreWethFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xad5c4648),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preWethFunction.selector
        });
    }
}

abstract contract Vault$OnBatchSwapFunction {
    function Vault$onBatchSwapFunction(FunctionContext memory ctx, Vault$BatchSwapFunctionInputs memory inputs, Vault$BatchSwapFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnBatchSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x945bcec9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onBatchSwapFunction.selector
        });
    }
}

abstract contract Vault$PreBatchSwapFunction {
    function Vault$preBatchSwapFunction(PreFunctionContext memory ctx, Vault$BatchSwapFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreBatchSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x945bcec9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preBatchSwapFunction.selector
        });
    }
}

abstract contract Vault$OnDeregisterTokensFunction {
    function Vault$onDeregisterTokensFunction(FunctionContext memory ctx, Vault$DeregisterTokensFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnDeregisterTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x7d3aeb96),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onDeregisterTokensFunction.selector
        });
    }
}

abstract contract Vault$PreDeregisterTokensFunction {
    function Vault$preDeregisterTokensFunction(PreFunctionContext memory ctx, Vault$DeregisterTokensFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreDeregisterTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x7d3aeb96),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preDeregisterTokensFunction.selector
        });
    }
}

abstract contract Vault$OnExitPoolFunction {
    function Vault$onExitPoolFunction(FunctionContext memory ctx, Vault$ExitPoolFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnExitPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x8bdb3913),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onExitPoolFunction.selector
        });
    }
}

abstract contract Vault$PreExitPoolFunction {
    function Vault$preExitPoolFunction(PreFunctionContext memory ctx, Vault$ExitPoolFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreExitPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x8bdb3913),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preExitPoolFunction.selector
        });
    }
}

abstract contract Vault$OnFlashLoanFunction {
    function Vault$onFlashLoanFunction(FunctionContext memory ctx, Vault$FlashLoanFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x5c38449e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onFlashLoanFunction.selector
        });
    }
}

abstract contract Vault$PreFlashLoanFunction {
    function Vault$preFlashLoanFunction(PreFunctionContext memory ctx, Vault$FlashLoanFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x5c38449e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preFlashLoanFunction.selector
        });
    }
}

abstract contract Vault$OnGetActionIdFunction {
    function Vault$onGetActionIdFunction(FunctionContext memory ctx, Vault$GetActionIdFunctionInputs memory inputs, Vault$GetActionIdFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetActionIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x851c1bb3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetActionIdFunction.selector
        });
    }
}

abstract contract Vault$PreGetActionIdFunction {
    function Vault$preGetActionIdFunction(PreFunctionContext memory ctx, Vault$GetActionIdFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreGetActionIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x851c1bb3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetActionIdFunction.selector
        });
    }
}

abstract contract Vault$OnGetAuthorizerFunction {
    function Vault$onGetAuthorizerFunction(FunctionContext memory ctx, Vault$GetAuthorizerFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetAuthorizerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xaaabadc5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetAuthorizerFunction.selector
        });
    }
}

abstract contract Vault$PreGetAuthorizerFunction {
    function Vault$preGetAuthorizerFunction(PreFunctionContext memory ctx) virtual external;

    function Vault$triggerPreGetAuthorizerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xaaabadc5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetAuthorizerFunction.selector
        });
    }
}

abstract contract Vault$OnGetDomainSeparatorFunction {
    function Vault$onGetDomainSeparatorFunction(FunctionContext memory ctx, Vault$GetDomainSeparatorFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xed24911d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetDomainSeparatorFunction.selector
        });
    }
}

abstract contract Vault$PreGetDomainSeparatorFunction {
    function Vault$preGetDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function Vault$triggerPreGetDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xed24911d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetDomainSeparatorFunction.selector
        });
    }
}

abstract contract Vault$OnGetInternalBalanceFunction {
    function Vault$onGetInternalBalanceFunction(FunctionContext memory ctx, Vault$GetInternalBalanceFunctionInputs memory inputs, Vault$GetInternalBalanceFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetInternalBalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x0f5a6efa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetInternalBalanceFunction.selector
        });
    }
}

abstract contract Vault$PreGetInternalBalanceFunction {
    function Vault$preGetInternalBalanceFunction(PreFunctionContext memory ctx, Vault$GetInternalBalanceFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreGetInternalBalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x0f5a6efa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetInternalBalanceFunction.selector
        });
    }
}

abstract contract Vault$OnGetNextNonceFunction {
    function Vault$onGetNextNonceFunction(FunctionContext memory ctx, Vault$GetNextNonceFunctionInputs memory inputs, Vault$GetNextNonceFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetNextNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x90193b7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetNextNonceFunction.selector
        });
    }
}

abstract contract Vault$PreGetNextNonceFunction {
    function Vault$preGetNextNonceFunction(PreFunctionContext memory ctx, Vault$GetNextNonceFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreGetNextNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x90193b7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetNextNonceFunction.selector
        });
    }
}

abstract contract Vault$OnGetPausedStateFunction {
    function Vault$onGetPausedStateFunction(FunctionContext memory ctx, Vault$GetPausedStateFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetPausedStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x1c0de051),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetPausedStateFunction.selector
        });
    }
}

abstract contract Vault$PreGetPausedStateFunction {
    function Vault$preGetPausedStateFunction(PreFunctionContext memory ctx) virtual external;

    function Vault$triggerPreGetPausedStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x1c0de051),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetPausedStateFunction.selector
        });
    }
}

abstract contract Vault$OnGetPoolFunction {
    function Vault$onGetPoolFunction(FunctionContext memory ctx, Vault$GetPoolFunctionInputs memory inputs, Vault$GetPoolFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xf6c00927),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetPoolFunction.selector
        });
    }
}

abstract contract Vault$PreGetPoolFunction {
    function Vault$preGetPoolFunction(PreFunctionContext memory ctx, Vault$GetPoolFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreGetPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xf6c00927),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetPoolFunction.selector
        });
    }
}

abstract contract Vault$OnGetPoolTokenInfoFunction {
    function Vault$onGetPoolTokenInfoFunction(FunctionContext memory ctx, Vault$GetPoolTokenInfoFunctionInputs memory inputs, Vault$GetPoolTokenInfoFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetPoolTokenInfoFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xb05f8e48),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetPoolTokenInfoFunction.selector
        });
    }
}

abstract contract Vault$PreGetPoolTokenInfoFunction {
    function Vault$preGetPoolTokenInfoFunction(PreFunctionContext memory ctx, Vault$GetPoolTokenInfoFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreGetPoolTokenInfoFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xb05f8e48),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetPoolTokenInfoFunction.selector
        });
    }
}

abstract contract Vault$OnGetPoolTokensFunction {
    function Vault$onGetPoolTokensFunction(FunctionContext memory ctx, Vault$GetPoolTokensFunctionInputs memory inputs, Vault$GetPoolTokensFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetPoolTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xf94d4668),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetPoolTokensFunction.selector
        });
    }
}

abstract contract Vault$PreGetPoolTokensFunction {
    function Vault$preGetPoolTokensFunction(PreFunctionContext memory ctx, Vault$GetPoolTokensFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreGetPoolTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xf94d4668),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetPoolTokensFunction.selector
        });
    }
}

abstract contract Vault$OnGetProtocolFeesCollectorFunction {
    function Vault$onGetProtocolFeesCollectorFunction(FunctionContext memory ctx, Vault$GetProtocolFeesCollectorFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnGetProtocolFeesCollectorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xd2946c2b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onGetProtocolFeesCollectorFunction.selector
        });
    }
}

abstract contract Vault$PreGetProtocolFeesCollectorFunction {
    function Vault$preGetProtocolFeesCollectorFunction(PreFunctionContext memory ctx) virtual external;

    function Vault$triggerPreGetProtocolFeesCollectorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xd2946c2b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preGetProtocolFeesCollectorFunction.selector
        });
    }
}

abstract contract Vault$OnHasApprovedRelayerFunction {
    function Vault$onHasApprovedRelayerFunction(FunctionContext memory ctx, Vault$HasApprovedRelayerFunctionInputs memory inputs, Vault$HasApprovedRelayerFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnHasApprovedRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xfec90d72),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onHasApprovedRelayerFunction.selector
        });
    }
}

abstract contract Vault$PreHasApprovedRelayerFunction {
    function Vault$preHasApprovedRelayerFunction(PreFunctionContext memory ctx, Vault$HasApprovedRelayerFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreHasApprovedRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xfec90d72),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preHasApprovedRelayerFunction.selector
        });
    }
}

abstract contract Vault$OnJoinPoolFunction {
    function Vault$onJoinPoolFunction(FunctionContext memory ctx, Vault$JoinPoolFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnJoinPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xb95cac28),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onJoinPoolFunction.selector
        });
    }
}

abstract contract Vault$PreJoinPoolFunction {
    function Vault$preJoinPoolFunction(PreFunctionContext memory ctx, Vault$JoinPoolFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreJoinPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xb95cac28),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preJoinPoolFunction.selector
        });
    }
}

abstract contract Vault$OnManagePoolBalanceFunction {
    function Vault$onManagePoolBalanceFunction(FunctionContext memory ctx, Vault$ManagePoolBalanceFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnManagePoolBalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xe6c46092),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onManagePoolBalanceFunction.selector
        });
    }
}

abstract contract Vault$PreManagePoolBalanceFunction {
    function Vault$preManagePoolBalanceFunction(PreFunctionContext memory ctx, Vault$ManagePoolBalanceFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreManagePoolBalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xe6c46092),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preManagePoolBalanceFunction.selector
        });
    }
}

abstract contract Vault$OnManageUserBalanceFunction {
    function Vault$onManageUserBalanceFunction(FunctionContext memory ctx, Vault$ManageUserBalanceFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnManageUserBalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x0e8e3e84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onManageUserBalanceFunction.selector
        });
    }
}

abstract contract Vault$PreManageUserBalanceFunction {
    function Vault$preManageUserBalanceFunction(PreFunctionContext memory ctx, Vault$ManageUserBalanceFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreManageUserBalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x0e8e3e84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preManageUserBalanceFunction.selector
        });
    }
}

abstract contract Vault$OnQueryBatchSwapFunction {
    function Vault$onQueryBatchSwapFunction(FunctionContext memory ctx, Vault$QueryBatchSwapFunctionInputs memory inputs, Vault$QueryBatchSwapFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnQueryBatchSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xf84d066e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onQueryBatchSwapFunction.selector
        });
    }
}

abstract contract Vault$PreQueryBatchSwapFunction {
    function Vault$preQueryBatchSwapFunction(PreFunctionContext memory ctx, Vault$QueryBatchSwapFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreQueryBatchSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xf84d066e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preQueryBatchSwapFunction.selector
        });
    }
}

abstract contract Vault$OnRegisterPoolFunction {
    function Vault$onRegisterPoolFunction(FunctionContext memory ctx, Vault$RegisterPoolFunctionInputs memory inputs, Vault$RegisterPoolFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnRegisterPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x09b2760f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onRegisterPoolFunction.selector
        });
    }
}

abstract contract Vault$PreRegisterPoolFunction {
    function Vault$preRegisterPoolFunction(PreFunctionContext memory ctx, Vault$RegisterPoolFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreRegisterPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x09b2760f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preRegisterPoolFunction.selector
        });
    }
}

abstract contract Vault$OnRegisterTokensFunction {
    function Vault$onRegisterTokensFunction(FunctionContext memory ctx, Vault$RegisterTokensFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnRegisterTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x66a9c7d2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onRegisterTokensFunction.selector
        });
    }
}

abstract contract Vault$PreRegisterTokensFunction {
    function Vault$preRegisterTokensFunction(PreFunctionContext memory ctx, Vault$RegisterTokensFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreRegisterTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x66a9c7d2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preRegisterTokensFunction.selector
        });
    }
}

abstract contract Vault$OnSetAuthorizerFunction {
    function Vault$onSetAuthorizerFunction(FunctionContext memory ctx, Vault$SetAuthorizerFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnSetAuthorizerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x058a628f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onSetAuthorizerFunction.selector
        });
    }
}

abstract contract Vault$PreSetAuthorizerFunction {
    function Vault$preSetAuthorizerFunction(PreFunctionContext memory ctx, Vault$SetAuthorizerFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreSetAuthorizerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x058a628f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preSetAuthorizerFunction.selector
        });
    }
}

abstract contract Vault$OnSetPausedFunction {
    function Vault$onSetPausedFunction(FunctionContext memory ctx, Vault$SetPausedFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnSetPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x16c38b3c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onSetPausedFunction.selector
        });
    }
}

abstract contract Vault$PreSetPausedFunction {
    function Vault$preSetPausedFunction(PreFunctionContext memory ctx, Vault$SetPausedFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreSetPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x16c38b3c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preSetPausedFunction.selector
        });
    }
}

abstract contract Vault$OnSetRelayerApprovalFunction {
    function Vault$onSetRelayerApprovalFunction(FunctionContext memory ctx, Vault$SetRelayerApprovalFunctionInputs memory inputs) virtual external;

    function Vault$triggerOnSetRelayerApprovalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xfa6e671d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onSetRelayerApprovalFunction.selector
        });
    }
}

abstract contract Vault$PreSetRelayerApprovalFunction {
    function Vault$preSetRelayerApprovalFunction(PreFunctionContext memory ctx, Vault$SetRelayerApprovalFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreSetRelayerApprovalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0xfa6e671d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preSetRelayerApprovalFunction.selector
        });
    }
}

abstract contract Vault$OnSwapFunction {
    function Vault$onSwapFunction(FunctionContext memory ctx, Vault$SwapFunctionInputs memory inputs, Vault$SwapFunctionOutputs memory outputs) virtual external;

    function Vault$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x52bbbe29),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$onSwapFunction.selector
        });
    }
}

abstract contract Vault$PreSwapFunction {
    function Vault$preSwapFunction(PreFunctionContext memory ctx, Vault$SwapFunctionInputs memory inputs) virtual external;

    function Vault$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Vault",
            selector: bytes4(0x52bbbe29),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Vault$preSwapFunction.selector
        });
    }
}

contract Vault$EmitAllEvents is
  Vault$OnAuthorizerChangedEvent,
Vault$OnExternalBalanceTransferEvent,
Vault$OnFlashLoanEvent,
Vault$OnInternalBalanceChangedEvent,
Vault$OnPausedStateChangedEvent,
Vault$OnPoolBalanceChangedEvent,
Vault$OnPoolBalanceManagedEvent,
Vault$OnPoolRegisteredEvent,
Vault$OnRelayerApprovalChangedEvent,
Vault$OnSwapEvent,
Vault$OnTokensDeregisteredEvent,
Vault$OnTokensRegisteredEvent
{
  event AuthorizerChanged(address newAuthorizer);
event ExternalBalanceTransfer(address token, address sender, address recipient, uint256 amount);
event FlashLoan(address recipient, address token, uint256 amount, uint256 feeAmount);
event InternalBalanceChanged(address user, address token, int256 delta);
event PausedStateChanged(bool paused);
event PoolBalanceChanged(bytes32 poolId, address liquidityProvider, address[] tokens, int256[] deltas, uint256[] protocolFeeAmounts);
event PoolBalanceManaged(bytes32 poolId, address assetManager, address token, int256 cashDelta, int256 managedDelta);
event PoolRegistered(bytes32 poolId, address poolAddress, uint8 specialization);
event RelayerApprovalChanged(address relayer, address sender, bool approved);
event Swap(bytes32 poolId, address tokenIn, address tokenOut, uint256 amountIn, uint256 amountOut);
event TokensDeregistered(bytes32 poolId, address[] tokens);
event TokensRegistered(bytes32 poolId, address[] tokens, address[] assetManagers);

  function Vault$onAuthorizerChangedEvent(EventContext memory ctx, Vault$AuthorizerChangedEventParams memory inputs) virtual external override {
    emit AuthorizerChanged(inputs.newAuthorizer);
  }
function Vault$onExternalBalanceTransferEvent(EventContext memory ctx, Vault$ExternalBalanceTransferEventParams memory inputs) virtual external override {
    emit ExternalBalanceTransfer(inputs.token, inputs.sender, inputs.recipient, inputs.amount);
  }
function Vault$onFlashLoanEvent(EventContext memory ctx, Vault$FlashLoanEventParams memory inputs) virtual external override {
    emit FlashLoan(inputs.recipient, inputs.token, inputs.amount, inputs.feeAmount);
  }
function Vault$onInternalBalanceChangedEvent(EventContext memory ctx, Vault$InternalBalanceChangedEventParams memory inputs) virtual external override {
    emit InternalBalanceChanged(inputs.user, inputs.token, inputs.delta);
  }
function Vault$onPausedStateChangedEvent(EventContext memory ctx, Vault$PausedStateChangedEventParams memory inputs) virtual external override {
    emit PausedStateChanged(inputs.paused);
  }
function Vault$onPoolBalanceChangedEvent(EventContext memory ctx, Vault$PoolBalanceChangedEventParams memory inputs) virtual external override {
    emit PoolBalanceChanged(inputs.poolId, inputs.liquidityProvider, inputs.tokens, inputs.deltas, inputs.protocolFeeAmounts);
  }
function Vault$onPoolBalanceManagedEvent(EventContext memory ctx, Vault$PoolBalanceManagedEventParams memory inputs) virtual external override {
    emit PoolBalanceManaged(inputs.poolId, inputs.assetManager, inputs.token, inputs.cashDelta, inputs.managedDelta);
  }
function Vault$onPoolRegisteredEvent(EventContext memory ctx, Vault$PoolRegisteredEventParams memory inputs) virtual external override {
    emit PoolRegistered(inputs.poolId, inputs.poolAddress, inputs.specialization);
  }
function Vault$onRelayerApprovalChangedEvent(EventContext memory ctx, Vault$RelayerApprovalChangedEventParams memory inputs) virtual external override {
    emit RelayerApprovalChanged(inputs.relayer, inputs.sender, inputs.approved);
  }
function Vault$onSwapEvent(EventContext memory ctx, Vault$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.poolId, inputs.tokenIn, inputs.tokenOut, inputs.amountIn, inputs.amountOut);
  }
function Vault$onTokensDeregisteredEvent(EventContext memory ctx, Vault$TokensDeregisteredEventParams memory inputs) virtual external override {
    emit TokensDeregistered(inputs.poolId, inputs.tokens);
  }
function Vault$onTokensRegisteredEvent(EventContext memory ctx, Vault$TokensRegisteredEventParams memory inputs) virtual external override {
    emit TokensRegistered(inputs.poolId, inputs.tokens, inputs.assetManagers);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](12);
    triggers[0] = this.Vault$triggerOnAuthorizerChangedEvent();
    triggers[1] = this.Vault$triggerOnExternalBalanceTransferEvent();
    triggers[2] = this.Vault$triggerOnFlashLoanEvent();
    triggers[3] = this.Vault$triggerOnInternalBalanceChangedEvent();
    triggers[4] = this.Vault$triggerOnPausedStateChangedEvent();
    triggers[5] = this.Vault$triggerOnPoolBalanceChangedEvent();
    triggers[6] = this.Vault$triggerOnPoolBalanceManagedEvent();
    triggers[7] = this.Vault$triggerOnPoolRegisteredEvent();
    triggers[8] = this.Vault$triggerOnRelayerApprovalChangedEvent();
    triggers[9] = this.Vault$triggerOnSwapEvent();
    triggers[10] = this.Vault$triggerOnTokensDeregisteredEvent();
    triggers[11] = this.Vault$triggerOnTokensRegisteredEvent();
    return triggers;
  }
}