// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function AerodromePool$Abi() pure returns (Abi memory) {
    return Abi("AerodromePool");
}
struct AerodromePool$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct AerodromePool$AllowanceFunctionInputs {
    address owner;
    address spender;
}

struct AerodromePool$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$ApproveFunctionInputs {
    address spender;
    uint256 amount;
}

struct AerodromePool$ApproveFunctionOutputs {
    bool outArg0;
}

struct AerodromePool$BalanceOfFunctionInputs {
    address account;
}

struct AerodromePool$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$BlockTimestampLastFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$BurnFunctionInputs {
    address to;
}

struct AerodromePool$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct AerodromePool$ClaimFeesFunctionOutputs {
    uint256 claimed0;
    uint256 claimed1;
}

struct AerodromePool$Claimable0FunctionInputs {
    address outArg0;
}

struct AerodromePool$Claimable0FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$Claimable1FunctionInputs {
    address outArg0;
}

struct AerodromePool$Claimable1FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$CurrentCumulativePricesFunctionOutputs {
    uint256 reserve0Cumulative;
    uint256 reserve1Cumulative;
    uint256 blockTimestamp;
}

struct AerodromePool$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct AerodromePool$DecreaseAllowanceFunctionInputs {
    address spender;
    uint256 subtractedValue;
}

struct AerodromePool$DecreaseAllowanceFunctionOutputs {
    bool outArg0;
}

struct AerodromePool$Eip712DomainFunctionOutputs {
    bytes1 fields;
    string name;
    string version;
    uint256 chainId;
    address verifyingContract;
    bytes32 salt;
    uint256[] extensions;
}

struct AerodromePool$FactoryFunctionOutputs {
    address outArg0;
}

struct AerodromePool$GetAmountOutFunctionInputs {
    uint256 amountIn;
    address tokenIn;
}

struct AerodromePool$GetAmountOutFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$GetKFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$GetReservesFunctionOutputs {
    uint256 _reserve0;
    uint256 _reserve1;
    uint256 _blockTimestampLast;
}

struct AerodromePool$IncreaseAllowanceFunctionInputs {
    address spender;
    uint256 addedValue;
}

struct AerodromePool$IncreaseAllowanceFunctionOutputs {
    bool outArg0;
}

struct AerodromePool$Index0FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$Index1FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$InitializeFunctionInputs {
    address _token0;
    address _token1;
    bool _stable;
}

struct AerodromePool$IPool$Observation {
    uint256 timestamp;
    uint256 reserve0Cumulative;
    uint256 reserve1Cumulative;
}

struct AerodromePool$LastObservationFunctionOutputs {
    AerodromePool$IPool$Observation outArg0;
}

struct AerodromePool$MetadataFunctionOutputs {
    uint256 dec0;
    uint256 dec1;
    uint256 r0;
    uint256 r1;
    bool st;
    address t0;
    address t1;
}

struct AerodromePool$MintFunctionInputs {
    address to;
}

struct AerodromePool$MintFunctionOutputs {
    uint256 liquidity;
}

struct AerodromePool$NameFunctionOutputs {
    string outArg0;
}

struct AerodromePool$NoncesFunctionInputs {
    address owner;
}

struct AerodromePool$NoncesFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$ObservationLengthFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$ObservationsFunctionInputs {
    uint256 outArg0;
}

struct AerodromePool$ObservationsFunctionOutputs {
    uint256 timestamp;
    uint256 reserve0Cumulative;
    uint256 reserve1Cumulative;
}

