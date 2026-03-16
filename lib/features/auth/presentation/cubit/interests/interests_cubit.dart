import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'interests_state.dart';
part 'interests_cubit.freezed.dart';

class InterestsCubit extends Cubit<InterestsState> {
  InterestsCubit(this.getCategoryUsecase, this.addFavCategoryUsecase, this.appLocal)
      : super(InterestsState(user: UserRegistrationData()));

  GetCategoryUsecase getCategoryUsecase;
  AddFavCategoryUsecase addFavCategoryUsecase;
  final AppLocal appLocal;
  Future<void> getCategories() async {
    emit(state.copyWith(isLoadingCategories: true, errorMessage: ''));
    final result = await getCategoryUsecase.call(unit);
    result.fold(
      (failure) => emit(
          state.copyWith(isLoadingCategories: false, errorMessage: failure)),
      (categories) => emit(state.copyWith(
        isLoadingCategories: false,
        categories: categories,
      )),
    );
  }

  Future<void> addFavCategories(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final params = AddFavCategoryParams(categoryIds: state.selectedCategoryIds);

    final result = await addFavCategoryUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('alreadyInFavorites'.tr());
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        appLocal.saveIsSetup(true);
        if (_allSelectedHaveNoChildren()) {
          context.go(AppRoutes.notification);
        } else {
          context.push(AppRoutes.interestsDetail);
        }
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
  }

  bool _allSelectedHaveNoChildren() {
    final selectedIds = state.selectedCategoryIds.toSet();
    final all = state.categories?.data ?? [];

    final selectedCategories =
        all.where((c) => selectedIds.contains(c.id)).toList();

    // if nothing selected, treat as false (or true if you want)
    if (selectedCategories.isEmpty) return false;

    return selectedCategories.every(
      (c) => (c.children == null || c.children!.isEmpty),
    );
  }
}
