import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/get_fav_products_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit(this.getFavProductsUsecase, this.addFavProductUsecase)
      : super(const ActivityState(
            product: ProductModel(variants: [VariantModel()])));
  GetFavProductsUsecase getFavProductsUsecase;
  AddFavProductUsecase addFavProductUsecase;

  Future<void> getFavProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getFavProductsUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsList) => emit(state.copyWith(
        isLoading: false,
        products:productsList,
      )),
    );
  }

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }

  void initProductModel(ProductModel product) {
    emit(state.copyWith(product: product));
  }

  Future<void> addFavProduct(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final params = AddFavProductParams(productId: state.product.id!);
    final result = await addFavProductUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (response) {
        final updatedProduct = state.product.copyWith(
          isFavorited: response.isFavorited,
          favoritesCount: response.favoritesCount,
        );

        final updatedProducts = state.products
            .map((p) => p.id == state.product.id ? updatedProduct : p)
            .toList();

        emit(state.copyWith(
          isLoading: false,
          product: updatedProduct,
          products: updatedProducts,
        ));
        getFavProducts();
      },
    );
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  void changeImageIndex(int index) {
    emit(state.copyWith(currentImageIndex: index));
  }

  // void loadProducts() async {
  //   emit(state.copyWith(
  //     products: List.generate(
  //       5,
  //       (index) => AuctionProduct(
  //         id: '$index',
  //         title: 'Product $index',
  //         description: 'Description $index',
  //         price: '${100 * (index + 1)}',
  //         images: [],
  //         bidders: {},
  //         isSold: index % 2 == 0,
  //         ownerId: 'owner_$index',
  //       ),
  //     ),
  //   ));
  // }
}
