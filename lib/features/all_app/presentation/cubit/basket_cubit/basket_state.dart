part of 'basket_cubit.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<CartModel> carts,
    required CartModel cart,
    @Default({}) Map<int, int> tempQuantities,
    @Default([]) List<UserRegistrationData> deliveryModel,
    @Default(0.0) double totalCartPrice,
  }) = _BasketState;
}
