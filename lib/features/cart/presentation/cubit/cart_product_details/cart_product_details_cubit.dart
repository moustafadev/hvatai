import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/cart/data/model/cart_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/cart/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/get_product_by_id_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:hvatai/features/cart/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/cart/presentation/event_bus/events.dart';
import 'package:hvatai/features/home/domain/usecases/join_stream_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'cart_product_details_cubit.freezed.dart';
part 'cart_product_details_state.dart';

class CartProductDetailsCubit extends Cubit<CartProductDetailsState> {
  CartProductDetailsCubit(
    this.addFavProductUsecase,
    this.addProductToCartUsecase,
    this.deleteCartUsecase,
    this.updateCartUsecase,
    this.getProductByIdUsecase,
    this.joinStreamUsecase,
  ) : super(CartProductDetailsState(
          categories: [],
          selectedIndex: 0,
          product: ProductModel(variants: [VariantModel()]),
          cartResponse: CartModel(),
        ));

  AddProductToCartUsecase addProductToCartUsecase;
  AddFavProductUsecase addFavProductUsecase;
  DeleteCartUsecase deleteCartUsecase;
  UpdateCartUsecase updateCartUsecase;
  GetProductByIdUsecase getProductByIdUsecase;
  JoinStreamUsecase joinStreamUsecase;
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

