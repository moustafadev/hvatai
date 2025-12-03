import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/product/data/datasources/api_service_product.dart';
import 'package:hvatai/features/product/data/model/cart_model.dart';
import 'package:hvatai/features/product/domain/repositories/product_repository.dart';
import 'package:hvatai/features/product/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/product/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/product/data/model/order_response/order_response.dart';
import 'package:hvatai/features/product/domain/usecases/create_order_usecase.dart';
import 'package:hvatai/features/product/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/product/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ApiServiceProduct _apiServiceProduct;

  ProductRepositoryImpl(
    this._apiServiceProduct,
  );

  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() {
    return executeAndHandleError<List<ProductModel>>(() async {
      final res = await _apiServiceProduct.getAllProducts();
      return res;
    });
  }

  @override
  Future<Either<String, ProductModel>> addFavProduct(
      AddFavProductParams params) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiServiceProduct.addFavProduct(params);
      return res;
    });
  }

  @override
  Future<Either<String, CartModel>> updateCart(UpdateCartParams params) {
    return executeAndHandleError<CartModel>(() async {
      final res = await _apiServiceProduct.updateCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, CartModel>> addProductToCart(
      AddProductToCartParams params) {
    return executeAndHandleError<CartModel>(() async {
      final res = await _apiServiceProduct.addProductToCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, List<CartModel>>> getAllCarts() {
    return executeAndHandleError<List<CartModel>>(() async {
      final res = await _apiServiceProduct.getAllCarts();
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> deleteCart(DeleteCartParams params) {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceProduct.deleteCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, OrderResponse>> createOrderFromCart(
      CreateOrderParams params) {
    return executeAndHandleError<OrderResponse>(() async {
      final res = await _apiServiceProduct.createOrderFromCart(params);
      return res;
    });
  }
}