struct AerodromePool$PeriodSizeFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$PermitFunctionInputs {
    address owner;
    address spender;
    uint256 value;
    uint256 deadline;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct AerodromePool$PoolFeesFunctionOutputs {
    address outArg0;
}

struct AerodromePool$PricesFunctionInputs {
    address tokenIn;
    uint256 amountIn;
    uint256 points;
}

struct AerodromePool$PricesFunctionOutputs {
    uint256[] outArg0;
}

struct AerodromePool$QuoteFunctionInputs {
    address tokenIn;
    uint256 amountIn;
    uint256 granularity;
}

struct AerodromePool$QuoteFunctionOutputs {
    uint256 amountOut;
}

struct AerodromePool$Reserve0FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$Reserve0CumulativeLastFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$Reserve1FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$Reserve1CumulativeLastFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$SampleFunctionInputs {
    address tokenIn;
    uint256 amountIn;
    uint256 points;
    uint256 window;
}

struct AerodromePool$SampleFunctionOutputs {
    uint256[] outArg0;
}

struct AerodromePool$SetNameFunctionInputs {
    string __name;
}

struct AerodromePool$SetSymbolFunctionInputs {
    string __symbol;
}

struct AerodromePool$SkimFunctionInputs {
    address to;
}

struct AerodromePool$StableFunctionOutputs {
    bool outArg0;
}

struct AerodromePool$SupplyIndex0FunctionInputs {
    address outArg0;
}

struct AerodromePool$SupplyIndex0FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$SupplyIndex1FunctionInputs {
    address outArg0;
}

struct AerodromePool$SupplyIndex1FunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$SwapFunctionInputs {
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
    bytes data;
}

struct AerodromePool$SymbolFunctionOutputs {
    string outArg0;
}

struct AerodromePool$Token0FunctionOutputs {
    address outArg0;
}

struct AerodromePool$Token1FunctionOutputs {
    address outArg0;
}

struct AerodromePool$TokensFunctionOutputs {
    address outArg0;
    address outArg1;
}

struct AerodromePool$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct AerodromePool$TransferFunctionInputs {
    address to;
    uint256 amount;
}

struct AerodromePool$TransferFunctionOutputs {
    bool outArg0;
}

struct AerodromePool$TransferFromFunctionInputs {
    address from;
    address to;
    uint256 amount;
}

struct AerodromePool$TransferFromFunctionOutputs {
    bool outArg0;
}

struct AerodromePool$ClaimEventParams {
    address sender;
    address recipient;
    uint256 amount0;
    uint256 amount1;
}

struct AerodromePool$FeesEventParams {
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct AerodromePool$MintEventParams {
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct AerodromePool$SwapEventParams {
    address sender;
    address to;
    uint256 amount0In;
    uint256 amount1In;
    uint256 amount0Out;
    uint256 amount1Out;
}

struct AerodromePool$SyncEventParams {
    uint256 reserve0;
    uint256 reserve1;
}

struct AerodromePool$TransferEventParams {
    address from;
    address to;
    uint256 value;
}

abstract contract AerodromePool$OnClaimEvent {
    function AerodromePool$onClaimEvent(EventContext memory ctx, AerodromePool$ClaimEventParams memory inputs) virtual external;

    function AerodromePool$triggerOnClaimEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes32(0x865ca08d59f5cb456e85cd2f7ef63664ea4f73327414e9d8152c4158b0e94645),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onClaimEvent.selector
        });
    }
}

abstract contract AerodromePool$OnFeesEvent {
    function AerodromePool$onFeesEvent(EventContext memory ctx, AerodromePool$FeesEventParams memory inputs) virtual external;

    function AerodromePool$triggerOnFeesEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes32(0x112c256902bf554b6ed882d2936687aaeb4225e8cd5b51303c90ca6cf43a8602),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onFeesEvent.selector
        });
    }
}

abstract contract AerodromePool$OnMintEvent {
    function AerodromePool$onMintEvent(EventContext memory ctx, AerodromePool$MintEventParams memory inputs) virtual external;

    function AerodromePool$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes32(0x4c209b5fc8ad50758f13e2e1088ba56a560dff690a1c6fef26394f4c03821c4f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onMintEvent.selector
        });
    }
}

abstract contract AerodromePool$OnSwapEvent {
    function AerodromePool$onSwapEvent(EventContext memory ctx, AerodromePool$SwapEventParams memory inputs) virtual external;

    function AerodromePool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes32(0xb3e2773606abfd36b5bd91394b3a54d1398336c65005baf7bf7a05efeffaf75b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSwapEvent.selector
        });
    }
}

abstract contract AerodromePool$OnSyncEvent {
    function AerodromePool$onSyncEvent(EventContext memory ctx, AerodromePool$SyncEventParams memory inputs) virtual external;

    function AerodromePool$triggerOnSyncEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes32(0xcf2aa50876cdfbb541206f89af0ee78d44a2abf8d328e37fa4917f982149848a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSyncEvent.selector
        });
    }
}

abstract contract AerodromePool$OnTransferEvent {
    function AerodromePool$onTransferEvent(EventContext memory ctx, AerodromePool$TransferEventParams memory inputs) virtual external;

    function AerodromePool$triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes32(0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onTransferEvent.selector
        });
    }
}

abstract contract AerodromePool$OnDomainSeparatorFunction {
    function AerodromePool$onDomainSeparatorFunction(FunctionContext memory ctx, AerodromePool$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract AerodromePool$PreDomainSeparatorFunction {
    function AerodromePool$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract AerodromePool$OnAllowanceFunction {
    function AerodromePool$onAllowanceFunction(FunctionContext memory ctx, AerodromePool$AllowanceFunctionInputs memory inputs, AerodromePool$AllowanceFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onAllowanceFunction.selector
        });
    }
}

abstract contract AerodromePool$PreAllowanceFunction {
    function AerodromePool$preAllowanceFunction(PreFunctionContext memory ctx, AerodromePool$AllowanceFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preAllowanceFunction.selector
        });
    }
}

