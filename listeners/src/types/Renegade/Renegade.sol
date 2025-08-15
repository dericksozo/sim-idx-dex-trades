// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// This file contains types for settlement in the darkpool

// --------------------
// | Settlement Types |
// --------------------

/// @title ExternalMatchResult
/// @notice The result of a match between an internal and external party
struct ExternalMatchResult {
    /// @dev The quote mint of the match
    address quoteMint;
    /// @dev The base mint of the match
    address baseMint;
    /// @dev The amount of the match
    uint256 quoteAmount;
    /// @dev The amount of the match
    uint256 baseAmount;
    /// @dev The direction of the match
    ExternalMatchDirection direction;
}

/// @title BoundedMatchResult
/// @notice An external match result that specifies a range of match sizes rather than
/// @notice an exact base amount.
struct BoundedMatchResult {
    /// @dev The quote mint of the match
    address quoteMint;
    /// @dev The base mint of the match
    address baseMint;
    /// @dev The price at which the match will be settled
    FixedPoint price;
    /// @dev The minimum base amount of the match
    uint256 minBaseAmount;
    /// @dev The maximum base amount of the match
    uint256 maxBaseAmount;
    /// @dev The direction of the match
    ExternalMatchDirection direction;
}

/// @title ExternalMatchDirection
/// @notice The direction of a match between an internal and external party
enum ExternalMatchDirection {
    /// @dev The internal party buys the base and sells the quote
    InternalPartyBuy,
    /// @dev The internal party sells the base and buys the quote
    InternalPartySell
}

/// @notice A fixed point representation of a real number
/// @dev The precision used is specified in `DarkpoolConstants.FIXED_POINT_PRECISION_BITS`
/// @dev The real number represented is `repr / 2^{FIXED_POINT_PRECISION_BITS}`
struct FixedPoint {
    /// @dev The representation of the number
    uint256 repr;
}
