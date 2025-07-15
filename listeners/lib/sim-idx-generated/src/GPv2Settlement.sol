// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function GPv2Settlement$Abi() pure returns (Abi memory) {
    return Abi("GPv2Settlement");
}
struct GPv2Settlement$AuthenticatorFunctionOutputs {
    address outArg0;
}

struct GPv2Settlement$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct GPv2Settlement$FilledAmountFunctionInputs {
    bytes outArg0;
}

struct GPv2Settlement$FilledAmountFunctionOutputs {
    uint256 outArg0;
}

struct GPv2Settlement$FreeFilledAmountStorageFunctionInputs {
    bytes[] orderUids;
}

struct GPv2Settlement$FreePreSignatureStorageFunctionInputs {
    bytes[] orderUids;
}

struct GPv2Settlement$GetStorageAtFunctionInputs {
    uint256 offset;
    uint256 length;
}

struct GPv2Settlement$GetStorageAtFunctionOutputs {
    bytes outArg0;
}

struct GPv2Settlement$InvalidateOrderFunctionInputs {
    bytes orderUid;
}

struct GPv2Settlement$PreSignatureFunctionInputs {
    bytes outArg0;
}

struct GPv2Settlement$PreSignatureFunctionOutputs {
    uint256 outArg0;
}

struct GPv2Settlement$SetPreSignatureFunctionInputs {
    bytes orderUid;
    bool signed;
}

struct GPv2Settlement$Data {
    uint256 sellTokenIndex;
    uint256 buyTokenIndex;
    address receiver;
    uint256 sellAmount;
    uint256 buyAmount;
    uint32 validTo;
    bytes32 appData;
    uint256 feeAmount;
    uint256 flags;
    uint256 executedAmount;
    bytes signature;
}

struct GPv2Settlement$Data[][3] {
    address target;
    uint256 value;
    bytes callData;
}

struct GPv2Settlement$SettleFunctionInputs {
    address[] tokens;
    uint256[] clearingPrices;
    GPv2Settlement$Data[] trades;
    GPv2Settlement$Data[][3] interactions;
}

struct GPv2Settlement$SimulateDelegatecallFunctionInputs {
    address targetContract;
    bytes calldataPayload;
}

struct GPv2Settlement$SimulateDelegatecallFunctionOutputs {
    bytes response;
}

struct GPv2Settlement$SimulateDelegatecallInternalFunctionInputs {
    address targetContract;
    bytes calldataPayload;
}

struct GPv2Settlement$SimulateDelegatecallInternalFunctionOutputs {
    bytes response;
}

struct GPv2Settlement$BatchSwapStep {
    bytes32 poolId;
    uint256 assetInIndex;
    uint256 assetOutIndex;
    uint256 amount;
    bytes userData;
}

struct GPv2Settlement$SwapFunctionInputs {
    GPv2Settlement$BatchSwapStep[] swaps;
    address[] tokens;
    GPv2Settlement$Data trade;
}

struct GPv2Settlement$VaultFunctionOutputs {
    address outArg0;
}

struct GPv2Settlement$VaultRelayerFunctionOutputs {
    address outArg0;
}

struct GPv2Settlement$InteractionEventParams {
    address target;
    uint256 value;
    bytes4 selector;
}

struct GPv2Settlement$OrderInvalidatedEventParams {
    address owner;
    bytes orderUid;
}

struct GPv2Settlement$PreSignatureEventParams {
    address owner;
    bytes orderUid;
    bool signed;
}

struct GPv2Settlement$SettlementEventParams {
    address solver;
}

struct GPv2Settlement$TradeEventParams {
    address owner;
    address sellToken;
    address buyToken;
    uint256 sellAmount;
    uint256 buyAmount;
    uint256 feeAmount;
    bytes orderUid;
}