abstract contract AerodromePool$OnApproveFunction {
    function AerodromePool$onApproveFunction(FunctionContext memory ctx, AerodromePool$ApproveFunctionInputs memory inputs, AerodromePool$ApproveFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onApproveFunction.selector
        });
    }
}

abstract contract AerodromePool$PreApproveFunction {
    function AerodromePool$preApproveFunction(PreFunctionContext memory ctx, AerodromePool$ApproveFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preApproveFunction.selector
        });
    }
}

abstract contract AerodromePool$OnBalanceOfFunction {
    function AerodromePool$onBalanceOfFunction(FunctionContext memory ctx, AerodromePool$BalanceOfFunctionInputs memory inputs, AerodromePool$BalanceOfFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onBalanceOfFunction.selector
        });
    }
}

abstract contract AerodromePool$PreBalanceOfFunction {
    function AerodromePool$preBalanceOfFunction(PreFunctionContext memory ctx, AerodromePool$BalanceOfFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preBalanceOfFunction.selector
        });
    }
}

abstract contract AerodromePool$OnBlockTimestampLastFunction {
    function AerodromePool$onBlockTimestampLastFunction(FunctionContext memory ctx, AerodromePool$BlockTimestampLastFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnBlockTimestampLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc5700a02),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onBlockTimestampLastFunction.selector
        });
    }
}

abstract contract AerodromePool$PreBlockTimestampLastFunction {
    function AerodromePool$preBlockTimestampLastFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreBlockTimestampLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc5700a02),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preBlockTimestampLastFunction.selector
        });
    }
}

abstract contract AerodromePool$OnBurnFunction {
    function AerodromePool$onBurnFunction(FunctionContext memory ctx, AerodromePool$BurnFunctionInputs memory inputs, AerodromePool$BurnFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x89afcb44),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onBurnFunction.selector
        });
    }
}

abstract contract AerodromePool$PreBurnFunction {
    function AerodromePool$preBurnFunction(PreFunctionContext memory ctx, AerodromePool$BurnFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x89afcb44),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preBurnFunction.selector
        });
    }
}

abstract contract AerodromePool$OnClaimFeesFunction {
    function AerodromePool$onClaimFeesFunction(FunctionContext memory ctx, AerodromePool$ClaimFeesFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnClaimFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xd294f093),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onClaimFeesFunction.selector
        });
    }
}

abstract contract AerodromePool$PreClaimFeesFunction {
    function AerodromePool$preClaimFeesFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreClaimFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xd294f093),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preClaimFeesFunction.selector
        });
    }
}

abstract contract AerodromePool$OnClaimable0Function {
    function AerodromePool$onClaimable0Function(FunctionContext memory ctx, AerodromePool$Claimable0FunctionInputs memory inputs, AerodromePool$Claimable0FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnClaimable0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x4d5a9f8a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onClaimable0Function.selector
        });
    }
}

abstract contract AerodromePool$PreClaimable0Function {
    function AerodromePool$preClaimable0Function(PreFunctionContext memory ctx, AerodromePool$Claimable0FunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreClaimable0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x4d5a9f8a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preClaimable0Function.selector
        });
    }
}

abstract contract AerodromePool$OnClaimable1Function {
    function AerodromePool$onClaimable1Function(FunctionContext memory ctx, AerodromePool$Claimable1FunctionInputs memory inputs, AerodromePool$Claimable1FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnClaimable1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xa1ac4d13),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onClaimable1Function.selector
        });
    }
}

abstract contract AerodromePool$PreClaimable1Function {
    function AerodromePool$preClaimable1Function(PreFunctionContext memory ctx, AerodromePool$Claimable1FunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreClaimable1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xa1ac4d13),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preClaimable1Function.selector
        });
    }
}

abstract contract AerodromePool$OnCurrentCumulativePricesFunction {
    function AerodromePool$onCurrentCumulativePricesFunction(FunctionContext memory ctx, AerodromePool$CurrentCumulativePricesFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnCurrentCumulativePricesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x1df8c717),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onCurrentCumulativePricesFunction.selector
        });
    }
}

abstract contract AerodromePool$PreCurrentCumulativePricesFunction {
    function AerodromePool$preCurrentCumulativePricesFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreCurrentCumulativePricesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x1df8c717),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preCurrentCumulativePricesFunction.selector
        });
    }
}

abstract contract AerodromePool$OnDecimalsFunction {
    function AerodromePool$onDecimalsFunction(FunctionContext memory ctx, AerodromePool$DecimalsFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onDecimalsFunction.selector
        });
    }
}

