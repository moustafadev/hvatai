import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/cart/data/model/cart_model.dart';
import 'package:hvatai/features/cart/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/cart/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/cart/presentation/event_bus/events.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'cart_product_details_cubit.freezed.dart';
part 'cart_product_details_state.dart';

class CartProductDetailsCubit extends Cubit<CartProductDetailsState> {
  CartProductDetailsCubit(
    this.addFavProductUsecase,
    this.addProductToCartUsecase,
    this.deleteCartUsecase,
  ) : super(CartProductDetailsState(
          categories: [],
          selectedIndex: 0,
          product: ProductModel(variants: [VariantModel()]),
          cartResponse: CartModel(),
        ));

  AddProductToCartUsecase addProductToCartUsecase;
  AddFavProductUsecase addFavProductUsecase;
  DeleteCartUsecase deleteCartUsecase;
  Timer? _refreshTimer;

  void createPageController() {
    final controller = PageController(initialPage: state.currentImageIndex);
    emit(state.copyWith(pageController: controller));
  }

  void resetImageIndex() {
    if (isClosed) return;

    emit(state.copyWith(currentImageIndex: 0, pageController: null));
  }

  void changeImageIndex(int index) {
    print('index: $index');
    emit(state.copyWith(currentImageIndex: index));
  }

  void initProductModel(ProductModel product) {
    // Reset image index when product changes
    emit(state.copyWith(
      product: product,
      isFavourites: product.isFavorited,
      currentImageIndex: 0,
      pageController: null, // Will be recreated with new initial page
    ));
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

  void toggleFav(bool isFav) {
    final currentFav = state.isFavourites ?? isFav;
    emit(state.copyWith(isFavourites: !currentFav));
  }

  Future<void> toggleCart() async {
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
          success: false,
          isLoading: false,
        ));
        showFloatingMessageError('failedToDeleteAddress'.tr());
      },
      (success) {
        final updatedCart =
            state.carts.where((cart) => cart.id != cartId).toList();

        emit(state.copyWith(
          carts: updatedCart,
          success: true,
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
      emit(state.copyWith(
          isLoading: false, errorMessage: failure, success: false));
      showFloatingMessageError('insufficientStock'.tr());
    }, (newCart) {
      emit(state.copyWith(
          isLoading: false, cartResponse: newCart, success: true));

      if (newCart.total != null && newCart.total != 0) {
        updateTotalPrice(newCart.total!);
      }

      showFloatingMessageSuccess('productAddedToCart'.tr());
    });
  }

  Future<void> addFavProduct(int productId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final params = AddFavProductParams(productId: productId);
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

        EventBus().publish(FavoriteUpdatedEvent(
          productId: productId,
          isFavorite: response.isFavorited,
          favoritesCount: response.favoritesCount,
          product: updatedProduct,
        ));

        emit(state.copyWith(
          isLoading: false,
          product: updatedProduct,
          isFavourites: response.isFavorited,
        ));
      },
    );
  }

  void removeItem(String item) {
    final updatedList = List<String>.from(state.searchedItems)..remove(item);
    emit(state.copyWith(searchedItems: updatedList));
  }

  @override
  Future<void> close() {
    _refreshTimer?.cancel();
    return super.close();
  }
}