abstract contract GPv2Settlement$OnInteractionEvent {
    function onInteractionEvent(EventContext memory ctx, GPv2Settlement$InteractionEventParams memory inputs) virtual external;

    function triggerOnInteractionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0xed99827efb37016f2275f98c4bcf71c7551c75d59e9b450f79fa32e60be672c2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInteractionEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnOrderInvalidatedEvent {
    function onOrderInvalidatedEvent(EventContext memory ctx, GPv2Settlement$OrderInvalidatedEventParams memory inputs) virtual external;

    function triggerOnOrderInvalidatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0x875b6cb035bbd4ac6500fabc6d1e4ca5bdc58a3e2b424ccb5c24cdbebeb009a9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOrderInvalidatedEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnPreSignatureEvent {
    function onPreSignatureEvent(EventContext memory ctx, GPv2Settlement$PreSignatureEventParams memory inputs) virtual external;

    function triggerOnPreSignatureEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0x01bf7c8b0ca55deecbea89d7e58295b7ffbf685fd0d96801034ba8c6ffe1c68d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreSignatureEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnSettlementEvent {
    function onSettlementEvent(EventContext memory ctx, GPv2Settlement$SettlementEventParams memory inputs) virtual external;

    function triggerOnSettlementEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0x40338ce1a7c49204f0099533b1e9a7ee0a3d261f84974ab7af36105b8c4e9db4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSettlementEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnTradeEvent {
    function onTradeEvent(EventContext memory ctx, GPv2Settlement$TradeEventParams memory inputs) virtual external;

    function triggerOnTradeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0xa07a543ab8a018198e99ca0184c93fe9050a79400a0a723441f84de1d972cc17),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTradeEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnAuthenticatorFunction {
    function onAuthenticatorFunction(FunctionContext memory ctx, GPv2Settlement$AuthenticatorFunctionOutputs memory outputs) virtual external;

    function triggerOnAuthenticatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2335c76b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAuthenticatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreAuthenticatorFunction {
    function preAuthenticatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAuthenticatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2335c76b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAuthenticatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnDomainSeparatorFunction {
    function onDomainSeparatorFunction(FunctionContext memory ctx, GPv2Settlement$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf698da25),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDomainSeparatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreDomainSeparatorFunction {
    function preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf698da25),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDomainSeparatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnFilledAmountFunction {
    function onFilledAmountFunction(FunctionContext memory ctx, GPv2Settlement$FilledAmountFunctionInputs memory inputs, GPv2Settlement$FilledAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnFilledAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2479fb6e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFilledAmountFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreFilledAmountFunction {
    function preFilledAmountFunction(PreFunctionContext memory ctx, GPv2Settlement$FilledAmountFunctionInputs memory inputs) virtual external;

    function triggerPreFilledAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2479fb6e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFilledAmountFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnFreeFilledAmountStorageFunction {
    function onFreeFilledAmountStorageFunction(FunctionContext memory ctx, GPv2Settlement$FreeFilledAmountStorageFunctionInputs memory inputs) virtual external;

    function triggerOnFreeFilledAmountStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xed9f35ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFreeFilledAmountStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreFreeFilledAmountStorageFunction {
    function preFreeFilledAmountStorageFunction(PreFunctionContext memory ctx, GPv2Settlement$FreeFilledAmountStorageFunctionInputs memory inputs) virtual external;

    function triggerPreFreeFilledAmountStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xed9f35ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFreeFilledAmountStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnFreePreSignatureStorageFunction {
    function onFreePreSignatureStorageFunction(FunctionContext memory ctx, GPv2Settlement$FreePreSignatureStorageFunctionInputs memory inputs) virtual external;

    function triggerOnFreePreSignatureStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xa2a7d51b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFreePreSignatureStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreFreePreSignatureStorageFunction {
    function preFreePreSignatureStorageFunction(PreFunctionContext memory ctx, GPv2Settlement$FreePreSignatureStorageFunctionInputs memory inputs) virtual external;

    function triggerPreFreePreSignatureStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xa2a7d51b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFreePreSignatureStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnGetStorageAtFunction {
    function onGetStorageAtFunction(FunctionContext memory ctx, GPv2Settlement$GetStorageAtFunctionInputs memory inputs, GPv2Settlement$GetStorageAtFunctionOutputs memory outputs) virtual external;

    function triggerOnGetStorageAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x5624b25b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetStorageAtFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreGetStorageAtFunction {
    function preGetStorageAtFunction(PreFunctionContext memory ctx, GPv2Settlement$GetStorageAtFunctionInputs memory inputs) virtual external;

    function triggerPreGetStorageAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x5624b25b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetStorageAtFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnInvalidateOrderFunction {
    function onInvalidateOrderFunction(FunctionContext memory ctx, GPv2Settlement$InvalidateOrderFunctionInputs memory inputs) virtual external;

    function triggerOnInvalidateOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x15337bc0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInvalidateOrderFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreInvalidateOrderFunction {
    function preInvalidateOrderFunction(PreFunctionContext memory ctx, GPv2Settlement$InvalidateOrderFunctionInputs memory inputs) virtual external;

    function triggerPreInvalidateOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x15337bc0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInvalidateOrderFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnPreSignatureFunction {
    function onPreSignatureFunction(FunctionContext memory ctx, GPv2Settlement$PreSignatureFunctionInputs memory inputs, GPv2Settlement$PreSignatureFunctionOutputs memory outputs) virtual external;

    function triggerOnPreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xd08d33d1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PrePreSignatureFunction {
    function prePreSignatureFunction(PreFunctionContext memory ctx, GPv2Settlement$PreSignatureFunctionInputs memory inputs) virtual external;

    function triggerPrePreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xd08d33d1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSetPreSignatureFunction {
    function onSetPreSignatureFunction(FunctionContext memory ctx, GPv2Settlement$SetPreSignatureFunctionInputs memory inputs) virtual external;

    function triggerOnSetPreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xec6cb13f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetPreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSetPreSignatureFunction {
    function preSetPreSignatureFunction(PreFunctionContext memory ctx, GPv2Settlement$SetPreSignatureFunctionInputs memory inputs) virtual external;

    function triggerPreSetPreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xec6cb13f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetPreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSettleFunction {
    function onSettleFunction(FunctionContext memory ctx, GPv2Settlement$SettleFunctionInputs memory inputs) virtual external;

    function triggerOnSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x13d79a0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSettleFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSettleFunction {
    function preSettleFunction(PreFunctionContext memory ctx, GPv2Settlement$SettleFunctionInputs memory inputs) virtual external;

    function triggerPreSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x13d79a0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSettleFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSimulateDelegatecallFunction {
    function onSimulateDelegatecallFunction(FunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallFunctionInputs memory inputs, GPv2Settlement$SimulateDelegatecallFunctionOutputs memory outputs) virtual external;

    function triggerOnSimulateDelegatecallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf84436bd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSimulateDelegatecallFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSimulateDelegatecallFunction {
    function preSimulateDelegatecallFunction(PreFunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallFunctionInputs memory inputs) virtual external;

    function triggerPreSimulateDelegatecallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf84436bd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSimulateDelegatecallFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSimulateDelegatecallInternalFunction {
    function onSimulateDelegatecallInternalFunction(FunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallInternalFunctionInputs memory inputs, GPv2Settlement$SimulateDelegatecallInternalFunctionOutputs memory outputs) virtual external;

    function triggerOnSimulateDelegatecallInternalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x43218e19),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSimulateDelegatecallInternalFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSimulateDelegatecallInternalFunction {
    function preSimulateDelegatecallInternalFunction(PreFunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallInternalFunctionInputs memory inputs) virtual external;

    function triggerPreSimulateDelegatecallInternalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x43218e19),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSimulateDelegatecallInternalFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSwapFunction {
    function onSwapFunction(FunctionContext memory ctx, GPv2Settlement$SwapFunctionInputs memory inputs) virtual external;

    function triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x845a101f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSwapFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSwapFunction {
    function preSwapFunction(PreFunctionContext memory ctx, GPv2Settlement$SwapFunctionInputs memory inputs) virtual external;

    function triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x845a101f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSwapFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnVaultFunction {
    function onVaultFunction(FunctionContext memory ctx, GPv2Settlement$VaultFunctionOutputs memory outputs) virtual external;

    function triggerOnVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVaultFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreVaultFunction {
    function preVaultFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVaultFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnVaultRelayerFunction {
    function onVaultRelayerFunction(FunctionContext memory ctx, GPv2Settlement$VaultRelayerFunctionOutputs memory outputs) virtual external;

    function triggerOnVaultRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x9b552cc2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVaultRelayerFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreVaultRelayerFunction {
    function preVaultRelayerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVaultRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x9b552cc2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVaultRelayerFunction.selector
        });
    }
}

contract GPv2Settlement$EmitAllEvents is
  GPv2Settlement$OnInteractionEvent,
GPv2Settlement$OnOrderInvalidatedEvent,
GPv2Settlement$OnPreSignatureEvent,
GPv2Settlement$OnSettlementEvent,
GPv2Settlement$OnTradeEvent
{
  event Interaction(address target, uint256 value, bytes4 selector);
event OrderInvalidated(address owner, bytes orderUid);
event PreSignature(address owner, bytes orderUid, bool signed);
event Settlement(address solver);
event Trade(address owner, address sellToken, address buyToken, uint256 sellAmount, uint256 buyAmount, uint256 feeAmount, bytes orderUid);

  function onInteractionEvent(EventContext memory ctx, GPv2Settlement$InteractionEventParams memory inputs) virtual external override {
    emit Interaction(inputs.target, inputs.value, inputs.selector);
  }
function onOrderInvalidatedEvent(EventContext memory ctx, GPv2Settlement$OrderInvalidatedEventParams memory inputs) virtual external override {
    emit OrderInvalidated(inputs.owner, inputs.orderUid);
  }
function onPreSignatureEvent(EventContext memory ctx, GPv2Settlement$PreSignatureEventParams memory inputs) virtual external override {
    emit PreSignature(inputs.owner, inputs.orderUid, inputs.signed);
  }
function onSettlementEvent(EventContext memory ctx, GPv2Settlement$SettlementEventParams memory inputs) virtual external override {
    emit Settlement(inputs.solver);
  }
function onTradeEvent(EventContext memory ctx, GPv2Settlement$TradeEventParams memory inputs) virtual external override {
    emit Trade(inputs.owner, inputs.sellToken, inputs.buyToken, inputs.sellAmount, inputs.buyAmount, inputs.feeAmount, inputs.orderUid);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](5);
    triggers[0] = this.triggerOnInteractionEvent();
    triggers[1] = this.triggerOnOrderInvalidatedEvent();
    triggers[2] = this.triggerOnPreSignatureEvent();
    triggers[3] = this.triggerOnSettlementEvent();
    triggers[4] = this.triggerOnTradeEvent();
    return triggers;
  }
}