abstract contract AerodromePool$PreDecimalsFunction {
    function AerodromePool$preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preDecimalsFunction.selector
        });
    }
}

abstract contract AerodromePool$OnDecreaseAllowanceFunction {
    function AerodromePool$onDecreaseAllowanceFunction(FunctionContext memory ctx, AerodromePool$DecreaseAllowanceFunctionInputs memory inputs, AerodromePool$DecreaseAllowanceFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnDecreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xa457c2d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onDecreaseAllowanceFunction.selector
        });
    }
}

abstract contract AerodromePool$PreDecreaseAllowanceFunction {
    function AerodromePool$preDecreaseAllowanceFunction(PreFunctionContext memory ctx, AerodromePool$DecreaseAllowanceFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreDecreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xa457c2d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preDecreaseAllowanceFunction.selector
        });
    }
}

abstract contract AerodromePool$OnEip712DomainFunction {
    function AerodromePool$onEip712DomainFunction(FunctionContext memory ctx, AerodromePool$Eip712DomainFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnEip712DomainFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x84b0196e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onEip712DomainFunction.selector
        });
    }
}

abstract contract AerodromePool$PreEip712DomainFunction {
    function AerodromePool$preEip712DomainFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreEip712DomainFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x84b0196e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preEip712DomainFunction.selector
        });
    }
}

abstract contract AerodromePool$OnFactoryFunction {
    function AerodromePool$onFactoryFunction(FunctionContext memory ctx, AerodromePool$FactoryFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onFactoryFunction.selector
        });
    }
}

abstract contract AerodromePool$PreFactoryFunction {
    function AerodromePool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preFactoryFunction.selector
        });
    }
}

abstract contract AerodromePool$OnGetAmountOutFunction {
    function AerodromePool$onGetAmountOutFunction(FunctionContext memory ctx, AerodromePool$GetAmountOutFunctionInputs memory inputs, AerodromePool$GetAmountOutFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnGetAmountOutFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xf140a35a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onGetAmountOutFunction.selector
        });
    }
}

abstract contract AerodromePool$PreGetAmountOutFunction {
    function AerodromePool$preGetAmountOutFunction(PreFunctionContext memory ctx, AerodromePool$GetAmountOutFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreGetAmountOutFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xf140a35a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preGetAmountOutFunction.selector
        });
    }
}

abstract contract AerodromePool$OnGetKFunction {
    function AerodromePool$onGetKFunction(FunctionContext memory ctx, AerodromePool$GetKFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnGetKFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xee39e7a0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onGetKFunction.selector
        });
    }
}

abstract contract AerodromePool$PreGetKFunction {
    function AerodromePool$preGetKFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreGetKFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xee39e7a0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preGetKFunction.selector
        });
    }
}

abstract contract AerodromePool$OnGetReservesFunction {
    function AerodromePool$onGetReservesFunction(FunctionContext memory ctx, AerodromePool$GetReservesFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onGetReservesFunction.selector
        });
    }
}

abstract contract AerodromePool$PreGetReservesFunction {
    function AerodromePool$preGetReservesFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preGetReservesFunction.selector
        });
    }
}

abstract contract AerodromePool$OnIncreaseAllowanceFunction {
    function AerodromePool$onIncreaseAllowanceFunction(FunctionContext memory ctx, AerodromePool$IncreaseAllowanceFunctionInputs memory inputs, AerodromePool$IncreaseAllowanceFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnIncreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x39509351),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onIncreaseAllowanceFunction.selector
        });
    }
}

abstract contract AerodromePool$PreIncreaseAllowanceFunction {
    function AerodromePool$preIncreaseAllowanceFunction(PreFunctionContext memory ctx, AerodromePool$IncreaseAllowanceFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreIncreaseAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x39509351),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preIncreaseAllowanceFunction.selector
        });
    }
}

abstract contract AerodromePool$OnIndex0Function {
    function AerodromePool$onIndex0Function(FunctionContext memory ctx, AerodromePool$Index0FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnIndex0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x32c0defd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onIndex0Function.selector
        });
    }
}

abstract contract AerodromePool$PreIndex0Function {
    function AerodromePool$preIndex0Function(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreIndex0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x32c0defd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preIndex0Function.selector
        });
    }
}

abstract contract AerodromePool$OnIndex1Function {
    function AerodromePool$onIndex1Function(FunctionContext memory ctx, AerodromePool$Index1FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnIndex1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xbda39cad),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onIndex1Function.selector
        });
    }
}

