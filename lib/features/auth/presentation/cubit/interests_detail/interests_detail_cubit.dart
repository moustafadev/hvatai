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
import 'package:hvatai/features/auth/domain/usecases/get_fav_category_usecase.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'interests_detail_state.dart';
part 'interests_detail_cubit.freezed.dart';

class InterestsDetailCubit extends Cubit<InterestsDetailState> {
  InterestsDetailCubit(
      this.appLocal, this.getFavCategoryUsecase, this.addFavCategoryUsecase)
      : super(InterestsDetailState(user: UserRegistrationData()));
  GetFavCategoryUsecase getFavCategoryUsecase;
  AddFavCategoryUsecase addFavCategoryUsecase;
  final AppLocal appLocal;

  Future<void> getFavCategories() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getFavCategoryUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (categories) => emit(state.copyWith(
        isLoading: false,
        categories: categories,
      )),
    );
  }

  void toggleDetail(int detailId, int categoryId) {
    final updatedDetails = Set<int>.from(state.selectedDetailIds);
    final updatedCategoryIds = List<int>.from(state.selectedCategoryIds);

    if (updatedDetails.contains(detailId)) {
      updatedDetails.remove(detailId);
      updatedCategoryIds.remove(detailId);
    } else {
      updatedDetails.add(detailId);
      updatedCategoryIds.add(detailId);
    }

    emit(state.copyWith(
      selectedDetailIds: updatedDetails,
      selectedCategoryIds: updatedCategoryIds,
    ));
  }

  Future<void> saveIsSetupTrue(BuildContext context) async {
    // Fetch cart when login completes
    try {
      final cartCubit = context.read<CartCubit>();
      cartCubit.getCartProducts();
    } catch (_) {
      // CartCubit might not be available yet, it will be fetched in app.dart
    }
    final cartCubit = context.read<CartCubit>();
    cartCubit.getCartProducts();
    cartCubit.getDeliveryAddress();
    context.push(AppRoutes.notification);
    await appLocal.saveIsSetup(true);
  }

  Future<void> addFavCategories(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final params = AddFavCategoryParams(
      categoryIds: state.selectedCategoryIds.isNotEmpty
          ? state.selectedCategoryIds
          : null,
      categoryId: state.selectedCategoryIds.isNotEmpty
          ? null
          : state.selectedCategoryIds.firstOrNull,
    );

    final result = await addFavCategoryUsecase.call(params);
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('alreadyInFavorites'.tr());
      },
      (_) async {
        emit(state.copyWith(isLoading: false));
        showFloatingMessageSuccess('interestsAdded'.tr());
        await appLocal.saveIsSetup(true);
        // Fetch cart when login completes
        try {
          final cartCubit = context.read<CartCubit>();
          cartCubit.getCartProducts();
        } catch (_) {
          // CartCubit might not be available yet, it will be fetched in app.dart
        }
        // ignore: use_build_context_synchronously
        context.push(AppRoutes.notification);
      },
    );
  }
}
