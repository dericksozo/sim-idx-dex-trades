// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function TokenExchange$Abi() pure returns (Abi memory) {
    return Abi("TokenExchange");
}
struct TokenExchange$TokenExchangeEventParams {
    address buyer;
    uint256 sold_id;
    uint256 tokens_sold;
    uint256 bought_id;
    uint256 tokens_bought;
}

abstract contract TokenExchange$OnTokenExchangeEvent {
    function TokenExchange$onTokenExchangeEvent(EventContext memory ctx, TokenExchange$TokenExchangeEventParams memory inputs) virtual external;

    function TokenExchange$triggerOnTokenExchangeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenExchange",
            selector: bytes32(0xb2e76ae99761dc136e598d4a629bb347eccb9532a5f8bbd72e18467c3c34cc98),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.TokenExchange$onTokenExchangeEvent.selector
        });
    }
}


struct TokenExchange$EmitAllEvents$TokenExchange {
  address buyer;
  uint256 sold_id;
  uint256 tokens_sold;
  uint256 bought_id;
  uint256 tokens_bought;
}

contract TokenExchange$EmitAllEvents is
  TokenExchange$OnTokenExchangeEvent
{
  event TokenExchange(TokenExchange$EmitAllEvents$TokenExchange);

  function TokenExchange$onTokenExchangeEvent(EventContext memory ctx, TokenExchange$TokenExchangeEventParams memory inputs) virtual external override {
    emit TokenExchange(TokenExchange$EmitAllEvents$TokenExchange(inputs.buyer, inputs.sold_id, inputs.tokens_sold, inputs.bought_id, inputs.tokens_bought));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.TokenExchange$triggerOnTokenExchangeEvent();
    return triggers;
  }
}