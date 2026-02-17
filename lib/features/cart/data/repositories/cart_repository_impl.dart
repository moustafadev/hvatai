import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/cart/data/datasources/api_service_cart.dart';
import 'package:hvatai/features/cart/data/model/cart_model/cart_model.dart';
import 'package:hvatai/features/cart/data/model/product_with_others_response/product_with_others_response.dart';
import 'package:hvatai/features/cart/domain/repositories/cart_repository.dart';
import 'package:hvatai/features/cart/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/cart/data/model/order_response/order_response.dart';
import 'package:hvatai/features/cart/domain/usecases/create_order_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class CartRepositoryImpl implements CartRepository {
  final ApiServiceCart _apiServiceCart;

  CartRepositoryImpl(
    this._apiServiceCart,
  );

  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() {
    return executeAndHandleError<List<ProductModel>>(() async {
      final res = await _apiServiceCart.getAllProducts();
      return res;
    });
  }

  @override
  Future<Either<String, ProductModel>> addFavProduct(
      AddFavProductParams params) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiServiceCart.addFavProduct(params);
      return res;
    });
  }

  @override
  Future<Either<String, CartModel>> updateCart(UpdateCartParams params) {
    return executeAndHandleError<CartModel>(() async {
      final res = await _apiServiceCart.updateCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, CartModel>> addProductToCart(
      AddProductToCartParams params) {
    return executeAndHandleError<CartModel>(() async {
      final res = await _apiServiceCart.addProductToCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, List<CartModel>>> getAllCarts() {
    return executeAndHandleError<List<CartModel>>(() async {
      final res = await _apiServiceCart.getAllCarts();
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> deleteCart(DeleteCartParams params) {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceCart.deleteCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, OrderResponse>> createOrderFromCart(
      CreateOrderParams params) {
    return executeAndHandleError<OrderResponse>(() async {
      final res = await _apiServiceCart.createOrderFromCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, ProductWithOthersResponse>> getProductById(
      int productId) {
    return executeAndHandleError<ProductWithOthersResponse>(() async {
      final res = await _apiServiceCart.getProductById(productId);
      return res;
    });
  }
}
