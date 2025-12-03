part of '../../favorites.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(0) int selectedCategoryIndex,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> products,
  }) = _FavoriteState;
}
