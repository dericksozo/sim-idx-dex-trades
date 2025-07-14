// SPDX-License-Identifier: MIT
pragma solidity >=0.8.25;

import {PsmAbstract} from "../../interfaces/Maker/PsmAbstract.sol";
import {AuthGemJoinAbstract} from "../../interfaces/Maker/AuthGemJoinAbstract.sol";
import {Math} from "./Math.sol";
import {safeReturnAddress} from "../../utils/AddressUtils.sol";

/// @title A collection of helper functions to deal with Maker PSM's shenanigans.
/// @author Tal Vaizman
/// @notice Helps in parsing Maker PSM trades.
library MakerUtils {
    /// @notice Returns the gem address of a PSM.
    /// @param psmAddr The PSM's address.
    /// @return gem The gem address.
    function getGem(address psmAddr) internal view returns (address gem) {
        if (psmAddr == address(0)) {
            return address(0);
        }
        gem = safeReturnAddress(AuthGemJoinAbstract(PsmAbstract(psmAddr).gemJoin()).gem());
    }

    /// @notice Returns the dai address of a PSM.
    /// @param psmAddr The PSM's address.
    /// @return dai The dai address.
    function getDai(address psmAddr) internal view returns (address dai) {
        if (psmAddr == address(0)) {
            return address(0);
        }
        dai = safeReturnAddress(PsmAbstract(psmAddr).dai());
    }

    /// @notice Returns the dai amount of a PSM trade.
    /// @param psmAddr The PSM's address.
    /// @param gemAmt The gem amount.
    /// @param isSellGem Whether the trade is selling gem or buying gem.
    /// @return daiAmt The dai amount.
    function getDaiAmt(address psmAddr, uint256 gemAmt, bool isSellGem) internal view returns (uint256 daiAmt) {
        if (psmAddr == address(0)) {
            return 0;
        }
        uint256 to18ConversionFactor = 10 ** (18 - AuthGemJoinAbstract(PsmAbstract(psmAddr).gemJoin()).dec());
        uint256 gemAmt18 = Math.mul(gemAmt, to18ConversionFactor);
        uint256 fee = isSellGem
            ? Math.mul(gemAmt18, PsmAbstract(psmAddr).tin()) / Math.WAD
            : Math.mul(gemAmt18, PsmAbstract(psmAddr).tout()) / Math.WAD;
        daiAmt = isSellGem ? Math.sub(gemAmt18, fee) : Math.add(gemAmt18, fee);
    }
}
