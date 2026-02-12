import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    CategoryModel? allCategories, // all categories
    CategoryModel? favoriteCategories, // fav categories list (from API)
    CategoryModel? availableSubcategories, // union subcats for selected favorites

    @Default(<int>[]) List<int> selectedFavoriteCategoryIds,

    @Default(<int>[]) List<int> selectedSubcategoryIds,

    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _CategoriesState;

  factory CategoriesState.initial() => const CategoriesState(
        isLoading: false,
        errorMessage: null,
      );
}
