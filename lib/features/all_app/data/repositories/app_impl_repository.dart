import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/all_app/data/datasources/api_service_app.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AppImplRepository implements AppRepository {
  final ApiServiceApp _apiServiceApp;

  AppImplRepository(
    this._apiServiceApp,
  );

  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() {
    return executeAndHandleError<List<ProductModel>>(() async {
      final res = await _apiServiceApp.getAllProducts();
      return res;
    });
  }

  @override
  Future<Either<String, List<ProductModel>>> getFavProducts() {
    return executeAndHandleError<List<ProductModel>>(() async {
      final res = await _apiServiceApp.getFavProducts();
      return res;
    });
  }

  @override
  Future<Either<String, ProductModel>> addFavProduct(
      AddFavProductParams params) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiServiceApp.addFavProduct(params);
      return res;
    });
  }

  @override
  Future<Either<String, CartModel>> updateCart(UpdateCartParams params) {
    return executeAndHandleError<CartModel>(() async {
      final res = await _apiServiceApp.updateCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, CartModel>> addProductToCart(
      AddProductToCartParams params) {
    return executeAndHandleError<CartModel>(() async {
      final res = await _apiServiceApp.addProductToCart(params);
      return res;
    });
  }

  @override
  Future<Either<String, List<CartModel>>> getAllCarts() {
    return executeAndHandleError<List<CartModel>>(() async {
      final res = await _apiServiceApp.getAllCarts();
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> deleteCart(DeleteCartParams params) {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceApp.deleteCart(params);
      return res;
    });
  }
}
