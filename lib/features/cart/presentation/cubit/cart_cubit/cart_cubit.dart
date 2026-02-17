import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/cart/data/model/cart_model/cart_model.dart';
import 'package:hvatai/features/cart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/create_order_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/get_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(
    this.getCartUsecase,
    this.updateCartUsecase,
    this.getDeliveryAddressUsecase,
    this.createOrderUsecase,
    this.addProductToCartUsecase,
  ) : super(const CartState());

  final GetCartUsecase getCartUsecase;
  final GetDeliveryAddressUsecase getDeliveryAddressUsecase;
  final UpdateCartUsecase updateCartUsecase;
  AddProductToCartUsecase addProductToCartUsecase;

  final CreateOrderUsecase createOrderUsecase;

  final Map<int, Timer> _debounceTimers = {};
  final Map<int, int> _pendingUpdates = {};

  double calculateTotalPrice() {
    double total = 0.0;

    for (final cart in state.carts) {
      for (final item in cart.items ?? <CartItem>[]) {
        final itemPrice = (item.price ?? 0.0) * (item.quantity ?? 0);
        total += itemPrice;
      }
    }

    return total;
  }

  double get totalCartPrice {
    double total = 0.0;

    for (final cart in state.carts) {
      for (final item in cart.items ?? <CartItem>[]) {
        final itemPrice = (item.price ?? 0.0) * (item.quantity ?? 0);
        total += itemPrice;
      }
    }

    return total;
  }

  Future<void> getDeliveryAddress() async {
    emit(state.copyWith(errorMessage: ''));
    if (state.deliveryModel.isNotEmpty) return;
    emit(state.copyWith(
      isLoading: true,
    ));
    final result = await getDeliveryAddressUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (deliveryAddressList) => emit(state.copyWith(
        isLoading: false,
        deliveryModel: deliveryAddressList,
      )),
    );
  }

  void initDeliveryModel(UserRegistrationData user) {
    emit(state.copyWith(deliveryModel: [user]));
  }

  Future<void> updateProductCart(int itemId, int newQuantity) async {
    final currentQuantity = _getCurrentItemQuantity(itemId);

    if (newQuantity < 0) newQuantity = 0;

    if (newQuantity != currentQuantity) {
      emit(state.copyWith(
        tempQuantities: {
          ...state.tempQuantities,
          itemId: newQuantity,
        },
      ));
    }

    _debounceTimers[itemId]?.cancel();
    _debounceTimers.remove(itemId);

    if (newQuantity > 0) {
      _pendingUpdates[itemId] = newQuantity;

      _debounceTimers[itemId] =
          Timer(const Duration(milliseconds: 800), () async {
        if (_pendingUpdates.containsKey(itemId)) {
          final quantityToUpdate = _pendingUpdates[itemId]!;
          _pendingUpdates.remove(itemId);

          await _updateProductCartInternal(itemId, quantityToUpdate);
        }
      });
    } else {
      _pendingUpdates[itemId] = newQuantity;

      await _updateProductCartInternal(itemId, newQuantity);
      _pendingUpdates.remove(itemId);
    }
  }

  Future<void> updateCartItemQuantity(int itemId, int newQuantity) async {
    await updateProductCart(itemId, newQuantity);
  }

  Future<void> updateProductCartSimple(int itemId, int newQuantity) async {
    await _updateProductCartInternal(itemId, newQuantity);
  }

  Future<void> _updateProductCartInternal(int itemId, int newQuantity) async {
    final result = await updateCartUsecase.call(
      UpdateCartParams(
        cartId: itemId,
        quantity: newQuantity,
      ),
    );

    result.fold((failure) {
      final currentQuantity = _getCurrentItemQuantity(itemId);

      final updatedTempQuantities = Map<int, int>.from(state.tempQuantities);
      updatedTempQuantities[itemId] = currentQuantity;

      emit(state.copyWith(
        errorMessage: failure,
        tempQuantities: updatedTempQuantities,
      ));
      showFloatingMessageError('insufficientStock'.tr());
    }, (apiResponse) {
      final updatedCarts = state.carts.map((cart) {
        final updatedItems = <CartItem>[];
        bool itemFound = false;

        for (final item in cart.items ?? <CartItem>[]) {
          if (item.id == itemId) {
            itemFound = true;
            if (newQuantity > 0) {
              updatedItems.add(item.copyWith(quantity: newQuantity));
            }
          } else {
            updatedItems.add(item);
          }
        }

        if (!itemFound && newQuantity > 0) {}

        return cart.copyWith(items: updatedItems);
      }).toList();

      final updatedTempQuantities = Map<int, int>.from(state.tempQuantities);
      updatedTempQuantities.remove(itemId);

      // Calculate total price from updated carts
      final totalPrice = _calculateTotalPrice(updatedCarts);

      emit(state.copyWith(
        carts: updatedCarts,
        tempQuantities: updatedTempQuantities,
        totalCartPrice: totalPrice,
      ));
    });
  }

  Future<void> toggleProductInCart(
      BuildContext context, ProductModel product) async {
    final variant = product.variants.firstOrNull;
    final variantId = variant?.id; // ✅ VARIANT ID
    final productId = product.id;

    if (variantId == null) return;

    final cartItemId = _findCartItemIdByVariantId(variantId); // CartItem.id
    final isInCart = cartItemId != null;

    if (isInCart) {
      await _removeVariantOptimistically(cartItemId: cartItemId);
    } else {
      await _addVariantOptimistically(
        product: product,
        productId: productId,
        variant: variant!,
        variantId: variantId,
      );
    }
  }

  Future<void> _removeVariantOptimistically({required int cartItemId}) async {
    final prevCarts = List<CartModel>.from(state.carts);
    final prevTotal = state.totalCartPrice;

    // optimistic remove locally by CartItem.id
    final updatedCarts = state.carts.map((cart) {
      final items = List<CartItem>.from(cart.items ?? const []);
      final idx = items.indexWhere((it) => it.id == cartItemId);
      if (idx == -1) return cart;

      final removed = items.removeAt(idx);
      final removedPrice = (removed.price ?? 0.0) * (removed.quantity ?? 1);
      final newTotal = (cart.total ?? 0.0) - removedPrice;

      return cart.copyWith(
        items: items,
        total: newTotal > 0 ? newTotal : 0.0,
      );
    }).toList();

    emit(state.copyWith(
      carts: updatedCarts,
      totalCartPrice: _calculateTotalPrice(updatedCarts),
    ));

    // API remove uses cartItemId (UpdateCartParams.cartId)
    final result = await updateCartUsecase.call(
      UpdateCartParams(cartId: cartItemId, quantity: 0),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(carts: prevCarts, totalCartPrice: prevTotal));
        showFloatingMessageError('failedToRemoveFromCart'.tr());
      },
      (updatedCart) {
        final finalCarts = state.carts
            .map((c) => c.id == updatedCart.id ? updatedCart : c)
            .toList();
        emit(state.copyWith(
          carts: finalCarts,
          totalCartPrice: _calculateTotalPrice(finalCarts),
        ));
      },
    );
  }

  Future<void> _addVariantOptimistically({
    required ProductModel product,
    required int? productId,
    required VariantModel variant,
    required int variantId,
  }) async {
    final prevCarts = List<CartModel>.from(state.carts);
    final prevTotal = state.totalCartPrice;

    final itemPrice = variant.price ?? 0.0;

    // ✅ optimistic item MUST contain variantId in item.id
    final optimisticCartItem = CartItem(
      id: -variantId, // temp unique
      quantity: 1,
      price: itemPrice,
      item: MainVariantModel(
        id: variantId, // ✅ variant id
        productId: productId, // optional but useful
        price: itemPrice,
        product: MainProductModel(
          id: productId,
          name: product.productName,
        ),
      ),
    );

    // add to first cart if exists else temp cart
    final updatedCarts = List<CartModel>.from(state.carts);
    final targetCartIndex = updatedCarts.indexWhere((c) => c.id != null);

    if (targetCartIndex >= 0) {
      final cart = updatedCarts[targetCartIndex];
      final items = List<CartItem>.from(cart.items ?? const [])
        ..add(optimisticCartItem);
      updatedCarts[targetCartIndex] = cart.copyWith(
        items: items,
        total: (cart.total ?? 0.0) + itemPrice,
      );
    } else {
      updatedCarts.add(
          CartModel(id: -1, items: [optimisticCartItem], total: itemPrice));
    }

    emit(state.copyWith(
      carts: updatedCarts,
      totalCartPrice: _calculateTotalPrice(updatedCarts),
    ));

    // ✅ API add must use variantId as itemId
    final result = await addProductToCartUsecase.call(
      AddProductToCartParams(
        itemId: variantId, // ✅ variant id
        quantity: 1,
        itemType: variant, // keep if needed
      ),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(carts: prevCarts, totalCartPrice: prevTotal));
        showFloatingMessageError('insufficientStock'.tr());
      },
      (newCart) {
        getCartProducts();
      },
    );
  }

  int? _findCartItemIdByVariantId(int variantId) {
    for (final cart in state.carts) {
      for (final item in cart.items ?? const <CartItem>[]) {
        if (item.item?.id == variantId) {
          // ✅ MainVariantModel.id
          return item.id; // CartItem.id
        }
      }
    }
    return null;
  }

  int _getCurrentItemQuantity(int itemId) {
    for (final cart in state.carts) {
      for (final item in cart.items ?? <CartItem>[]) {
        if (item.id == itemId) {
          return item.quantity ?? 0;
        }
      }
    }
    return 0;
  }

  double _calculateTotalPrice(List<CartModel> carts) {
    double total = 0.0;
    for (final cart in carts) {
      for (final item in cart.items ?? <CartItem>[]) {
        final itemPrice = (item.price ?? 0.0) * (item.quantity ?? 0);
        total += itemPrice;
      }
    }
    return total;
  }

  /// Update cart state immediately without API call (for optimistic updates)
  void updateCartsImmediately(List<CartModel> carts) {
    final totalPrice = _calculateTotalPrice(carts);
    emit(state.copyWith(
      carts: carts,
      totalCartPrice: totalPrice,
    ));
  }

  Future<void> getCartProducts() async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
      tempQuantities: {},
    ));

    final result = await getCartUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (cartList) {
        // Calculate total price from the fetched carts
        final totalPrice = _calculateTotalPrice(cartList);

        emit(state.copyWith(
          isLoading: false,
          carts: cartList,
          tempQuantities: {},
          totalCartPrice: totalPrice,
        ));
      },
    );
  }

  Future<void> createOrderFromCart({
    required int cartId,
    required int walletId,
    required String street,
    required String city,
    String? floor,
    String? frontDoor,
    String? intercomCode,
    String? apartment,
    required bool confirmationCall,
    int? tipAmount,
  }) async {
    emit(state.copyWith(
      isCreatingOrder: true,
      showOrderLoadingScreen: true,
      showOrderSuccessScreen: false,
      showOrderErrorScreen: false,
    ));

    final result = await createOrderUsecase.call(CreateOrderParams(
      cartId: cartId,
      paymentMethod: state.selectedPaymentMethod,
      walletId: walletId,
      street: street,
      city: city,
      floor: floor,
      frontDoor: frontDoor,
      intercomCode: intercomCode,
      apartment: apartment,
      confirmationCall: confirmationCall,
      tipAmount: tipAmount ?? state.selectedTipAmount,
    ));

    result.fold(
      (failure) {
        emit(state.copyWith(
          isCreatingOrder: false,
          showOrderLoadingScreen: false,
          showOrderErrorScreen: true,
          errorMessage: failure,
        ));
      },
      (response) {
        emit(state.copyWith(
          isCreatingOrder: false,
          showOrderLoadingScreen: false,
          showOrderSuccessScreen: true,
        ));
      },
    );
  }

  void hideOrderSuccessScreen() {
    emit(state.copyWith(showOrderSuccessScreen: false));
  }

  void hideOrderErrorScreen() {
    emit(state.copyWith(showOrderErrorScreen: false));
  }

  void setTipAmount(int tipAmount) {
    emit(state.copyWith(selectedTipAmount: tipAmount));
  }

  void setPaymentMethod(String paymentMethod) {
    emit(state.copyWith(selectedPaymentMethod: paymentMethod));
  }

  @override
  Future<void> close() {
    _debounceTimers.forEach((_, timer) => timer.cancel());
    _debounceTimers.clear();
    _pendingUpdates.clear();
    return super.close();
  }
}