abstract contract AerodromePool$PreIndex1Function {
    function AerodromePool$preIndex1Function(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreIndex1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xbda39cad),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preIndex1Function.selector
        });
    }
}

abstract contract AerodromePool$OnInitializeFunction {
    function AerodromePool$onInitializeFunction(FunctionContext memory ctx, AerodromePool$InitializeFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xe4bbb5a8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onInitializeFunction.selector
        });
    }
}

abstract contract AerodromePool$PreInitializeFunction {
    function AerodromePool$preInitializeFunction(PreFunctionContext memory ctx, AerodromePool$InitializeFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xe4bbb5a8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preInitializeFunction.selector
        });
    }
}

abstract contract AerodromePool$OnLastObservationFunction {
    function AerodromePool$onLastObservationFunction(FunctionContext memory ctx, AerodromePool$LastObservationFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnLastObservationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x8a7b8cf2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onLastObservationFunction.selector
        });
    }
}

abstract contract AerodromePool$PreLastObservationFunction {
    function AerodromePool$preLastObservationFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreLastObservationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x8a7b8cf2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preLastObservationFunction.selector
        });
    }
}

abstract contract AerodromePool$OnMetadataFunction {
    function AerodromePool$onMetadataFunction(FunctionContext memory ctx, AerodromePool$MetadataFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnMetadataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x392f37e9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onMetadataFunction.selector
        });
    }
}

abstract contract AerodromePool$PreMetadataFunction {
    function AerodromePool$preMetadataFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreMetadataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x392f37e9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preMetadataFunction.selector
        });
    }
}

abstract contract AerodromePool$OnMintFunction {
    function AerodromePool$onMintFunction(FunctionContext memory ctx, AerodromePool$MintFunctionInputs memory inputs, AerodromePool$MintFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x6a627842),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onMintFunction.selector
        });
    }
}

abstract contract AerodromePool$PreMintFunction {
    function AerodromePool$preMintFunction(PreFunctionContext memory ctx, AerodromePool$MintFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x6a627842),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preMintFunction.selector
        });
    }
}

abstract contract AerodromePool$OnNameFunction {
    function AerodromePool$onNameFunction(FunctionContext memory ctx, AerodromePool$NameFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onNameFunction.selector
        });
    }
}

abstract contract AerodromePool$PreNameFunction {
    function AerodromePool$preNameFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preNameFunction.selector
        });
    }
}

abstract contract AerodromePool$OnNoncesFunction {
    function AerodromePool$onNoncesFunction(FunctionContext memory ctx, AerodromePool$NoncesFunctionInputs memory inputs, AerodromePool$NoncesFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x7ecebe00),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onNoncesFunction.selector
        });
    }
}

abstract contract AerodromePool$PreNoncesFunction {
    function AerodromePool$preNoncesFunction(PreFunctionContext memory ctx, AerodromePool$NoncesFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x7ecebe00),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preNoncesFunction.selector
        });
    }
}

abstract contract AerodromePool$OnObservationLengthFunction {
    function AerodromePool$onObservationLengthFunction(FunctionContext memory ctx, AerodromePool$ObservationLengthFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnObservationLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xebeb31db),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onObservationLengthFunction.selector
        });
    }
}

abstract contract AerodromePool$PreObservationLengthFunction {
    function AerodromePool$preObservationLengthFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreObservationLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xebeb31db),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preObservationLengthFunction.selector
        });
    }
}

abstract contract AerodromePool$OnObservationsFunction {
    function AerodromePool$onObservationsFunction(FunctionContext memory ctx, AerodromePool$ObservationsFunctionInputs memory inputs, AerodromePool$ObservationsFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onObservationsFunction.selector
        });
    }
}

abstract contract AerodromePool$PreObservationsFunction {
    function AerodromePool$preObservationsFunction(PreFunctionContext memory ctx, AerodromePool$ObservationsFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preObservationsFunction.selector
        });
    }
}

abstract contract AerodromePool$OnPeriodSizeFunction {
    function AerodromePool$onPeriodSizeFunction(FunctionContext memory ctx, AerodromePool$PeriodSizeFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnPeriodSizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xe4463eb2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onPeriodSizeFunction.selector
        });
    }
}

abstract contract AerodromePool$PrePeriodSizeFunction {
    function AerodromePool$prePeriodSizeFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPrePeriodSizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xe4463eb2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$prePeriodSizeFunction.selector
        });
    }
}

abstract contract AerodromePool$OnPermitFunction {
    function AerodromePool$onPermitFunction(FunctionContext memory ctx, AerodromePool$PermitFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerOnPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xd505accf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onPermitFunction.selector
        });
    }
}

