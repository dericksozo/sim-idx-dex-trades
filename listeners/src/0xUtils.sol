// SPDX-License-Identifier: MIT
pragma solidity >=0.8.25;

import {ISettlerActions} from "./interfaces/0x/ISettlerActions.sol";
import {ISignatureTransfer} from "./interfaces/0x/ISignatureTransfer.sol";
import {IERC20} from "forge-std/interfaces/IERC20.sol";
import {CalldataDecoder} from "./libs/0x/CalldataDecoder.sol";
import {FullMath} from "./libs/0x/FullMath.sol";
import {Ternary} from "./libs/0x/Ternary.sol";
import {SafeTransferLib} from "./libs/0x/SafeTransferLib.sol";

using CalldataDecoder for bytes[];
using FullMath for uint256;

/// @title A collection of helper functions to deal with 0x's shenanigans.
/// @author Tal Vaizman
/// @notice Helps in parsing executions of 0x Settler txns.
contract ZeroExUtils {
    using Ternary for bool;
    using SafeTransferLib for IERC20;
    using FullMath for uint256;

    uint256 internal constant BASIS = 10_000;
    IERC20 internal constant ETH_ADDRESS = IERC20(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);
    // account => token => balance
    // Mainly used because we can't query for interim balances in a post-execution handler.
    // This is a workaround to get the interim balances of parties involved in a trade.
    mapping(address => mapping(address => uint256)) internal _balances;

    /// @notice A single RFQ order.
    struct RFQOrder {
        // The order maker's address.
        address maker;
        // The maker asset's address.
        address makerAsset;
        // The order taker's address.
        address taker;
        // The maker taker's address.
        address takerAsset;
        // The maker's amount
        uint256 makerAmount;
        // The taker's amount
        uint256 takerAmount;
    }

    function _permitToSellAmount(ISignatureTransfer.PermitTransferFrom memory permit, address sender)
        internal
        returns (uint256 sellAmount)
    {
        sellAmount = permit.permitted.amount;
        if (sellAmount > type(uint256).max - BASIS) {
            unchecked {
                sellAmount -= type(uint256).max - BASIS;
            }
            sellAmount = _balances[sender][permit.permitted.token].mulDiv(sellAmount, BASIS);
            _balances[sender][permit.permitted.token] -= sellAmount;
        }
    }

    /// @notice Wrapper around _decodeCalls which processes actions.
    /// @param actions The actions array.
    /// @param settler The settler's address.
    /// @return orders The corresponding RFQ orders.
    function _decodeCalls(bytes[] calldata actions, address settler) external returns (RFQOrder[] memory) {
        RFQOrder[] memory orders = new RFQOrder[](actions.length);
        for (uint256 i = 0; i < actions.length; i++) {
            (uint256 selector, bytes calldata data) = actions.decodeCall(i);
            if (selector == uint32(ISettlerActions.METATXN_RFQ_VIP.selector)) {
                // (
                //     address recipient,
                //     ISignatureTransfer.PermitTransferFrom memory makerPermit,
                //     address maker,
                //     ,
                //     ISignatureTransfer.PermitTransferFrom memory takerPermit
                // ) = abi.decode(
                //     data,
                //     (
                //         address,
                //         ISignatureTransfer.PermitTransferFrom,
                //         address,
                //         bytes,
                //         ISignatureTransfer.PermitTransferFrom
                //     )
                // );
                // RFQOrder memory order = RFQOrder({
                //     maker: maker,
                //     makerAsset: makerPermit.permitted.token,
                //     taker: recipient,
                //     takerAsset: takerPermit.permitted.token,
                //     makerAmount: _permitToSellAmount(makerPermit, maker),
                //     takerAmount: _permitToSellAmount(takerPermit, recipient)
                // });
                // orders[j] = order;
                // j++;
            } else if (selector == uint32(ISettlerActions.RFQ.selector)) {
                (
                    address recipient,
                    ISignatureTransfer.PermitTransferFrom memory permit,
                    address maker,
                    ,
                    IERC20 takerToken,
                    uint256 maxTakerAmount
                ) = abi.decode(data, (address, ISignatureTransfer.PermitTransferFrom, address, bytes, IERC20, uint256));
                uint256 takerAmount = _balances[settler][address(takerToken)];
                orders[i] = RFQOrder({
                    maker: maker,
                    makerAsset: permit.permitted.token,
                    taker: recipient,
                    takerAsset: address(takerToken),
                    makerAmount: _permitToSellAmount(permit, maker).unsafeMulDiv(takerAmount, maxTakerAmount),
                    takerAmount: (takerAmount > maxTakerAmount).ternary(maxTakerAmount, takerAmount)
                });
            } else if (selector == uint32(ISettlerActions.RFQ_VIP.selector)) {
                // (
                //     address recipient,
                //     ISignatureTransfer.PermitTransferFrom memory makerPermit,
                //     address maker,
                //     ,
                //     ISignatureTransfer.PermitTransferFrom memory takerPermit,
                // ) = abi.decode(
                //     data,
                //     (
                //         address,
                //         ISignatureTransfer.PermitTransferFrom,
                //         address,
                //         bytes,
                //         ISignatureTransfer.PermitTransferFrom,
                //         bytes
                //     )
                // );
                // RFQOrder memory order = RFQOrder({
                //     maker: maker,
                //     makerAsset: makerPermit.permitted.token,
                //     taker: recipient,
                //     takerAsset: takerPermit.permitted.token,
                //     makerAmount: _permitToSellAmount(makerPermit, maker),
                //     takerAmount: _permitToSellAmount(takerPermit, recipient)
                // });
                // orders[j] = order;
                // j++;
            } else if (selector == uint32(ISettlerActions.TRANSFER_FROM.selector)) {
                (address recipient, ISignatureTransfer.PermitTransferFrom memory permit,) =
                    abi.decode(data, (address, ISignatureTransfer.PermitTransferFrom, bytes));
                _balances[recipient][permit.permitted.token] += permit.permitted.amount;
            }
        }
        return orders;
    }

    /// @notice Wrapper around _decodeCalls which processes actions.
    /// @param actions The actions array.
    /// @param settler The settler's address.
    /// @return orders The corresponding RFQ orders.
    function decodeCalls(bytes[] memory actions, address settler) public returns (RFQOrder[] memory) {
        return this._decodeCalls(actions, settler);
    }
}
