part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    @Default(0) int selectedTabIndex,
    @Default(0) int selectedCategoryIndex,
    @Default(false) bool isLoading,
    @Default(0) int currentImageIndex,
    @Default('') String errorMessage,
    required ProductModel product,
    @Default([]) List<ProductModel> products,
  }) = _ActivityState;
}
