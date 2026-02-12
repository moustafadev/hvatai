import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_fav_category_usecase.dart';

import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategoryUsecase getCategoryUsecase;
  final GetFavCategoryUsecase getFavCategoryUsecase;

  CategoriesCubit(this.getFavCategoryUsecase, this.getCategoryUsecase)
      : super(CategoriesState.initial());

  Future<void> loadAllCategories() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getCategoryUsecase.call(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (categories) => emit(state.copyWith(
        isLoading: false,
        allCategories: categories,
      )),
    );
  }

  Future<void> loadFavoriteCategories() async {
    emit(state.copyWith(
        isLoading: true, errorMessage: '', favoriteCategories: null));
    final result = await getFavCategoryUsecase.call(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (categories) {
        /// filter the data that the parentId == null
        final filteredCategories = categories.data
            ?.where((category) => category.parentId == null)
            .toList();
        emit(state.copyWith(
          isLoading: false,
          favoriteCategories: CategoryModel(data: filteredCategories),
        ));
      },
    );
  }

  void toggleSubcategory(int subcategoryId) {
    final updated = List<int>.from(state.selectedSubcategoryIds);

    if (updated.contains(subcategoryId)) {
      updated.remove(subcategoryId);
    } else {
      updated.add(subcategoryId);
    }

    emit(state.copyWith(selectedSubcategoryIds: updated));
  }

  void toggleFavoriteCategory({required int categoryId}) {
    final prevFavIds = List<int>.from(state.selectedFavoriteCategoryIds);
    final prevSubIds = List<int>.from(state.selectedSubcategoryIds);

    final wasEmptyBefore = prevFavIds.isEmpty;
    final isSelected = prevFavIds.contains(categoryId);

    // compute next fav ids
    final nextFavIds = List<int>.from(prevFavIds);
    if (isSelected) {
      nextFavIds.remove(categoryId);
    } else {
      nextFavIds.add(categoryId);
    }

    // compute next selected subcategory ids
    List<int> nextSubIds;

    if (wasEmptyBefore) {
      // ✅ first time selecting any favorite => reset child filters
      nextSubIds = const <int>[];
    } else if (isSelected) {
      // ✅ removing a favorite => remove its children from selected sub ids
      final removedChildIds = _getChildrenIdsOfFavorite(categoryId).toSet();
      nextSubIds =
          prevSubIds.where((id) => !removedChildIds.contains(id)).toList();
    } else {
      // ✅ adding another favorite while already having favorites => keep filters
      nextSubIds = prevSubIds;
    }

    emit(state.copyWith(
      selectedFavoriteCategoryIds: nextFavIds,
      selectedSubcategoryIds: nextSubIds,
      availableSubcategories: _buildAvailableSubcategories(nextFavIds),
    ));
  }

  List<int> _getChildrenIdsOfFavorite(int favoriteCategoryId) {
    final all = state.favoriteCategories?.data ?? const <CategoryData>[];

    final parent = all.firstWhere(
      (c) => c.id == favoriteCategoryId,
      orElse: () => const CategoryData(),
    );

    final children = parent.children ?? const <CategoryChild>[];
    return children.map((c) => c.id ?? 0).where((id) => id != 0).toList();
  }

  CategoryModel? _buildAvailableSubcategories(List<int> parentIds) {
    if (parentIds.isEmpty) return null;

    final all = state.favoriteCategories?.data ?? const <CategoryData>[];

    final subCategories = <CategoryData>[];

    for (final parent in all) {
      if (!parentIds.contains(parent.id)) continue;

      final children = parent.children;
      if (children == null || children.isEmpty) continue;

      for (final child in children) {
        subCategories.add(
          CategoryData(
            id: child.id,
            name: child.name,
            type: child.type,
            parentId: parent.id,
          ),
        );
      }
    }

    return subCategories.isNotEmpty ? CategoryModel(data: subCategories) : null;
  }

  /// Apply favorite category selection and reset subcategories when pop from the categories for you
  void applyFavSelection({required List<int> ids}) {
    final prevFavIds = List<int>.from(state.selectedFavoriteCategoryIds);
    final prevSubIds = List<int>.from(state.selectedSubcategoryIds);

    final wasEmptyBefore = prevFavIds.isEmpty;

    // If this is the first time selecting favorites => reset child filters
    if (wasEmptyBefore) {
      emit(state.copyWith(
        selectedFavoriteCategoryIds: ids,
        selectedSubcategoryIds: const [],
        availableSubcategories: _buildAvailableSubcategories(ids),
      ));
      return;
    }

    // favorites removed by apply
    final removedFavIds =
        prevFavIds.where((oldId) => !ids.contains(oldId)).toList();

    // remove children of removed favorites from selectedSubcategoryIds
    final removedChildIds = <int>{};
    for (final favId in removedFavIds) {
      removedChildIds.addAll(_getChildrenIdsOfFavorite(favId));
    }

    final nextSubIds =
        prevSubIds.where((subId) => !removedChildIds.contains(subId)).toList();

    emit(state.copyWith(
      selectedFavoriteCategoryIds: ids,
      selectedSubcategoryIds: nextSubIds,
      availableSubcategories: _buildAvailableSubcategories(ids),
    ));
  }
}
