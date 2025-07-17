// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function FluidDexT1$Abi() pure returns (Abi memory) {
    return Abi("FluidDexT1");
}
struct FluidDexT1$DexIdFunctionOutputs {
    uint256 outArg0;
}

struct FluidDexT1$BorrowFunctionInputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
    uint256 maxSharesAmt_;
    address to_;
}

struct FluidDexT1$BorrowFunctionOutputs {
    uint256 shares_;
}

struct FluidDexT1$BorrowPerfectFunctionInputs {
    uint256 shares_;
    uint256 minToken0Borrow_;
    uint256 minToken1Borrow_;
    address to_;
}

struct FluidDexT1$BorrowPerfectFunctionOutputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
}

struct FluidDexT1$Structs$Implementations {
    address shift;
    address admin;
    address colOperations;
    address debtOperations;
    address perfectOperationsAndSwapOut;
}

struct FluidDexT1$Structs$ConstantViews {
    uint256 dexId;
    address liquidity;
    address factory;
    FluidDexT1$Structs$Implementations implementations;
    address deployerContract;
    address token0;
    address token1;
    bytes32 supplyToken0Slot;
    bytes32 borrowToken0Slot;
    bytes32 supplyToken1Slot;
    bytes32 borrowToken1Slot;
    bytes32 exchangePriceToken0Slot;
    bytes32 exchangePriceToken1Slot;
    uint256 oracleMapping;
}

struct FluidDexT1$ConstantsViewFunctionOutputs {
    FluidDexT1$Structs$ConstantViews constantsView_;
}

struct FluidDexT1$Structs$ConstantViews2 {
    uint256 token0NumeratorPrecision;
    uint256 token0DenominatorPrecision;
    uint256 token1NumeratorPrecision;
    uint256 token1DenominatorPrecision;
}

struct FluidDexT1$ConstantsView2FunctionOutputs {
    FluidDexT1$Structs$ConstantViews2 constantsView2_;
}

struct FluidDexT1$DepositFunctionInputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
    uint256 minSharesAmt_;
    bool estimate_;
}

struct FluidDexT1$DepositFunctionOutputs {
    uint256 shares_;
}

struct FluidDexT1$DepositPerfectFunctionInputs {
    uint256 shares_;
    uint256 maxToken0Deposit_;
    uint256 maxToken1Deposit_;
    bool estimate_;
}

struct FluidDexT1$DepositPerfectFunctionOutputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
}

struct FluidDexT1$GetCollateralReservesFunctionInputs {
    uint256 geometricMean_;
    uint256 upperRange_;
    uint256 lowerRange_;
    uint256 token0SupplyExchangePrice_;
    uint256 token1SupplyExchangePrice_;
}

struct FluidDexT1$Structs$CollateralReserves {
    uint256 token0RealReserves;
    uint256 token1RealReserves;
    uint256 token0ImaginaryReserves;
    uint256 token1ImaginaryReserves;
}

struct FluidDexT1$GetCollateralReservesFunctionOutputs {
    FluidDexT1$Structs$CollateralReserves c_;
}

struct FluidDexT1$GetDebtReservesFunctionInputs {
    uint256 geometricMean_;
    uint256 upperRange_;
    uint256 lowerRange_;
    uint256 token0BorrowExchangePrice_;
    uint256 token1BorrowExchangePrice_;
}

struct FluidDexT1$Structs$DebtReserves {
    uint256 token0Debt;
    uint256 token1Debt;
    uint256 token0RealReserves;
    uint256 token1RealReserves;
    uint256 token0ImaginaryReserves;
    uint256 token1ImaginaryReserves;
}

struct FluidDexT1$GetDebtReservesFunctionOutputs {
    FluidDexT1$Structs$DebtReserves d_;
}

struct FluidDexT1$LiquidityCallbackFunctionInputs {
    address token_;
    uint256 amount_;
    bytes data_;
}

struct FluidDexT1$OraclePriceFunctionInputs {
    uint256[] secondsAgos_;
}

struct FluidDexT1$Structs$Oracle {
    uint256 twap1by0;
    uint256 lowestPrice1by0;
    uint256 highestPrice1by0;
    uint256 twap0by1;
    uint256 lowestPrice0by1;
    uint256 highestPrice0by1;
}

