// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function PSM$Abi() pure returns (Abi memory) {
    return Abi("PSM");
}
struct PSM$BuyGemFunctionInputs {
    address usr;
    uint256 gemAmt;
}

struct PSM$DaiFunctionOutputs {
    address outArg0;
}

struct PSM$GemJoinFunctionOutputs {
    address outArg0;
}

struct PSM$SellGemFunctionInputs {
    address usr;
    uint256 gemAmt;
}

abstract contract PSM$OnBuyGemFunction {
    function PSM$onBuyGemFunction(FunctionContext memory ctx, PSM$BuyGemFunctionInputs memory inputs) virtual external;

    function PSM$triggerOnBuyGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x8d7ef9bb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$onBuyGemFunction.selector
        });
    }
}

abstract contract PSM$PreBuyGemFunction {
    function PSM$preBuyGemFunction(PreFunctionContext memory ctx, PSM$BuyGemFunctionInputs memory inputs) virtual external;

    function PSM$triggerPreBuyGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x8d7ef9bb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$preBuyGemFunction.selector
        });
    }
}

abstract contract PSM$OnDaiFunction {
    function PSM$onDaiFunction(FunctionContext memory ctx, PSM$DaiFunctionOutputs memory outputs) virtual external;

    function PSM$triggerOnDaiFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0xf4b9fa75),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$onDaiFunction.selector
        });
    }
}

abstract contract PSM$PreDaiFunction {
    function PSM$preDaiFunction(PreFunctionContext memory ctx) virtual external;

    function PSM$triggerPreDaiFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0xf4b9fa75),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$preDaiFunction.selector
        });
    }
}

abstract contract PSM$OnGemJoinFunction {
    function PSM$onGemJoinFunction(FunctionContext memory ctx, PSM$GemJoinFunctionOutputs memory outputs) virtual external;

    function PSM$triggerOnGemJoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x01664f66),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$onGemJoinFunction.selector
        });
    }
}

abstract contract PSM$PreGemJoinFunction {
    function PSM$preGemJoinFunction(PreFunctionContext memory ctx) virtual external;

    function PSM$triggerPreGemJoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x01664f66),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$preGemJoinFunction.selector
        });
    }
}

abstract contract PSM$OnSellGemFunction {
    function PSM$onSellGemFunction(FunctionContext memory ctx, PSM$SellGemFunctionInputs memory inputs) virtual external;

    function PSM$triggerOnSellGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x95991276),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$onSellGemFunction.selector
        });
    }
}

abstract contract PSM$PreSellGemFunction {
    function PSM$preSellGemFunction(PreFunctionContext memory ctx, PSM$SellGemFunctionInputs memory inputs) virtual external;

    function PSM$triggerPreSellGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x95991276),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PSM$preSellGemFunction.selector
        });
    }
}

contract PSM$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}