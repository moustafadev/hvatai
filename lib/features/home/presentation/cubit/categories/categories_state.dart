import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    CategoryModel? categories,
    @Default([]) List<int> selectedDetailIds,
    CategoryModel? filteredCategories,
    required int selectedIndex,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default([]) List<int> selectedCategoryIds,
    @Default({}) Set<int> selectedIndicesDetails,
    DateTime? lastRequestTime,
    @Default(false) bool isLoading,
    String? error,
  }) = _CategoriesState;

  factory CategoriesState.initial() => const CategoriesState(
        selectedIndex: 0,
        isLoading: false,
        error: null,
        lastRequestTime: null,
      );
}