abstract contract AerodromePool$PrePermitFunction {
    function AerodromePool$prePermitFunction(PreFunctionContext memory ctx, AerodromePool$PermitFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPrePermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xd505accf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$prePermitFunction.selector
        });
    }
}

abstract contract AerodromePool$OnPoolFeesFunction {
    function AerodromePool$onPoolFeesFunction(FunctionContext memory ctx, AerodromePool$PoolFeesFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnPoolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x33580959),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onPoolFeesFunction.selector
        });
    }
}

abstract contract AerodromePool$PrePoolFeesFunction {
    function AerodromePool$prePoolFeesFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPrePoolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x33580959),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$prePoolFeesFunction.selector
        });
    }
}

abstract contract AerodromePool$OnPricesFunction {
    function AerodromePool$onPricesFunction(FunctionContext memory ctx, AerodromePool$PricesFunctionInputs memory inputs, AerodromePool$PricesFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnPricesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x5881c475),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onPricesFunction.selector
        });
    }
}

abstract contract AerodromePool$PrePricesFunction {
    function AerodromePool$prePricesFunction(PreFunctionContext memory ctx, AerodromePool$PricesFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPrePricesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x5881c475),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$prePricesFunction.selector
        });
    }
}

abstract contract AerodromePool$OnQuoteFunction {
    function AerodromePool$onQuoteFunction(FunctionContext memory ctx, AerodromePool$QuoteFunctionInputs memory inputs, AerodromePool$QuoteFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnQuoteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x9e8cc04b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onQuoteFunction.selector
        });
    }
}

abstract contract AerodromePool$PreQuoteFunction {
    function AerodromePool$preQuoteFunction(PreFunctionContext memory ctx, AerodromePool$QuoteFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreQuoteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x9e8cc04b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preQuoteFunction.selector
        });
    }
}

abstract contract AerodromePool$OnReserve0Function {
    function AerodromePool$onReserve0Function(FunctionContext memory ctx, AerodromePool$Reserve0FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnReserve0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x443cb4bc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onReserve0Function.selector
        });
    }
}

abstract contract AerodromePool$PreReserve0Function {
    function AerodromePool$preReserve0Function(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreReserve0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x443cb4bc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preReserve0Function.selector
        });
    }
}

abstract contract AerodromePool$OnReserve0CumulativeLastFunction {
    function AerodromePool$onReserve0CumulativeLastFunction(FunctionContext memory ctx, AerodromePool$Reserve0CumulativeLastFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnReserve0CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xbf944dbc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onReserve0CumulativeLastFunction.selector
        });
    }
}

abstract contract AerodromePool$PreReserve0CumulativeLastFunction {
    function AerodromePool$preReserve0CumulativeLastFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreReserve0CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xbf944dbc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preReserve0CumulativeLastFunction.selector
        });
    }
}

abstract contract AerodromePool$OnReserve1Function {
    function AerodromePool$onReserve1Function(FunctionContext memory ctx, AerodromePool$Reserve1FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnReserve1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x5a76f25e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onReserve1Function.selector
        });
    }
}

abstract contract AerodromePool$PreReserve1Function {
    function AerodromePool$preReserve1Function(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreReserve1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x5a76f25e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preReserve1Function.selector
        });
    }
}

abstract contract AerodromePool$OnReserve1CumulativeLastFunction {
    function AerodromePool$onReserve1CumulativeLastFunction(FunctionContext memory ctx, AerodromePool$Reserve1CumulativeLastFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnReserve1CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc245febc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onReserve1CumulativeLastFunction.selector
        });
    }
}

