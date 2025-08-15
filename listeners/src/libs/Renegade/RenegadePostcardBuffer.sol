// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4 <0.9.0;

import {ExternalMatchResult, BoundedMatchResult, ExternalMatchDirection} from "../../types/Renegade/Renegade.sol";
import {PostcardUtils} from "./PostcardUtils.sol";

library RenegadePostcardBuffer {
    function getNextExternalMatchResult(uint64 pos, bytes calldata data)
        internal
        pure
        returns (bool, uint64, ExternalMatchResult memory)
    {
        ExternalMatchResult memory result;
        bool success;
        uint64 newPos;
        (success, newPos, result.quoteMint) = PostcardUtils.getNextAddress(pos, data);
        if (!success) {
            return (false, pos, result);
        }
        (success, newPos, result.baseMint) = PostcardUtils.getNextAddress(newPos, data);
        if (!success) {
            return
                (false, pos, ExternalMatchResult(address(0), address(0), 0, 0, ExternalMatchDirection.InternalPartyBuy));
        }
        (success, newPos, result.quoteAmount) = PostcardUtils.getNextUint256(newPos, data);
        if (!success) {
            return
                (false, pos, ExternalMatchResult(address(0), address(0), 0, 0, ExternalMatchDirection.InternalPartyBuy));
        }
        (success, newPos, result.baseAmount) = PostcardUtils.getNextUint256(newPos, data);
        if (!success) {
            return
                (false, pos, ExternalMatchResult(address(0), address(0), 0, 0, ExternalMatchDirection.InternalPartyBuy));
        }
        bool value;
        (success, newPos, value) = PostcardUtils.getNextBool(newPos, data);
        if (!success) {
            return
                (false, pos, ExternalMatchResult(address(0), address(0), 0, 0, ExternalMatchDirection.InternalPartyBuy));
        }
        result.direction = value ? ExternalMatchDirection.InternalPartySell : ExternalMatchDirection.InternalPartyBuy;
        return (true, newPos, result);
    }
}
