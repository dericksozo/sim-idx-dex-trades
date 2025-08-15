// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4 <0.9.0;

import "./ProtobufLib.sol";
import "./Uint256LE.sol";

library PostcardUtils {
    uint64 constant ADDRESS_BYTES = 20;
    uint64 constant UINT256_LIMBS = 4;

    function getNextAddress(uint64 pos, bytes calldata data) internal pure returns (bool, uint64, address) {
        // Check that index is within bounds
        if (pos + ADDRESS_BYTES > data.length) {
            return (false, pos, address(0));
        }

        // Get address
        return (true, pos + ADDRESS_BYTES, address(bytes20((data[pos:pos + ADDRESS_BYTES]))));
    }

    function getNextUint256(uint64 pos, bytes memory data) internal pure returns (bool, uint64, uint256) {
        uint64[4] memory limbs;
        bool success;
        (success, pos, limbs[0]) = ProtobufLib.decode_varint(pos, data);
        (success, pos, limbs[1]) = ProtobufLib.decode_varint(pos, data);
        (success, pos, limbs[2]) = ProtobufLib.decode_varint(pos, data);
        (success, pos, limbs[3]) = ProtobufLib.decode_varint(pos, data);
        return (success, pos, Uint256Limbs.fromLittleEndianLimbs(limbs));
    }

    function getNextBool(uint64 pos, bytes memory data) internal pure returns (bool, uint64, bool) {
        (bool success, uint64 newPos, bool val) = ProtobufLib.decode_bool(pos, data);
        if (!success) {
            return (false, pos, false);
        }
        return (true, newPos, val);
    }
}
