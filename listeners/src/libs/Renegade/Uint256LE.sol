// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library Uint256Limbs {
    /// @notice Convert a bytes32 (standard big-endian encoding) to four uint64 limbs in little-endian order.
    /// le[0] = least significant 64 bits ... le[3] = most significant 64 bits.
    function bytes32ToLittleEndianLimbs(bytes32 x) internal pure returns (uint64[4] memory le) {
        uint256 v = uint256(x); // interpret bytes32 as the numeric value (big-endian)
        le[0] = uint64(v); // lowest 64 bits
        le[1] = uint64(v >> 64);
        le[2] = uint64(v >> 128);
        le[3] = uint64(v >> 192); // highest 64 bits
    }

    function fromLittleEndianLimbs(uint64[4] memory le) internal pure returns (uint256) {
        return uint256(le[0]) | (uint256(le[1]) << 64) | (uint256(le[2]) << 128) | (uint256(le[3]) << 192);
    }
}