abstract contract AerodromePool$PreReserve1CumulativeLastFunction {
    function AerodromePool$preReserve1CumulativeLastFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreReserve1CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc245febc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preReserve1CumulativeLastFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSampleFunction {
    function AerodromePool$onSampleFunction(FunctionContext memory ctx, AerodromePool$SampleFunctionInputs memory inputs, AerodromePool$SampleFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnSampleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x13345fe1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSampleFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSampleFunction {
    function AerodromePool$preSampleFunction(PreFunctionContext memory ctx, AerodromePool$SampleFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSampleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x13345fe1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSampleFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSetNameFunction {
    function AerodromePool$onSetNameFunction(FunctionContext memory ctx, AerodromePool$SetNameFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerOnSetNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc47f0027),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSetNameFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSetNameFunction {
    function AerodromePool$preSetNameFunction(PreFunctionContext memory ctx, AerodromePool$SetNameFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSetNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xc47f0027),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSetNameFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSetSymbolFunction {
    function AerodromePool$onSetSymbolFunction(FunctionContext memory ctx, AerodromePool$SetSymbolFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerOnSetSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xb84c8246),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSetSymbolFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSetSymbolFunction {
    function AerodromePool$preSetSymbolFunction(PreFunctionContext memory ctx, AerodromePool$SetSymbolFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSetSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xb84c8246),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSetSymbolFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSkimFunction {
    function AerodromePool$onSkimFunction(FunctionContext memory ctx, AerodromePool$SkimFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xbc25cf77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSkimFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSkimFunction {
    function AerodromePool$preSkimFunction(PreFunctionContext memory ctx, AerodromePool$SkimFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xbc25cf77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSkimFunction.selector
        });
    }
}

abstract contract AerodromePool$OnStableFunction {
    function AerodromePool$onStableFunction(FunctionContext memory ctx, AerodromePool$StableFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnStableFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x22be3de1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onStableFunction.selector
        });
    }
}

abstract contract AerodromePool$PreStableFunction {
    function AerodromePool$preStableFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreStableFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x22be3de1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preStableFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSupplyIndex0Function {
    function AerodromePool$onSupplyIndex0Function(FunctionContext memory ctx, AerodromePool$SupplyIndex0FunctionInputs memory inputs, AerodromePool$SupplyIndex0FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnSupplyIndex0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x9f767c88),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSupplyIndex0Function.selector
        });
    }
}

abstract contract AerodromePool$PreSupplyIndex0Function {
    function AerodromePool$preSupplyIndex0Function(PreFunctionContext memory ctx, AerodromePool$SupplyIndex0FunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSupplyIndex0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x9f767c88),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSupplyIndex0Function.selector
        });
    }
}

abstract contract AerodromePool$OnSupplyIndex1Function {
    function AerodromePool$onSupplyIndex1Function(FunctionContext memory ctx, AerodromePool$SupplyIndex1FunctionInputs memory inputs, AerodromePool$SupplyIndex1FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnSupplyIndex1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x205aabf1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSupplyIndex1Function.selector
        });
    }
}

abstract contract AerodromePool$PreSupplyIndex1Function {
    function AerodromePool$preSupplyIndex1Function(PreFunctionContext memory ctx, AerodromePool$SupplyIndex1FunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSupplyIndex1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x205aabf1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSupplyIndex1Function.selector
        });
    }
}

abstract contract AerodromePool$OnSwapFunction {
    function AerodromePool$onSwapFunction(FunctionContext memory ctx, AerodromePool$SwapFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSwapFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSwapFunction {
    function AerodromePool$preSwapFunction(PreFunctionContext memory ctx, AerodromePool$SwapFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSwapFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSymbolFunction {
    function AerodromePool$onSymbolFunction(FunctionContext memory ctx, AerodromePool$SymbolFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSymbolFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSymbolFunction {
    function AerodromePool$preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSymbolFunction.selector
        });
    }
}

abstract contract AerodromePool$OnSyncFunction {
    function AerodromePool$onSyncFunction(FunctionContext memory ctx) virtual external;

    function AerodromePool$triggerOnSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onSyncFunction.selector
        });
    }
}

abstract contract AerodromePool$PreSyncFunction {
    function AerodromePool$preSyncFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preSyncFunction.selector
        });
    }
}

abstract contract AerodromePool$OnToken0Function {
    function AerodromePool$onToken0Function(FunctionContext memory ctx, AerodromePool$Token0FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onToken0Function.selector
        });
    }
}

abstract contract AerodromePool$PreToken0Function {
    function AerodromePool$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preToken0Function.selector
        });
    }
}

abstract contract AerodromePool$OnToken1Function {
    function AerodromePool$onToken1Function(FunctionContext memory ctx, AerodromePool$Token1FunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onToken1Function.selector
        });
    }
}

abstract contract AerodromePool$PreToken1Function {
    function AerodromePool$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preToken1Function.selector
        });
    }
}

abstract contract AerodromePool$OnTokensFunction {
    function AerodromePool$onTokensFunction(FunctionContext memory ctx, AerodromePool$TokensFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x9d63848a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onTokensFunction.selector
        });
    }
}

abstract contract AerodromePool$PreTokensFunction {
    function AerodromePool$preTokensFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x9d63848a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preTokensFunction.selector
        });
    }
}

abstract contract AerodromePool$OnTotalSupplyFunction {
    function AerodromePool$onTotalSupplyFunction(FunctionContext memory ctx, AerodromePool$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onTotalSupplyFunction.selector
        });
    }
}

abstract contract AerodromePool$PreTotalSupplyFunction {
    function AerodromePool$preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function AerodromePool$triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preTotalSupplyFunction.selector
        });
    }
}

abstract contract AerodromePool$OnTransferFunction {
    function AerodromePool$onTransferFunction(FunctionContext memory ctx, AerodromePool$TransferFunctionInputs memory inputs, AerodromePool$TransferFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onTransferFunction.selector
        });
    }
}

