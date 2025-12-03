import 'package:dartz/dartz.dart';
import 'package:hvatai/features/product/data/model/cart_model.dart';
import 'package:hvatai/features/product/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/product/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/product/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/product/data/model/order_response/order_response.dart';
import 'package:hvatai/features/product/domain/usecases/create_order_usecase.dart';
import 'package:hvatai/features/product/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

abstract class ProductRepository {
  Future<Either<String, List<ProductModel>>> getAllProducts();
  Future<Either<String, List<CartModel>>> getAllCarts();

  Future<Either<String, Unit>> deleteCart(DeleteCartParams params);

  Future<Either<String, CartModel>> addProductToCart(
      AddProductToCartParams params);

  Future<Either<String, ProductModel>> addFavProduct(
      AddFavProductParams params);
  Future<Either<String, CartModel>> updateCart(UpdateCartParams params);
  Future<Either<String, OrderResponse>> createOrderFromCart(
      CreateOrderParams params);
}
