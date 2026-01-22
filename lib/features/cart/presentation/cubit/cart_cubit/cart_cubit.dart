import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/cart/data/model/cart_model.dart';
import 'package:hvatai/features/cart/domain/usecases/create_order_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/get_delivery_address_usecase.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(
    this.getCartUsecase,
    this.updateCartUsecase,
    this.getDeliveryAddressUsecase,
    this.createOrderUsecase,
  ) : super(const CartState(cart: CartModel()));

  final GetCartUsecase getCartUsecase;
  final GetDeliveryAddressUsecase getDeliveryAddressUsecase;
  final UpdateCartUsecase updateCartUsecase;
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
    if (state.deliveryModel.isNotEmpty) return;
    emit(state.copyWith(isLoading: true, errorMessage: ''));
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
