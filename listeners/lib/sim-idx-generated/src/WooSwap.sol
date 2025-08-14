// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function WooSwap$Abi() pure returns (Abi memory) {
    return Abi("WooSwap");
}
struct WooSwap$WooSwapEventParams {
    address fromToken;
    address toToken;
    uint256 fromAmount;
    uint256 toAmount;
    address from;
    address to;
    address rebateTo;
    uint256 swapVol;
    uint256 swapFee;
}

abstract contract WooSwap$OnWooSwapEvent {
    function WooSwap$onWooSwapEvent(EventContext memory ctx, WooSwap$WooSwapEventParams memory inputs) virtual external;

    function WooSwap$triggerOnWooSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "WooSwap",
            selector: bytes32(0x0e8e403c2d36126272b08c75823e988381d9dc47f2f0a9a080d95f891d95c469),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.WooSwap$onWooSwapEvent.selector
        });
    }
}


struct WooSwap$EmitAllEvents$WooSwap {
  address fromToken;
  address toToken;
  uint256 fromAmount;
  uint256 toAmount;
  address from;
  address to;
  address rebateTo;
  uint256 swapVol;
  uint256 swapFee;
}

contract WooSwap$EmitAllEvents is
  WooSwap$OnWooSwapEvent
{
  event WooSwap(WooSwap$EmitAllEvents$WooSwap);

  function WooSwap$onWooSwapEvent(EventContext memory ctx, WooSwap$WooSwapEventParams memory inputs) virtual external override {
    emit WooSwap(WooSwap$EmitAllEvents$WooSwap(inputs.fromToken, inputs.toToken, inputs.fromAmount, inputs.toAmount, inputs.from, inputs.to, inputs.rebateTo, inputs.swapVol, inputs.swapFee));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.WooSwap$triggerOnWooSwapEvent();
    return triggers;
  }
}