struct FluidDexT1$OraclePriceFunctionOutputs {
    FluidDexT1$Structs$Oracle[] twaps_;
    uint256 currentPrice_;
}

struct FluidDexT1$PaybackFunctionInputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
    uint256 minSharesAmt_;
    bool estimate_;
}

struct FluidDexT1$PaybackFunctionOutputs {
    uint256 shares_;
}

struct FluidDexT1$PaybackPerfectFunctionInputs {
    uint256 shares_;
    uint256 maxToken0Payback_;
    uint256 maxToken1Payback_;
    bool estimate_;
}

struct FluidDexT1$PaybackPerfectFunctionOutputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
}

struct FluidDexT1$PaybackPerfectInOneTokenFunctionInputs {
    uint256 shares_;
    uint256 maxToken0_;
    uint256 maxToken1_;
    bool estimate_;
}

struct FluidDexT1$PaybackPerfectInOneTokenFunctionOutputs {
    uint256 paybackAmt_;
}

struct FluidDexT1$ReadFromStorageFunctionInputs {
    bytes32 slot_;
}

struct FluidDexT1$ReadFromStorageFunctionOutputs {
    uint256 result_;
}

struct FluidDexT1$SwapInFunctionInputs {
    bool swap0to1_;
    uint256 amountIn_;
    uint256 amountOutMin_;
    address to_;
}

struct FluidDexT1$SwapInFunctionOutputs {
    uint256 amountOut_;
}

struct FluidDexT1$SwapInWithCallbackFunctionInputs {
    bool swap0to1_;
    uint256 amountIn_;
    uint256 amountOutMin_;
    address to_;
}

struct FluidDexT1$SwapInWithCallbackFunctionOutputs {
    uint256 amountOut_;
}

struct FluidDexT1$SwapOutFunctionInputs {
    bool swap0to1_;
    uint256 amountOut_;
    uint256 amountInMax_;
    address to_;
}

struct FluidDexT1$SwapOutFunctionOutputs {
    uint256 amountIn_;
}

struct FluidDexT1$SwapOutWithCallbackFunctionInputs {
    bool swap0to1_;
    uint256 amountOut_;
    uint256 amountInMax_;
    address to_;
}

struct FluidDexT1$SwapOutWithCallbackFunctionOutputs {
    uint256 amountIn_;
}

struct FluidDexT1$WithdrawFunctionInputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
    uint256 maxSharesAmt_;
    address to_;
}

struct FluidDexT1$WithdrawFunctionOutputs {
    uint256 shares_;
}

struct FluidDexT1$WithdrawPerfectFunctionInputs {
    uint256 shares_;
    uint256 minToken0Withdraw_;
    uint256 minToken1Withdraw_;
    address to_;
}

struct FluidDexT1$WithdrawPerfectFunctionOutputs {
    uint256 token0Amt_;
    uint256 token1Amt_;
}

struct FluidDexT1$WithdrawPerfectInOneTokenFunctionInputs {
    uint256 shares_;
    uint256 minToken0_;
    uint256 minToken1_;
    address to_;
}

struct FluidDexT1$WithdrawPerfectInOneTokenFunctionOutputs {
    uint256 withdrawAmt_;
}

struct FluidDexT1$SwapEventParams {
    bool swap0to1;
    uint256 amountIn;
    uint256 amountOut;
    address to;
}

abstract contract FluidDexT1$OnSwapEvent {
    function FluidDexT1$onSwapEvent(EventContext memory ctx, FluidDexT1$SwapEventParams memory inputs) virtual external;

    function FluidDexT1$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes32(0xdc004dbca4ef9c966218431ee5d9133d337ad018dd5b5c5493722803f75c64f7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onSwapEvent.selector
        });
    }
}

