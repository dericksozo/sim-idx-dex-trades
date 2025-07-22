// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function MainnetSettler$Abi() pure returns (Abi memory) {
    return Abi("MainnetSettler");
}
struct MainnetSettler$BalanceOfFunctionInputs {
    address outArg0;
}

struct MainnetSettler$ISettlerBase$AllowedSlippage {
    address recipient;
    address buyToken;
    uint256 minAmountOut;
}

struct MainnetSettler$ExecuteFunctionInputs {
    MainnetSettler$ISettlerBase$AllowedSlippage slippage;
    bytes[] actions;
    bytes32 outArg2;
}

struct MainnetSettler$ExecuteFunctionOutputs {
    bool outArg0;
}

struct MainnetSettler$RebateClaimerFunctionOutputs {
    address outArg0;
}

abstract contract MainnetSettler$OnBalanceOfFunction {
    function MainnetSettler$onBalanceOfFunction(FunctionContext memory ctx, MainnetSettler$BalanceOfFunctionInputs memory inputs) virtual external;

    function MainnetSettler$triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MainnetSettler",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MainnetSettler$onBalanceOfFunction.selector
        });
    }
}

abstract contract MainnetSettler$PreBalanceOfFunction {
    function MainnetSettler$preBalanceOfFunction(PreFunctionContext memory ctx, MainnetSettler$BalanceOfFunctionInputs memory inputs) virtual external;

    function MainnetSettler$triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MainnetSettler",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MainnetSettler$preBalanceOfFunction.selector
        });
    }
}

abstract contract MainnetSettler$OnExecuteFunction {
    function MainnetSettler$onExecuteFunction(FunctionContext memory ctx, MainnetSettler$ExecuteFunctionInputs memory inputs, MainnetSettler$ExecuteFunctionOutputs memory outputs) virtual external;

    function MainnetSettler$triggerOnExecuteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MainnetSettler",
            selector: bytes4(0x1fff991f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MainnetSettler$onExecuteFunction.selector
        });
    }
}

abstract contract MainnetSettler$PreExecuteFunction {
    function MainnetSettler$preExecuteFunction(PreFunctionContext memory ctx, MainnetSettler$ExecuteFunctionInputs memory inputs) virtual external;

    function MainnetSettler$triggerPreExecuteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MainnetSettler",
            selector: bytes4(0x1fff991f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MainnetSettler$preExecuteFunction.selector
        });
    }
}

abstract contract MainnetSettler$OnRebateClaimerFunction {
    function MainnetSettler$onRebateClaimerFunction(FunctionContext memory ctx, MainnetSettler$RebateClaimerFunctionOutputs memory outputs) virtual external;

    function MainnetSettler$triggerOnRebateClaimerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MainnetSettler",
            selector: bytes4(0x67c4a3b0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MainnetSettler$onRebateClaimerFunction.selector
        });
    }
}

abstract contract MainnetSettler$PreRebateClaimerFunction {
    function MainnetSettler$preRebateClaimerFunction(PreFunctionContext memory ctx) virtual external;

    function MainnetSettler$triggerPreRebateClaimerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MainnetSettler",
            selector: bytes4(0x67c4a3b0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MainnetSettler$preRebateClaimerFunction.selector
        });
    }
}

contract MainnetSettler$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}