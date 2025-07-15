// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function HotProxy$Abi() pure returns (Abi memory) {
    return Abi("HotProxy");
}
struct HotProxy$AcceptCrocProxyRoleFunctionInputs {
    address outArg0;
    uint16 slot;
}

struct HotProxy$AcceptCrocProxyRoleFunctionOutputs {
    bool outArg0;
}

struct HotProxy$UserCmdFunctionInputs {
    bytes input;
}

struct HotProxy$UserCmdFunctionOutputs {
    int128 outArg0;
    int128 outArg1;
}

abstract contract HotProxy$OnAcceptCrocProxyRoleFunction {
    function HotProxy$onAcceptCrocProxyRoleFunction(FunctionContext memory ctx, HotProxy$AcceptCrocProxyRoleFunctionInputs memory inputs, HotProxy$AcceptCrocProxyRoleFunctionOutputs memory outputs) virtual external;

    function HotProxy$triggerOnAcceptCrocProxyRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "HotProxy",
            selector: bytes4(0xac54c0fc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.HotProxy$onAcceptCrocProxyRoleFunction.selector
        });
    }
}

abstract contract HotProxy$PreAcceptCrocProxyRoleFunction {
    function HotProxy$preAcceptCrocProxyRoleFunction(PreFunctionContext memory ctx, HotProxy$AcceptCrocProxyRoleFunctionInputs memory inputs) virtual external;

    function HotProxy$triggerPreAcceptCrocProxyRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "HotProxy",
            selector: bytes4(0xac54c0fc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.HotProxy$preAcceptCrocProxyRoleFunction.selector
        });
    }
}

abstract contract HotProxy$OnUserCmdFunction {
    function HotProxy$onUserCmdFunction(FunctionContext memory ctx, HotProxy$UserCmdFunctionInputs memory inputs, HotProxy$UserCmdFunctionOutputs memory outputs) virtual external;

    function HotProxy$triggerOnUserCmdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "HotProxy",
            selector: bytes4(0xf96dc788),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.HotProxy$onUserCmdFunction.selector
        });
    }
}

abstract contract HotProxy$PreUserCmdFunction {
    function HotProxy$preUserCmdFunction(PreFunctionContext memory ctx, HotProxy$UserCmdFunctionInputs memory inputs) virtual external;

    function HotProxy$triggerPreUserCmdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "HotProxy",
            selector: bytes4(0xf96dc788),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.HotProxy$preUserCmdFunction.selector
        });
    }
}

contract HotProxy$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}