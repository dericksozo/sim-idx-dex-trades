// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.2 < 0.9.0;

import "./interfaces/1inch/IOrderMixin.sol";
import {IPermit2WitnessTransferFrom} from "./interfaces/1inch/IPermit2WitnessTransferFrom.sol";
import "./libs/1inch/AddressLib.sol";
import "./libs/1inch/ExtensionLib.sol";
import "./libs/1inch/MakerTraitsLib.sol";
import "./libs/1inch/TakerTraitsLib.sol";

using ExtensionLib for bytes;
using AddressLib for Address;
using MakerTraitsLib for MakerTraits;
using TakerTraitsLib for TakerTraits;

/// @title A collection of helper functions to deal with 1inch's shenanigans.
/// @author Tal Vaizman
/// @notice Helps in resolving correct taker and maker addresses and assets for 1inch's LOP protocol.
contract OneInchUtils {
    /**
     * @notice Processes the taker interaction arguments.
     * @param takerTraits The taker preferences for the order.
     * @param args The taker interaction arguments.
     * @return target The address to which the order is filled.
     * @return extension The extension calldata of the order.
     * @return interaction The interaction calldata.
     */
    function _parseArgs(TakerTraits takerTraits, bytes calldata args)
        external
        pure
        returns (address target, bytes calldata extension, bytes calldata interaction)
    {
        if (takerTraits.argsHasTarget()) {
            target = address(bytes20(args));
            args = args[20:];
        } else {
            target = address(0);
        }

        uint256 extensionLength = takerTraits.argsExtensionLength();
        if (extensionLength > 0) {
            extension = args[:extensionLength];
            args = args[extensionLength:];
        } else {
            extension = msg.data[:0];
        }

        uint256 interactionLength = takerTraits.argsInteractionLength();
        if (interactionLength > 0) {
            interaction = args[:interactionLength];
        } else {
            interaction = msg.data[:0];
        }
    }

    /**
     * @notice Wrapper around _parseArgs which processes the taker interaction arguments.
     * @param takerTraits The taker preferences for the order.
     * @param args The taker interaction arguments.
     * @return target The address to which the order is filled.
     * @return extension The extension calldata of the order.
     * @return interaction The interaction calldata.
     */
    function parseArgs(TakerTraits takerTraits, bytes memory args)
        public
        view
        returns (address target, bytes memory extension, bytes memory interaction)
    {
        return this._parseArgs(takerTraits, args);
    }

    function getMakerAssetSuffix(bytes calldata extension) external pure returns (bytes calldata) {
        return extension.makerAssetSuffix();
    }

    function getTakerAssetSuffix(bytes calldata extension) external pure returns (bytes calldata) {
        return extension.takerAssetSuffix();
    }

    /**
     * @notice Try to get the maker asset from an extension.
     * @param extension The extension bytes.
     * @return makerAsset The maker asset's address if present, otherwise address(0).
     */
    function getMakerAssetFromSuffix(bytes memory extension) public view returns (address makerAsset) {
        bytes memory makerAssetSuffix = this.getMakerAssetSuffix(extension);
        IPermit2WitnessTransferFrom.PermitTransferFrom memory makerAssetPermit;
        if (makerAssetSuffix.length > 0) {
            (makerAssetPermit,) =
                abi.decode(makerAssetSuffix, ((IPermit2WitnessTransferFrom.PermitTransferFrom), bytes32));
            makerAsset = makerAssetPermit.permitted.token;
        } else {
            makerAsset = address(0);
        }
    }

    /**
     * @notice Try to get the taker asset from an extension.
     * @param extension The extension bytes.
     * @return takerAsset The taker asset's address if present, otherwise address(0).
     */
    function getTakerAssetFromSuffix(bytes memory extension) public view returns (address takerAsset) {
        bytes memory takerAssetSuffix = this.getTakerAssetSuffix(extension);
        IPermit2WitnessTransferFrom.PermitTransferFrom memory takerAssetPermit;
        if (takerAssetSuffix.length > 0) {
            (takerAssetPermit,) =
                abi.decode(takerAssetSuffix, ((IPermit2WitnessTransferFrom.PermitTransferFrom), bytes32));
            takerAsset = takerAssetPermit.permitted.token;
        } else {
            takerAsset = address(0);
        }
    }
}