  /// Initialize with product ID - fetches product and other products from API
  void initProductById(int productId) {
    // Check if this is the same product - if so, don't refetch
    final isSameProduct = state.product.id == productId;

    // Reset image index when product changes
    emit(state.copyWith(
      currentImageIndex: 0,
      pageController: null, // Will be recreated with new initial page
      ownerProducts: isSameProduct
          ? state.ownerProducts
          : [], // Keep products if same product
    ));

    // Fetch product with other products if:
    // 1. It's a different product, OR
    // 2. Owner products are empty (first time loading)
    if (!isSameProduct || state.ownerProducts.isEmpty) {
      fetchProductWithOthers(productId);
    }
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
        // Update CartCubit immediately to update floating button
        context.read<CartCubit>().updateCartsImmediately(updatedCart);
        // Sync with server in background
        context.read<CartCubit>().getCartProducts();
      },
    );
  }

  /// Check if a product variant is in the cart
  bool isProductInCart(ProductModel product) {
    final variantId = product.variants.firstOrNull?.id;
    if (variantId == null) return false;

    for (final cart in state.carts) {
      for (final item in cart.items ?? []) {
        if (item.item?.id == variantId) {
          return true;
        }
      }
    }
    return false;
  }

  /// Get the cart item ID for a product variant
  int? getCartItemId(ProductModel product) {
    final variantId = product.variants.firstOrNull?.id;
    if (variantId == null) return null;

    for (final cart in state.carts) {
      for (final item in cart.items ?? []) {
        if (item.item?.id == variantId) {
          return item.id;
        }
      }
    }
    return null;
  }

  /// Toggle product in cart (add if not in cart, remove if in cart)
  Future<void> toggleProductInCart(
      BuildContext context, ProductModel product) async {
    final variantId = product.variants.firstOrNull?.id;
    if (variantId == null) return;
    final isInCart = isProductInCart(product);
    final cartItemId = getCartItemId(product);
    // Optimistic update: immediately update UI
    if (isInCart && cartItemId != null) {
      // Store current state for revert
      final previousCarts = state.carts;
      final previousTotalPrice = state.totalCartPrice;

      // Optimistically remove from cart
      final updatedCarts = state.carts.map((cart) {
        final itemToRemove = (cart.items ?? []).firstWhere(
          (item) => item.id == cartItemId,
          orElse: () => CartItem(),
        );

        if (itemToRemove.id == null) {
          return cart; // Item not found in this cart
        }

        final updatedItems =
            (cart.items ?? []).where((item) => item.id != cartItemId).toList();

        // Calculate new total by subtracting the removed item's price
        final itemPrice =
            (itemToRemove.price ?? 0.0) * (itemToRemove.quantity ?? 1);
        final newTotal = (cart.total ?? 0.0) - itemPrice;

        return cart.copyWith(
          items: updatedItems,
          total: newTotal > 0 ? newTotal : 0.0,
        );
      }).toList();

      double newTotalPrice = 0.0;
      for (final cart in updatedCarts) {
        newTotalPrice += cart.total ?? 0.0;
      }

      emit(state.copyWith(
        carts: updatedCarts,
        totalCartPrice: newTotalPrice,
      ));

      // Make API call to remove from cart
      final result = await updateCartUsecase.call(
        UpdateCartParams(cartId: cartItemId, quantity: 0),
      );

      result.fold(
        (failure) {
          // Revert on error
          emit(state.copyWith(
            carts: previousCarts,
            totalCartPrice: previousTotalPrice,
          ));
          showFloatingMessageError('failedToRemoveFromCart'.tr());
        },
        (updatedCart) {
          // Success - update with server response
          final finalCarts = state.carts.map((cart) {
            if (cart.id == updatedCart.id) {
              return updatedCart;
            }
            return cart;
          }).toList();

          double finalTotalPrice = 0.0;
          for (final cart in finalCarts) {
            finalTotalPrice += cart.total ?? 0.0;
          }

          emit(state.copyWith(
            carts: finalCarts,
            totalCartPrice: finalTotalPrice,
          ));
          // Update CartCubit immediately to update floating button
          context.read<CartCubit>().updateCartsImmediately(finalCarts);
          // Sync with server in background
          context.read<CartCubit>().getCartProducts();
        },
      );
    } else {
      // Store current state for revert
      final previousCarts = List<CartModel>.from(state.carts);
      final previousTotalPrice = state.totalCartPrice;

      // Optimistically add to cart - create a temporary cart item
      final variant = product.variants.firstOrNull;
      if (variant == null) return;

      final itemPrice = variant.price ?? 0.0;
      final optimisticCartItem = CartItem(
        id: -1, // Temporary ID
        quantity: 1,
        price: itemPrice,
        item: MainVariantModel(
          id: variantId,
          price: itemPrice,
          product: MainProductModel(
            id: product.id,
            name: product.productName,
          ),
        ),
      );

      // Find or create a cart to add the item to
      final updatedCarts = List<CartModel>.from(state.carts);
      CartModel? targetCart;
      int targetCartIndex = -1;

      // Try to find an existing cart (usually there's one main cart)
      for (int i = 0; i < updatedCarts.length; i++) {
        if (updatedCarts[i].id != null) {
          targetCart = updatedCarts[i];
          targetCartIndex = i;
          break;
        }
      }

      if (targetCart != null && targetCartIndex >= 0) {
        // Add to existing cart
        final updatedItems = List<CartItem>.from(targetCart.items ?? [])
          ..add(optimisticCartItem);
        final newTotal = (targetCart.total ?? 0.0) + itemPrice;
        updatedCarts[targetCartIndex] = targetCart.copyWith(
          items: updatedItems,
          total: newTotal,
        );
      } else {
        // Create new cart
        final newCart = CartModel(
          id: -1, // Temporary ID
          items: [optimisticCartItem],
          total: itemPrice,
        );
        updatedCarts.add(newCart);
      }

      double newTotalPrice = 0.0;
      for (final cart in updatedCarts) {
        newTotalPrice += cart.total ?? 0.0;
      }

      // Optimistically update UI immediately - emit synchronously
      // Create a new state to ensure proper change detection
      final optimisticState = state.copyWith(
        carts: updatedCarts,
        totalCartPrice: newTotalPrice,
      );

      // Emit the optimistic state immediately - this triggers UI rebuild
      emit(optimisticState);

      // Make API call (don't await immediately to allow UI to update first)
      // The UI will update from the emit above, then we'll update again with server response
      addProductToCartUsecase
          .call(
        AddProductToCartParams(
          itemId: variantId,
          quantity: 1,
          itemType: product.variants[0],
        ),
      )
          .then((result) {
        result.fold(
          (failure) {
            // Revert on error
            emit(state.copyWith(
              carts: previousCarts,
              totalCartPrice: previousTotalPrice,
              success: false,
            ));
            showFloatingMessageError('insufficientStock'.tr());
          },
          (newCart) {
            // Success - update with server response
            final finalCarts = List<CartModel>.from(state.carts);
            final existingCartIndex =
                finalCarts.indexWhere((cart) => cart.id == newCart.id);

            if (existingCartIndex >= 0) {
              finalCarts[existingCartIndex] = newCart;
            } else {
              // Remove optimistic cart and add real one
              finalCarts.removeWhere((cart) => cart.id == -1);
              finalCarts.add(newCart);
            }

            double finalTotalPrice = 0.0;
            for (final cart in finalCarts) {
              finalTotalPrice += cart.total ?? 0.0;
            }

            emit(state.copyWith(
              carts: finalCarts,
              cartResponse: newCart,
              success: true,
              totalCartPrice: finalTotalPrice,
            ));
            // Update CartCubit immediately to update floating button
            context.read<CartCubit>().updateCartsImmediately(finalCarts);
            // Sync with server in background
            context.read<CartCubit>().getCartProducts();
          },
        );
      });
    }
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
      emit(state.copyWith(isLoading: false, success: false));
      showFloatingMessageError('insufficientStock'.tr());
    }, (newCart) {
      // Update carts list with new cart
      final updatedCarts = List<CartModel>.from(state.carts);
      final existingCartIndex =
          updatedCarts.indexWhere((cart) => cart.id == newCart.id);

      if (existingCartIndex >= 0) {
        updatedCarts[existingCartIndex] = newCart;
      } else {
        updatedCarts.add(newCart);
      }

      double newTotalPrice = 0.0;
      for (final cart in updatedCarts) {
        newTotalPrice += cart.total ?? 0.0;
      }
      emit(state.copyWith(
        isLoading: false,
        carts: updatedCarts,
        cartResponse: newCart,
        success: true,
        totalCartPrice: newTotalPrice,
      ));
      // Update CartCubit immediately to update floating button
      context.read<CartCubit>().updateCartsImmediately(updatedCarts);
      // Sync with server in background
      context.read<CartCubit>().getCartProducts();
    });
  }

  Future<void> addFavProduct(int productId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final params = AddFavProductParams(productId: productId);
    final result = await addFavProductUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
        ));
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

  Future<void> fetchProductWithOthers(int productId) async {
    if (productId == 0) {
      emit(state.copyWith(
        ownerProducts: [],
      ));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await getProductByIdUsecase(
      GetProductByIdParams(productId: productId),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          ownerProducts: [],
        ),
      ),
      (response) {
        // Update product with latest data from server
        final productData = response.data?.product;
        final otherProductsData = response.data?.otherProducts ?? [];

        final updatedProduct = productData ?? state.product;
        // Get other products (excluding current product)
        final otherProducts =
            otherProductsData.where((p) => p.id != productId).toList();

        emit(
          state.copyWith(
            isLoading: false,
            product: updatedProduct,
            ownerProducts: otherProducts,
          ),
        );
      },
    );
  }

  Future<void> joinStream(BuildContext context) async {
    final product = state.product;
    final liveAuction = product.liveAuction;
    final streamId = liveAuction?.streamId;

    if (streamId == null) {
      showFloatingMessageError('Stream ID is not available');
      return;
    }

    emit(state.copyWith(isJoiningStream: true, errorMessage: ''));

    final result = await joinStreamUsecase(streamId);

    result.fold(
      (error) {
        emit(state.copyWith(
          isJoiningStream: false,
          errorMessage: error,
        ));
        showFloatingMessageError(error);
      },
      (joinResponse) {
        emit(state.copyWith(isJoiningStream: false));

        final joinData = joinResponse.data;

        // Create StreamDataModel from live auction data
        final streamData = StreamDataModel(
          id: streamId,
          title: liveAuction?.streamTitle,
          status: liveAuction?.streamStatus ?? 'live',
          viewerCount: liveAuction?.viewerCount ?? 0,
          user: StreamUserModel(
            name: state.product.user?.name,
            email: state.product.user?.email,
            image: state.product.user?.image,
            id: state.product.user?.id,
            personalRating: state.product.user?.personalRating,
            personalRatingCount: state.product.user?.personalRatingCount,
            isFavorited: state.product.user?.isFavorited,
            favoritesCount: state.product.user?.favoritesCount,
          ),
          channelName: joinData.stream.channelName,
        );

        context.push(
          AppRoutes.liveStreamViewer,
          extra: {
            'streamDataModel': streamData,
            'joinData': joinData,
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    _refreshTimer?.cancel();
    return super.close();
  }
}
