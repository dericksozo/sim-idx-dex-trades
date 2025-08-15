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

struct GPv2Settlement$GPv2Trade$Data {
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

struct GPv2Settlement$GPv2Interaction$Data {
    address target;
    uint256 value;
    bytes callData;
}

struct GPv2Settlement$SettleFunctionInputs {
    address[] tokens;
    uint256[] clearingPrices;
    GPv2Settlement$GPv2Trade$Data[] trades;
    GPv2Settlement$GPv2Interaction$Data[][3] interactions;
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

struct GPv2Settlement$IVault$BatchSwapStep {
    bytes32 poolId;
    uint256 assetInIndex;
    uint256 assetOutIndex;
    uint256 amount;
    bytes userData;
}

struct GPv2Settlement$SwapFunctionInputs {
    GPv2Settlement$IVault$BatchSwapStep[] swaps;
    address[] tokens;
    GPv2Settlement$GPv2Trade$Data trade;
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
    function GPv2Settlement$onInteractionEvent(EventContext memory ctx, GPv2Settlement$InteractionEventParams memory inputs) virtual external;

    function GPv2Settlement$triggerOnInteractionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0xed99827efb37016f2275f98c4bcf71c7551c75d59e9b450f79fa32e60be672c2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onInteractionEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnOrderInvalidatedEvent {
    function GPv2Settlement$onOrderInvalidatedEvent(EventContext memory ctx, GPv2Settlement$OrderInvalidatedEventParams memory inputs) virtual external;

    function GPv2Settlement$triggerOnOrderInvalidatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0x875b6cb035bbd4ac6500fabc6d1e4ca5bdc58a3e2b424ccb5c24cdbebeb009a9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onOrderInvalidatedEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnPreSignatureEvent {
    function GPv2Settlement$onPreSignatureEvent(EventContext memory ctx, GPv2Settlement$PreSignatureEventParams memory inputs) virtual external;

    function GPv2Settlement$triggerOnPreSignatureEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0x01bf7c8b0ca55deecbea89d7e58295b7ffbf685fd0d96801034ba8c6ffe1c68d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onPreSignatureEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnSettlementEvent {
    function GPv2Settlement$onSettlementEvent(EventContext memory ctx, GPv2Settlement$SettlementEventParams memory inputs) virtual external;

    function GPv2Settlement$triggerOnSettlementEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0x40338ce1a7c49204f0099533b1e9a7ee0a3d261f84974ab7af36105b8c4e9db4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onSettlementEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnTradeEvent {
    function GPv2Settlement$onTradeEvent(EventContext memory ctx, GPv2Settlement$TradeEventParams memory inputs) virtual external;

    function GPv2Settlement$triggerOnTradeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes32(0xa07a543ab8a018198e99ca0184c93fe9050a79400a0a723441f84de1d972cc17),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onTradeEvent.selector
        });
    }
}

abstract contract GPv2Settlement$OnAuthenticatorFunction {
    function GPv2Settlement$onAuthenticatorFunction(FunctionContext memory ctx, GPv2Settlement$AuthenticatorFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnAuthenticatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2335c76b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onAuthenticatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreAuthenticatorFunction {
    function GPv2Settlement$preAuthenticatorFunction(PreFunctionContext memory ctx) virtual external;

    function GPv2Settlement$triggerPreAuthenticatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2335c76b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preAuthenticatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnDomainSeparatorFunction {
    function GPv2Settlement$onDomainSeparatorFunction(FunctionContext memory ctx, GPv2Settlement$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf698da25),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreDomainSeparatorFunction {
    function GPv2Settlement$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function GPv2Settlement$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf698da25),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnFilledAmountFunction {
    function GPv2Settlement$onFilledAmountFunction(FunctionContext memory ctx, GPv2Settlement$FilledAmountFunctionInputs memory inputs, GPv2Settlement$FilledAmountFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnFilledAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2479fb6e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onFilledAmountFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreFilledAmountFunction {
    function GPv2Settlement$preFilledAmountFunction(PreFunctionContext memory ctx, GPv2Settlement$FilledAmountFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreFilledAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x2479fb6e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preFilledAmountFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnFreeFilledAmountStorageFunction {
    function GPv2Settlement$onFreeFilledAmountStorageFunction(FunctionContext memory ctx, GPv2Settlement$FreeFilledAmountStorageFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerOnFreeFilledAmountStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xed9f35ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onFreeFilledAmountStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreFreeFilledAmountStorageFunction {
    function GPv2Settlement$preFreeFilledAmountStorageFunction(PreFunctionContext memory ctx, GPv2Settlement$FreeFilledAmountStorageFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreFreeFilledAmountStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xed9f35ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preFreeFilledAmountStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnFreePreSignatureStorageFunction {
    function GPv2Settlement$onFreePreSignatureStorageFunction(FunctionContext memory ctx, GPv2Settlement$FreePreSignatureStorageFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerOnFreePreSignatureStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xa2a7d51b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onFreePreSignatureStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreFreePreSignatureStorageFunction {
    function GPv2Settlement$preFreePreSignatureStorageFunction(PreFunctionContext memory ctx, GPv2Settlement$FreePreSignatureStorageFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreFreePreSignatureStorageFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xa2a7d51b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preFreePreSignatureStorageFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnGetStorageAtFunction {
    function GPv2Settlement$onGetStorageAtFunction(FunctionContext memory ctx, GPv2Settlement$GetStorageAtFunctionInputs memory inputs, GPv2Settlement$GetStorageAtFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnGetStorageAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x5624b25b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onGetStorageAtFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreGetStorageAtFunction {
    function GPv2Settlement$preGetStorageAtFunction(PreFunctionContext memory ctx, GPv2Settlement$GetStorageAtFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreGetStorageAtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x5624b25b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preGetStorageAtFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnInvalidateOrderFunction {
    function GPv2Settlement$onInvalidateOrderFunction(FunctionContext memory ctx, GPv2Settlement$InvalidateOrderFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerOnInvalidateOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x15337bc0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onInvalidateOrderFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreInvalidateOrderFunction {
    function GPv2Settlement$preInvalidateOrderFunction(PreFunctionContext memory ctx, GPv2Settlement$InvalidateOrderFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreInvalidateOrderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x15337bc0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preInvalidateOrderFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnPreSignatureFunction {
    function GPv2Settlement$onPreSignatureFunction(FunctionContext memory ctx, GPv2Settlement$PreSignatureFunctionInputs memory inputs, GPv2Settlement$PreSignatureFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnPreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xd08d33d1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onPreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PrePreSignatureFunction {
    function GPv2Settlement$prePreSignatureFunction(PreFunctionContext memory ctx, GPv2Settlement$PreSignatureFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPrePreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xd08d33d1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$prePreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSetPreSignatureFunction {
    function GPv2Settlement$onSetPreSignatureFunction(FunctionContext memory ctx, GPv2Settlement$SetPreSignatureFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerOnSetPreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xec6cb13f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onSetPreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSetPreSignatureFunction {
    function GPv2Settlement$preSetPreSignatureFunction(PreFunctionContext memory ctx, GPv2Settlement$SetPreSignatureFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreSetPreSignatureFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xec6cb13f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preSetPreSignatureFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSettleFunction {
    function GPv2Settlement$onSettleFunction(FunctionContext memory ctx, GPv2Settlement$SettleFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerOnSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x13d79a0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onSettleFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSettleFunction {
    function GPv2Settlement$preSettleFunction(PreFunctionContext memory ctx, GPv2Settlement$SettleFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x13d79a0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preSettleFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSimulateDelegatecallFunction {
    function GPv2Settlement$onSimulateDelegatecallFunction(FunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallFunctionInputs memory inputs, GPv2Settlement$SimulateDelegatecallFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnSimulateDelegatecallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf84436bd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onSimulateDelegatecallFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSimulateDelegatecallFunction {
    function GPv2Settlement$preSimulateDelegatecallFunction(PreFunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreSimulateDelegatecallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xf84436bd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preSimulateDelegatecallFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSimulateDelegatecallInternalFunction {
    function GPv2Settlement$onSimulateDelegatecallInternalFunction(FunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallInternalFunctionInputs memory inputs, GPv2Settlement$SimulateDelegatecallInternalFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnSimulateDelegatecallInternalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x43218e19),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onSimulateDelegatecallInternalFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSimulateDelegatecallInternalFunction {
    function GPv2Settlement$preSimulateDelegatecallInternalFunction(PreFunctionContext memory ctx, GPv2Settlement$SimulateDelegatecallInternalFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreSimulateDelegatecallInternalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x43218e19),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preSimulateDelegatecallInternalFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnSwapFunction {
    function GPv2Settlement$onSwapFunction(FunctionContext memory ctx, GPv2Settlement$SwapFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x845a101f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onSwapFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreSwapFunction {
    function GPv2Settlement$preSwapFunction(PreFunctionContext memory ctx, GPv2Settlement$SwapFunctionInputs memory inputs) virtual external;

    function GPv2Settlement$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x845a101f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preSwapFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnVaultFunction {
    function GPv2Settlement$onVaultFunction(FunctionContext memory ctx, GPv2Settlement$VaultFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onVaultFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreVaultFunction {
    function GPv2Settlement$preVaultFunction(PreFunctionContext memory ctx) virtual external;

    function GPv2Settlement$triggerPreVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preVaultFunction.selector
        });
    }
}

abstract contract GPv2Settlement$OnVaultRelayerFunction {
    function GPv2Settlement$onVaultRelayerFunction(FunctionContext memory ctx, GPv2Settlement$VaultRelayerFunctionOutputs memory outputs) virtual external;

    function GPv2Settlement$triggerOnVaultRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x9b552cc2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$onVaultRelayerFunction.selector
        });
    }
}

abstract contract GPv2Settlement$PreVaultRelayerFunction {
    function GPv2Settlement$preVaultRelayerFunction(PreFunctionContext memory ctx) virtual external;

    function GPv2Settlement$triggerPreVaultRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GPv2Settlement",
            selector: bytes4(0x9b552cc2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.GPv2Settlement$preVaultRelayerFunction.selector
        });
    }
}


struct GPv2Settlement$EmitAllEvents$Interaction {
  address target;
  uint256 value;
  bytes4 selector;
}

struct GPv2Settlement$EmitAllEvents$OrderInvalidated {
  address owner;
  bytes orderUid;
}

struct GPv2Settlement$EmitAllEvents$PreSignature {
  address owner;
  bytes orderUid;
  bool signed;
}

struct GPv2Settlement$EmitAllEvents$Settlement {
  address solver;
}

struct GPv2Settlement$EmitAllEvents$Trade {
  address owner;
  address sellToken;
  address buyToken;
  uint256 sellAmount;
  uint256 buyAmount;
  uint256 feeAmount;
  bytes orderUid;
}

contract GPv2Settlement$EmitAllEvents is
  GPv2Settlement$OnInteractionEvent,
GPv2Settlement$OnOrderInvalidatedEvent,
GPv2Settlement$OnPreSignatureEvent,
GPv2Settlement$OnSettlementEvent,
GPv2Settlement$OnTradeEvent
{
  event Interaction(GPv2Settlement$EmitAllEvents$Interaction);
  event OrderInvalidated(GPv2Settlement$EmitAllEvents$OrderInvalidated);
  event PreSignature(GPv2Settlement$EmitAllEvents$PreSignature);
  event Settlement(GPv2Settlement$EmitAllEvents$Settlement);
  event Trade(GPv2Settlement$EmitAllEvents$Trade);

  function GPv2Settlement$onInteractionEvent(EventContext memory ctx, GPv2Settlement$InteractionEventParams memory inputs) virtual external override {
    emit Interaction(GPv2Settlement$EmitAllEvents$Interaction(inputs.target, inputs.value, inputs.selector));
  }
function GPv2Settlement$onOrderInvalidatedEvent(EventContext memory ctx, GPv2Settlement$OrderInvalidatedEventParams memory inputs) virtual external override {
    emit OrderInvalidated(GPv2Settlement$EmitAllEvents$OrderInvalidated(inputs.owner, inputs.orderUid));
  }
function GPv2Settlement$onPreSignatureEvent(EventContext memory ctx, GPv2Settlement$PreSignatureEventParams memory inputs) virtual external override {
    emit PreSignature(GPv2Settlement$EmitAllEvents$PreSignature(inputs.owner, inputs.orderUid, inputs.signed));
  }
function GPv2Settlement$onSettlementEvent(EventContext memory ctx, GPv2Settlement$SettlementEventParams memory inputs) virtual external override {
    emit Settlement(GPv2Settlement$EmitAllEvents$Settlement(inputs.solver));
  }
function GPv2Settlement$onTradeEvent(EventContext memory ctx, GPv2Settlement$TradeEventParams memory inputs) virtual external override {
    emit Trade(GPv2Settlement$EmitAllEvents$Trade(inputs.owner, inputs.sellToken, inputs.buyToken, inputs.sellAmount, inputs.buyAmount, inputs.feeAmount, inputs.orderUid));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](5);
    triggers[0] = this.GPv2Settlement$triggerOnInteractionEvent();
    triggers[1] = this.GPv2Settlement$triggerOnOrderInvalidatedEvent();
    triggers[2] = this.GPv2Settlement$triggerOnPreSignatureEvent();
    triggers[3] = this.GPv2Settlement$triggerOnSettlementEvent();
    triggers[4] = this.GPv2Settlement$triggerOnTradeEvent();
    return triggers;
  }
}