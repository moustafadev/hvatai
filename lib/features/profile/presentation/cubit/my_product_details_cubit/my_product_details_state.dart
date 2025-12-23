part of 'my_product_details_cubit.dart';

@freezed
class MyProductDetailsState with _$MyProductDetailsState {
  const factory MyProductDetailsState({
    @Default(null) ProductModel? product,
    @Default(0) int currentImageIndex,
    PageController? pageController,
  }) = _MyProductDetailsState;
}
