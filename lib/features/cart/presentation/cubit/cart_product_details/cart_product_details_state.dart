part of 'cart_product_details_cubit.dart';

@freezed
class CartProductDetailsState with _$CartProductDetailsState {
  const factory CartProductDetailsState({
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> ownerProducts,
    @Default(0) int currentImageIndex,
    PageController? pageController,
    required ProductModel product,
    @Default(false) bool? isFavourites,
    @Default(false) bool isJoiningStream,
  }) = _CartProductDetailsState;
}
