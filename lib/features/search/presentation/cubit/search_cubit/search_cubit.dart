import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/get_all_products_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/get_cart_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this.getAllProductsUsecase,
    this.addFavProductUsecase,
    this.getCartUsecase,
    this.addProductToCartUsecase,
    this.deleteCartUsecase,
  ) : super(SearchState(
          categories: [],
          selectedIndex: 0,
          product: ProductModel(variants: [VariantModel()]),
          cartResponse: CartModel(),
        ));
  GetAllProductsUsecase getAllProductsUsecase;
  GetCartUsecase getCartUsecase;
  AddProductToCartUsecase addProductToCartUsecase;
  AddFavProductUsecase addFavProductUsecase;
  DeleteCartUsecase deleteCartUsecase;
  Timer? _refreshTimer;

  void createPageController() {
    final controller = PageController(initialPage: state.currentImageIndex);
    emit(state.copyWith(pageController: controller));
  }

  void resetImageIndex() {
    emit(state.copyWith(currentImageIndex: 0, pageController: null));
  }

  void changeImageIndex(int index) {
    emit(state.copyWith(currentImageIndex: index));
  }

  void initProductModel(ProductModel product) {
    emit(state.copyWith(product: product));
  }

  void initCartResponseModel(List<CartModel> cartResponse) {
    double totalPrice = 0.0;
    for (final cart in cartResponse) {
      totalPrice += cart.total ?? 0.0;
    }

    emit(state.copyWith(
      carts: cartResponse,
      totalCartPrice: totalPrice,
    ));
  }

  void toggleFav() {
    emit(state.copyWith(isFavourites: !state.isFavourites));
  }

  void toggleCart() {
    emit(state.copyWith(isCart: !state.isCart));
  }

  void updateTotalPrice(double newPrice) {
    emit(state.copyWith(totalCartPrice: newPrice));
  }

  Future<void> deleteProductFromCart(
      BuildContext context, ProductModel product) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final cartId = product.variants[0].id ?? 0;
    final result = await deleteCartUsecase.call(
      DeleteCartParams(cartId: cartId),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          errorMessage: failure,
          isLoading: false,
        ));
        showFloatingMessageError('failedToDeleteAddress'.tr());
      },
      (success) {
        final updatedCart =
            state.carts.where((cart) => cart.id != cartId).toList();

        emit(state.copyWith(
          carts: updatedCart,
          errorMessage: '',
          isLoading: false,
        ));

        showFloatingMessageSuccess('addressDeletedSuccessfully'.tr());
      },
    );
  }

  Future<void> addProductToCart(
      BuildContext context, ProductModel product) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final variantId = product.variants[0].id ?? 0;

    final result = await addProductToCartUsecase.call(
      AddProductToCartParams(
        itemId: variantId,
        quantity: 1,
        itemType: product.variants[0],
      ),
    );

    result.fold((failure) {
      emit(state.copyWith(isLoading: false, errorMessage: failure));
      showFloatingMessageError('insufficientStock'.tr());
    }, (newCart) {
      emit(state.copyWith(
        isLoading: false,
        cartResponse: newCart,
      ));

      showFloatingMessageSuccess('productAddedToCart'.tr());
    });
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
      },
    );
  }

  void removeItem(String item) {
    final updatedList = List<String>.from(state.searchedItems)..remove(item);
    emit(state.copyWith(searchedItems: updatedList));
  }

  void setCategories(List<String> interests) {
    final newCategories = ['All', ...interests];
    emit(state.copyWith(categories: newCategories));
  }

  Future<void> getAllProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getAllProductsUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsList) => emit(state.copyWith(
        isLoading: false,
        products: productsList,
      )),
    );
  }

  void toggleInterest(int index, String interestKey) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedInterests = List<String>.from(state.selectedInterests);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedInterests.remove(interestKey);
    } else {
      updatedIndices.add(index);
      updatedInterests.add(interestKey);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedInterests: updatedInterests,
    ));
  }

  void fetchCategories() => emit(state);

  void selectCategory(dynamic index) {
    emit(state.copyWith(selectedIndex: index));
  }

  String? get selectedCategory {
    final category = state.categories[state.selectedIndex];
    return category == 'All' ? null : category;
  }

  @override
  Future<void> close() {
    _refreshTimer?.cancel();
    return super.close();
  }
}
