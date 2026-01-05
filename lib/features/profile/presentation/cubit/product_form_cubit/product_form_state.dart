part of 'product_form_cubit.dart';

@freezed
class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    @Default([]) List<File> selectedImages,
    @Default(false) bool selfDestruction,
    required ProductModel product,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int currentImageIndex,
    PageController? pageController,
    @Default([]) List<MainCategoryModel> category,
  }) = _ProductFormState;
}