abstract contract FluidDexT1$OnDexIdFunction {
    function FluidDexT1$onDexIdFunction(FunctionContext memory ctx, FluidDexT1$DexIdFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnDexIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xf4b9a3fb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onDexIdFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreDexIdFunction {
    function FluidDexT1$preDexIdFunction(PreFunctionContext memory ctx) virtual external;

    function FluidDexT1$triggerPreDexIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xf4b9a3fb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preDexIdFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnBorrowFunction {
    function FluidDexT1$onBorrowFunction(FunctionContext memory ctx, FluidDexT1$BorrowFunctionInputs memory inputs, FluidDexT1$BorrowFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x242011d5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onBorrowFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreBorrowFunction {
    function FluidDexT1$preBorrowFunction(PreFunctionContext memory ctx, FluidDexT1$BorrowFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x242011d5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preBorrowFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnBorrowPerfectFunction {
    function FluidDexT1$onBorrowPerfectFunction(FunctionContext memory ctx, FluidDexT1$BorrowPerfectFunctionInputs memory inputs, FluidDexT1$BorrowPerfectFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnBorrowPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xe27203cd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onBorrowPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreBorrowPerfectFunction {
    function FluidDexT1$preBorrowPerfectFunction(PreFunctionContext memory ctx, FluidDexT1$BorrowPerfectFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreBorrowPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xe27203cd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preBorrowPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnConstantsViewFunction {
    function FluidDexT1$onConstantsViewFunction(FunctionContext memory ctx, FluidDexT1$ConstantsViewFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnConstantsViewFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xb7791bf2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onConstantsViewFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreConstantsViewFunction {
    function FluidDexT1$preConstantsViewFunction(PreFunctionContext memory ctx) virtual external;

    function FluidDexT1$triggerPreConstantsViewFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xb7791bf2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preConstantsViewFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnConstantsView2Function {
    function FluidDexT1$onConstantsView2Function(FunctionContext memory ctx, FluidDexT1$ConstantsView2FunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnConstantsView2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x1595cbd3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onConstantsView2Function.selector
        });
    }
}

abstract contract FluidDexT1$PreConstantsView2Function {
    function FluidDexT1$preConstantsView2Function(PreFunctionContext memory ctx) virtual external;

    function FluidDexT1$triggerPreConstantsView2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x1595cbd3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preConstantsView2Function.selector
        });
    }
}

abstract contract FluidDexT1$OnDepositFunction {
    function FluidDexT1$onDepositFunction(FunctionContext memory ctx, FluidDexT1$DepositFunctionInputs memory inputs, FluidDexT1$DepositFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xe980e1eb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onDepositFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreDepositFunction {
    function FluidDexT1$preDepositFunction(PreFunctionContext memory ctx, FluidDexT1$DepositFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xe980e1eb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preDepositFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnDepositPerfectFunction {
    function FluidDexT1$onDepositPerfectFunction(FunctionContext memory ctx, FluidDexT1$DepositPerfectFunctionInputs memory inputs, FluidDexT1$DepositPerfectFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnDepositPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x4d9036de),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onDepositPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreDepositPerfectFunction {
    function FluidDexT1$preDepositPerfectFunction(PreFunctionContext memory ctx, FluidDexT1$DepositPerfectFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreDepositPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x4d9036de),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preDepositPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnGetCollateralReservesFunction {
    function FluidDexT1$onGetCollateralReservesFunction(FunctionContext memory ctx, FluidDexT1$GetCollateralReservesFunctionInputs memory inputs, FluidDexT1$GetCollateralReservesFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnGetCollateralReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x6560abaa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onGetCollateralReservesFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreGetCollateralReservesFunction {
    function FluidDexT1$preGetCollateralReservesFunction(PreFunctionContext memory ctx, FluidDexT1$GetCollateralReservesFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreGetCollateralReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x6560abaa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preGetCollateralReservesFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnGetDebtReservesFunction {
    function FluidDexT1$onGetDebtReservesFunction(FunctionContext memory ctx, FluidDexT1$GetDebtReservesFunctionInputs memory inputs, FluidDexT1$GetDebtReservesFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnGetDebtReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x05d455a9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onGetDebtReservesFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreGetDebtReservesFunction {
    function FluidDexT1$preGetDebtReservesFunction(PreFunctionContext memory ctx, FluidDexT1$GetDebtReservesFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreGetDebtReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x05d455a9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preGetDebtReservesFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnGetPricesAndExchangePricesFunction {
    function FluidDexT1$onGetPricesAndExchangePricesFunction(FunctionContext memory ctx) virtual external;

    function FluidDexT1$triggerOnGetPricesAndExchangePricesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x916cef4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onGetPricesAndExchangePricesFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreGetPricesAndExchangePricesFunction {
    function FluidDexT1$preGetPricesAndExchangePricesFunction(PreFunctionContext memory ctx) virtual external;

    function FluidDexT1$triggerPreGetPricesAndExchangePricesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x916cef4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preGetPricesAndExchangePricesFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnLiquidityCallbackFunction {
    function FluidDexT1$onLiquidityCallbackFunction(FunctionContext memory ctx, FluidDexT1$LiquidityCallbackFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerOnLiquidityCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xad207501),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onLiquidityCallbackFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreLiquidityCallbackFunction {
    function FluidDexT1$preLiquidityCallbackFunction(PreFunctionContext memory ctx, FluidDexT1$LiquidityCallbackFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreLiquidityCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xad207501),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preLiquidityCallbackFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnOraclePriceFunction {
    function FluidDexT1$onOraclePriceFunction(FunctionContext memory ctx, FluidDexT1$OraclePriceFunctionInputs memory inputs, FluidDexT1$OraclePriceFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnOraclePriceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xd811b2ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onOraclePriceFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreOraclePriceFunction {
    function FluidDexT1$preOraclePriceFunction(PreFunctionContext memory ctx, FluidDexT1$OraclePriceFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreOraclePriceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xd811b2ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preOraclePriceFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnPaybackFunction {
    function FluidDexT1$onPaybackFunction(FunctionContext memory ctx, FluidDexT1$PaybackFunctionInputs memory inputs, FluidDexT1$PaybackFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnPaybackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x68766981),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onPaybackFunction.selector
        });
    }
}

abstract contract FluidDexT1$PrePaybackFunction {
    function FluidDexT1$prePaybackFunction(PreFunctionContext memory ctx, FluidDexT1$PaybackFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPrePaybackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x68766981),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$prePaybackFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnPaybackPerfectFunction {
    function FluidDexT1$onPaybackPerfectFunction(FunctionContext memory ctx, FluidDexT1$PaybackPerfectFunctionInputs memory inputs, FluidDexT1$PaybackPerfectFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnPaybackPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x5b3d38d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onPaybackPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$PrePaybackPerfectFunction {
    function FluidDexT1$prePaybackPerfectFunction(PreFunctionContext memory ctx, FluidDexT1$PaybackPerfectFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPrePaybackPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x5b3d38d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$prePaybackPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnPaybackPerfectInOneTokenFunction {
    function FluidDexT1$onPaybackPerfectInOneTokenFunction(FunctionContext memory ctx, FluidDexT1$PaybackPerfectInOneTokenFunctionInputs memory inputs, FluidDexT1$PaybackPerfectInOneTokenFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnPaybackPerfectInOneTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x30acd6fd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onPaybackPerfectInOneTokenFunction.selector
        });
    }
}

abstract contract FluidDexT1$PrePaybackPerfectInOneTokenFunction {
    function FluidDexT1$prePaybackPerfectInOneTokenFunction(PreFunctionContext memory ctx, FluidDexT1$PaybackPerfectInOneTokenFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPrePaybackPerfectInOneTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x30acd6fd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$prePaybackPerfectInOneTokenFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnReadFromStorageFunction {
    function FluidDexT1$onReadFromStorageFunction(FunctionContext memory ctx, FluidDexT1$ReadFromStorageFunctionInputs memory inputs, FluidDexT1$ReadFromStorageFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnReadFromStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xb5c736e4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onReadFromStorageFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreReadFromStorageFunction {
    function FluidDexT1$preReadFromStorageFunction(PreFunctionContext memory ctx, FluidDexT1$ReadFromStorageFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreReadFromStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xb5c736e4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preReadFromStorageFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnSwapInFunction {
    function FluidDexT1$onSwapInFunction(FunctionContext memory ctx, FluidDexT1$SwapInFunctionInputs memory inputs, FluidDexT1$SwapInFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnSwapInFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x2668dfaa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onSwapInFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreSwapInFunction {
    function FluidDexT1$preSwapInFunction(PreFunctionContext memory ctx, FluidDexT1$SwapInFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreSwapInFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x2668dfaa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preSwapInFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnSwapInWithCallbackFunction {
    function FluidDexT1$onSwapInWithCallbackFunction(FunctionContext memory ctx, FluidDexT1$SwapInWithCallbackFunctionInputs memory inputs, FluidDexT1$SwapInWithCallbackFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnSwapInWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xbe17c79c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onSwapInWithCallbackFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreSwapInWithCallbackFunction {
    function FluidDexT1$preSwapInWithCallbackFunction(PreFunctionContext memory ctx, FluidDexT1$SwapInWithCallbackFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreSwapInWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xbe17c79c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preSwapInWithCallbackFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnSwapOutFunction {
    function FluidDexT1$onSwapOutFunction(FunctionContext memory ctx, FluidDexT1$SwapOutFunctionInputs memory inputs, FluidDexT1$SwapOutFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnSwapOutFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x286f0e61),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onSwapOutFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreSwapOutFunction {
    function FluidDexT1$preSwapOutFunction(PreFunctionContext memory ctx, FluidDexT1$SwapOutFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreSwapOutFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x286f0e61),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preSwapOutFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnSwapOutWithCallbackFunction {
    function FluidDexT1$onSwapOutWithCallbackFunction(FunctionContext memory ctx, FluidDexT1$SwapOutWithCallbackFunctionInputs memory inputs, FluidDexT1$SwapOutWithCallbackFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnSwapOutWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x653295aa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onSwapOutWithCallbackFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreSwapOutWithCallbackFunction {
    function FluidDexT1$preSwapOutWithCallbackFunction(PreFunctionContext memory ctx, FluidDexT1$SwapOutWithCallbackFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreSwapOutWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x653295aa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preSwapOutWithCallbackFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnWithdrawFunction {
    function FluidDexT1$onWithdrawFunction(FunctionContext memory ctx, FluidDexT1$WithdrawFunctionInputs memory inputs, FluidDexT1$WithdrawFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xd331bef7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onWithdrawFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreWithdrawFunction {
    function FluidDexT1$preWithdrawFunction(PreFunctionContext memory ctx, FluidDexT1$WithdrawFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0xd331bef7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preWithdrawFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnWithdrawPerfectFunction {
    function FluidDexT1$onWithdrawPerfectFunction(FunctionContext memory ctx, FluidDexT1$WithdrawPerfectFunctionInputs memory inputs, FluidDexT1$WithdrawPerfectFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnWithdrawPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x35f0df98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onWithdrawPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreWithdrawPerfectFunction {
    function FluidDexT1$preWithdrawPerfectFunction(PreFunctionContext memory ctx, FluidDexT1$WithdrawPerfectFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreWithdrawPerfectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x35f0df98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preWithdrawPerfectFunction.selector
        });
    }
}

abstract contract FluidDexT1$OnWithdrawPerfectInOneTokenFunction {
    function FluidDexT1$onWithdrawPerfectInOneTokenFunction(FunctionContext memory ctx, FluidDexT1$WithdrawPerfectInOneTokenFunctionInputs memory inputs, FluidDexT1$WithdrawPerfectInOneTokenFunctionOutputs memory outputs) virtual external;

    function FluidDexT1$triggerOnWithdrawPerfectInOneTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x4c89bfd4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$onWithdrawPerfectInOneTokenFunction.selector
        });
    }
}

abstract contract FluidDexT1$PreWithdrawPerfectInOneTokenFunction {
    function FluidDexT1$preWithdrawPerfectInOneTokenFunction(PreFunctionContext memory ctx, FluidDexT1$WithdrawPerfectInOneTokenFunctionInputs memory inputs) virtual external;

    function FluidDexT1$triggerPreWithdrawPerfectInOneTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "FluidDexT1",
            selector: bytes4(0x4c89bfd4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.FluidDexT1$preWithdrawPerfectInOneTokenFunction.selector
        });
    }
}

contract FluidDexT1$EmitAllEvents is
  FluidDexT1$OnSwapEvent
{
  event Swap(bool swap0to1, uint256 amountIn, uint256 amountOut, address to);

  function FluidDexT1$onSwapEvent(EventContext memory ctx, FluidDexT1$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.swap0to1, inputs.amountIn, inputs.amountOut, inputs.to);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.FluidDexT1$triggerOnSwapEvent();
    return triggers;
  }
}