part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<CartModel> carts,
    @Default({}) Map<int, int> tempQuantities,
    @Default([]) List<UserRegistrationData> deliveryModel,
    @Default(0.0) double totalCartPrice,
    @Default(0) int selectedTipAmount,
    @Default('wallet') String selectedPaymentMethod,
    @Default('delivery') String deliveryMethod, // 'delivery' or 'pickup'  
    @Default(false) bool isCreatingOrder,
    @Default(false) bool showOrderLoadingScreen,
    @Default(false) bool showOrderSuccessScreen,
    @Default(false) bool showOrderErrorScreen,
    String? qrCodeSvg,
    String? sbpPaymentUrl,
    String? pendingPaymentWebViewUrl,
    String? lastOrderUuid,
  }) = _CartState;
}