abstract contract AerodromePool$PreTransferFunction {
    function AerodromePool$preTransferFunction(PreFunctionContext memory ctx, AerodromePool$TransferFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preTransferFunction.selector
        });
    }
}

abstract contract AerodromePool$OnTransferFromFunction {
    function AerodromePool$onTransferFromFunction(FunctionContext memory ctx, AerodromePool$TransferFromFunctionInputs memory inputs, AerodromePool$TransferFromFunctionOutputs memory outputs) virtual external;

    function AerodromePool$triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$onTransferFromFunction.selector
        });
    }
}

abstract contract AerodromePool$PreTransferFromFunction {
    function AerodromePool$preTransferFromFunction(PreFunctionContext memory ctx, AerodromePool$TransferFromFunctionInputs memory inputs) virtual external;

    function AerodromePool$triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AerodromePool",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AerodromePool$preTransferFromFunction.selector
        });
    }
}


struct AerodromePool$EmitAllEvents$Claim {
  address sender;
  address recipient;
  uint256 amount0;
  uint256 amount1;
}

struct AerodromePool$EmitAllEvents$Fees {
  address sender;
  uint256 amount0;
  uint256 amount1;
}

struct AerodromePool$EmitAllEvents$Mint {
  address sender;
  uint256 amount0;
  uint256 amount1;
}

struct AerodromePool$EmitAllEvents$Swap {
  address sender;
  address to;
  uint256 amount0In;
  uint256 amount1In;
  uint256 amount0Out;
  uint256 amount1Out;
}

struct AerodromePool$EmitAllEvents$Sync {
  uint256 reserve0;
  uint256 reserve1;
}

struct AerodromePool$EmitAllEvents$Transfer {
  address from;
  address to;
  uint256 value;
}

contract AerodromePool$EmitAllEvents is
  AerodromePool$OnClaimEvent,
AerodromePool$OnFeesEvent,
AerodromePool$OnMintEvent,
AerodromePool$OnSwapEvent,
AerodromePool$OnSyncEvent,
AerodromePool$OnTransferEvent
{
  event Claim(AerodromePool$EmitAllEvents$Claim);
  event Fees(AerodromePool$EmitAllEvents$Fees);
  event Mint(AerodromePool$EmitAllEvents$Mint);
  event Swap(AerodromePool$EmitAllEvents$Swap);
  event Sync(AerodromePool$EmitAllEvents$Sync);
  event Transfer(AerodromePool$EmitAllEvents$Transfer);

  function AerodromePool$onClaimEvent(EventContext memory ctx, AerodromePool$ClaimEventParams memory inputs) virtual external override {
    emit Claim(AerodromePool$EmitAllEvents$Claim(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1));
  }
function AerodromePool$onFeesEvent(EventContext memory ctx, AerodromePool$FeesEventParams memory inputs) virtual external override {
    emit Fees(AerodromePool$EmitAllEvents$Fees(inputs.sender, inputs.amount0, inputs.amount1));
  }
function AerodromePool$onMintEvent(EventContext memory ctx, AerodromePool$MintEventParams memory inputs) virtual external override {
    emit Mint(AerodromePool$EmitAllEvents$Mint(inputs.sender, inputs.amount0, inputs.amount1));
  }
function AerodromePool$onSwapEvent(EventContext memory ctx, AerodromePool$SwapEventParams memory inputs) virtual external override {
    emit Swap(AerodromePool$EmitAllEvents$Swap(inputs.sender, inputs.to, inputs.amount0In, inputs.amount1In, inputs.amount0Out, inputs.amount1Out));
  }
function AerodromePool$onSyncEvent(EventContext memory ctx, AerodromePool$SyncEventParams memory inputs) virtual external override {
    emit Sync(AerodromePool$EmitAllEvents$Sync(inputs.reserve0, inputs.reserve1));
  }
function AerodromePool$onTransferEvent(EventContext memory ctx, AerodromePool$TransferEventParams memory inputs) virtual external override {
    emit Transfer(AerodromePool$EmitAllEvents$Transfer(inputs.from, inputs.to, inputs.value));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](6);
    triggers[0] = this.AerodromePool$triggerOnClaimEvent();
    triggers[1] = this.AerodromePool$triggerOnFeesEvent();
    triggers[2] = this.AerodromePool$triggerOnMintEvent();
    triggers[3] = this.AerodromePool$triggerOnSwapEvent();
    triggers[4] = this.AerodromePool$triggerOnSyncEvent();
    triggers[5] = this.AerodromePool$triggerOnTransferEvent();
    return triggers;
  }
}