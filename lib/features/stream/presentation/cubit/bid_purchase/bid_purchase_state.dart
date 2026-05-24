part of 'bid_purchase_cubit.dart';

@freezed
class BidPurchaseState with _$BidPurchaseState {
  const factory BidPurchaseState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingAddresses,
    @Default(false) bool isLoadingWallet,
    @Default('') String errorMessage,
    @Default(false) bool hasDeliveryAddress,
    @Default('wallet') String selectedPaymentMethod,
    int? selectedWalletId,
    AddressModel? selectedAddress,
    @Default([]) List<AddressModel> addresses,
    @Default(false) bool showFirstSheet,
    @Default(false) bool showSecondSheet,
    // Payment result fields (mirrors CartState)
    @Default(false) bool showOrderSuccessScreen,
    @Default(false) bool showOrderErrorScreen,
    String? qrCodeSvg,
    String? sbpPaymentUrl,
    String? pendingPaymentWebViewUrl,
    String? lastOrderUuid,
  }) = _BidPurchaseState;
}