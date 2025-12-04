part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<CartModel> carts,
    required CartModel cart,
    @Default({}) Map<int, int> tempQuantities,
    @Default([]) List<UserRegistrationData> deliveryModel,
    @Default(0.0) double totalCartPrice,
    @Default(false) bool isCreatingOrder,
    @Default(false) bool showOrderLoadingScreen,
    @Default(false) bool showOrderSuccessScreen,
    @Default(false) bool showOrderErrorScreen,
  }) = _CartState;
}
