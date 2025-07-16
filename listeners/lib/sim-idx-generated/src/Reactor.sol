// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function Reactor$Abi() pure returns (Abi memory) {
    return Abi("Reactor");
}
struct Reactor$SignedOrder {
    bytes order;
    bytes sig;
}

struct Reactor$ExecuteFunctionInputs {
    Reactor$SignedOrder order;
}

struct Reactor$ExecuteBatchFunctionInputs {
    Reactor$SignedOrder[] orders;
}

struct Reactor$ExecuteBatchWithCallbackFunctionInputs {
    Reactor$SignedOrder[] orders;
    bytes callbackData;
}

struct Reactor$ExecuteWithCallbackFunctionInputs {
    Reactor$SignedOrder order;
    bytes callbackData;
}

abstract contract Reactor$OnExecuteFunction {
    function Reactor$onExecuteFunction(FunctionContext memory ctx, Reactor$ExecuteFunctionInputs memory inputs) virtual external;

    function Reactor$triggerOnExecuteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x3f62192e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$onExecuteFunction.selector
        });
    }
}

abstract contract Reactor$PreExecuteFunction {
    function Reactor$preExecuteFunction(PreFunctionContext memory ctx, Reactor$ExecuteFunctionInputs memory inputs) virtual external;

    function Reactor$triggerPreExecuteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x3f62192e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$preExecuteFunction.selector
        });
    }
}

abstract contract Reactor$OnExecuteBatchFunction {
    function Reactor$onExecuteBatchFunction(FunctionContext memory ctx, Reactor$ExecuteBatchFunctionInputs memory inputs) virtual external;

    function Reactor$triggerOnExecuteBatchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x0d7a16c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$onExecuteBatchFunction.selector
        });
    }
}

abstract contract Reactor$PreExecuteBatchFunction {
    function Reactor$preExecuteBatchFunction(PreFunctionContext memory ctx, Reactor$ExecuteBatchFunctionInputs memory inputs) virtual external;

    function Reactor$triggerPreExecuteBatchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x0d7a16c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$preExecuteBatchFunction.selector
        });
    }
}

abstract contract Reactor$OnExecuteBatchWithCallbackFunction {
    function Reactor$onExecuteBatchWithCallbackFunction(FunctionContext memory ctx, Reactor$ExecuteBatchWithCallbackFunctionInputs memory inputs) virtual external;

    function Reactor$triggerOnExecuteBatchWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x13fb72c7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$onExecuteBatchWithCallbackFunction.selector
        });
    }
}

abstract contract Reactor$PreExecuteBatchWithCallbackFunction {
    function Reactor$preExecuteBatchWithCallbackFunction(PreFunctionContext memory ctx, Reactor$ExecuteBatchWithCallbackFunctionInputs memory inputs) virtual external;

    function Reactor$triggerPreExecuteBatchWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x13fb72c7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$preExecuteBatchWithCallbackFunction.selector
        });
    }
}

abstract contract Reactor$OnExecuteWithCallbackFunction {
    function Reactor$onExecuteWithCallbackFunction(FunctionContext memory ctx, Reactor$ExecuteWithCallbackFunctionInputs memory inputs) virtual external;

    function Reactor$triggerOnExecuteWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x0d335884),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$onExecuteWithCallbackFunction.selector
        });
    }
}

abstract contract Reactor$PreExecuteWithCallbackFunction {
    function Reactor$preExecuteWithCallbackFunction(PreFunctionContext memory ctx, Reactor$ExecuteWithCallbackFunctionInputs memory inputs) virtual external;

    function Reactor$triggerPreExecuteWithCallbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Reactor",
            selector: bytes4(0x0d335884),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.Reactor$preExecuteWithCallbackFunction.selector
        });
    }
}

contract Reactor$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}