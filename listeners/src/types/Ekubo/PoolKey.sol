// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {MAX_TICK_SPACING, FULL_RANGE_ONLY_TICK_SPACING} from "../../libs/Ekubo/Constants.sol";

using {toPoolId, validatePoolKey, isFullRange, mustLoadFees, tickSpacing, fee, extension} for EkuboPoolKey global;

// address (20 bytes) | fee (8 bytes) | tickSpacing (4 bytes)
type Config is bytes32;

function tickSpacing(EkuboPoolKey memory pk) pure returns (uint32 r) {
    assembly ("memory-safe") {
        r := and(mload(add(64, pk)), 0xffffffff)
    }
}

function fee(EkuboPoolKey memory pk) pure returns (uint64 r) {
    assembly ("memory-safe") {
        r := and(mload(add(60, pk)), 0xffffffffffffffff)
    }
}

function extension(EkuboPoolKey memory pk) pure returns (address r) {
    assembly ("memory-safe") {
        r := and(mload(add(52, pk)), 0xffffffffffffffffffffffffffffffffffffffff)
    }
}

function mustLoadFees(EkuboPoolKey memory pk) pure returns (bool r) {
    assembly ("memory-safe") {
        // only if either of tick spacing and fee are nonzero
        // if _both_ are zero, then we know we do not need to load fees for swaps
        r := iszero(iszero(and(mload(add(64, pk)), 0xffffffffffffffffffffffff)))
    }
}

function isFullRange(EkuboPoolKey memory pk) pure returns (bool r) {
    r = pk.tickSpacing() == FULL_RANGE_ONLY_TICK_SPACING;
}

function toConfig(uint64 _fee, uint32 _tickSpacing, address _extension) pure returns (Config c) {
    assembly ("memory-safe") {
        c := add(add(shl(96, _extension), shl(32, _fee)), _tickSpacing)
    }
}

// Each pool has its own state associated with this key
struct EkuboPoolKey {
    address token0;
    address token1;
    Config config;
}

error TokensMustBeSorted();
error InvalidTickSpacing();

function validatePoolKey(EkuboPoolKey memory key) pure {
    if (key.token0 >= key.token1) revert TokensMustBeSorted();
    if (key.tickSpacing() > MAX_TICK_SPACING) {
        revert InvalidTickSpacing();
    }
}

function toPoolId(EkuboPoolKey memory key) pure returns (bytes32 result) {
    assembly ("memory-safe") {
        // it's already copied into memory
        result := keccak256(key, 96)
    }
}
