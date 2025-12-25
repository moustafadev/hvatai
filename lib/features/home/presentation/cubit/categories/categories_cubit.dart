import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_fav_category_usecase.dart';

import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategoryUsecase getCategoryUsecase;
  final GetFavCategoryUsecase getFavCategoryUsecase;
  final AddFavCategoryUsecase addFavCategoryUsecase;

  Timer? _debounceTimer;

  CategoriesCubit(
    this.getFavCategoryUsecase,
    this.getCategoryUsecase,
    this.addFavCategoryUsecase,
  ) : super(CategoriesState.initial());

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true, error: ''));
    final result = await getCategoryUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, error: failure)),
      (categories) => emit(state.copyWith(
        isLoading: false,
        categories: categories,
      )),
    );
  }

  Future<void> getFavCategories() async {
    emit(state.copyWith(isLoading: true, error: '', filteredCategories: null));
    final result = await getFavCategoryUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, error: failure)),
      (categories) => emit(state.copyWith(
        isLoading: false,
        filteredCategories: categories,
      )),
    );
  }

  Future<void> addCategories() async {
    _debounceTimer?.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 800), () async {
      await _performAddCategories();
    });
  }

  Future<void> addCategoriesDetails() async {
    _debounceTimer?.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 800), () async {
      await _performAddCategoriesDetails();
    });
  }

  Future<void> _performAddCategoriesDetails() async {
    final now = DateTime.now();

    if (state.lastRequestTime != null &&
        now.difference(state.lastRequestTime!) < const Duration(seconds: 2)) {
      return;
    }

    emit(state.copyWith(error: '', lastRequestTime: now));
    final params = AddFavCategoryParams(
      categoryIds:
          state.selectedDetailIds.isNotEmpty ? state.selectedDetailIds : null,
      categoryId: state.selectedDetailIds.isNotEmpty
          ? null
          : state.selectedDetailIds.firstOrNull,
    );

    final result = await addFavCategoryUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          error: failure,
          lastRequestTime: null,
        ));
      },
      (_) {
        emit(state.copyWith(
          lastRequestTime: now,
        ));
      },
    );
  }

  Future<void> _performAddCategories() async {
    final now = DateTime.now();

    if (state.lastRequestTime != null &&
        now.difference(state.lastRequestTime!) < const Duration(seconds: 2)) {
      return;
    }

    emit(state.copyWith(error: '', lastRequestTime: now));

    final params = AddFavCategoryParams(categoryIds: state.selectedCategoryIds);
    final result = await addFavCategoryUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          error: failure,
          lastRequestTime: null,
        ));
      },
      (_) {
        emit(state.copyWith(
          lastRequestTime: now,
        ));
      },
    );
  }

  void toggleInterest(int index, int categoryId) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedIds = List<int>.from(state.selectedCategoryIds);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedIds.remove(categoryId);
    } else {
      updatedIndices.add(index);
      updatedIds.add(categoryId);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedCategoryIds: updatedIds,
    ));

    // addCategories();
  }

  void toggleDetail(int index, int categoryId) {
    final isSelected = state.selectedIndicesDetails.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndicesDetails);
    final updatedIds = List<int>.from(state.selectedDetailIds);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedIds.remove(categoryId);
    } else {
      updatedIndices.add(index);
      updatedIds.add(categoryId);
    }

    emit(state.copyWith(
      selectedIndicesDetails: updatedIndices,
      selectedDetailIds: updatedIds,
    ));
    // addCategoriesDetails();
  }

  void selectFavCategory(int? categoryId) {
    if (categoryId == null) {
      emit(state.copyWith(
        selectedFavCategoryId: null,
        filteredSubCategories: null,
      ));
      return;
    }

    // Filter subcategories from filteredCategories based on parent
    final allSubCategories = state.filteredCategories?.data ?? [];
    final subCategories = allSubCategories
        .where((cat) => cat.parentId == categoryId)
        .toList();

    emit(state.copyWith(
      selectedFavCategoryId: categoryId,
      filteredSubCategories: subCategories.isNotEmpty
          ? CategoryModel(data: subCategories)
          : null,
    ));
  }

  void clearFavCategoryFilter() {
    emit(state.copyWith(
      selectedFavCategoryId: null,
      filteredSubCategories: null,
    ));
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
