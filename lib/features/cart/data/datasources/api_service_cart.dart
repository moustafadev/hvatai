import 'package:dartz/dartz.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/cart/data/model/cart_model.dart';
import 'package:hvatai/features/cart/data/model/order_response/order_response.dart';
import 'package:hvatai/features/cart/data/model/product_with_others_response.dart';
import 'package:hvatai/features/cart/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/create_order_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/update_cart_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class ApiServiceCart extends ApiBase {
  Future<ProductModel> addFavProduct(AddFavProductParams params) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final productId = params.productId;
      final endpoint = ServerConfig.togglefav(productId);
      final response = await post(endpoint);
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return ProductModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<CartModel> updateCart(UpdateCartParams params) async {
    return executeAndHandleErrorServer<CartModel>(() async {
      final cartId = params.cartId;
      final endpoint = ServerConfig.updateCart(cartId);
      final response = await put(endpoint, body: params.toJson());
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return CartModel.fromJson(response.json['cart']);
      } else {
        throw Exception;
      }
    });
  }

  Future<List<ProductModel>> getAllProducts() async {
    return executeAndHandleErrorServer<List<ProductModel>>(() async {
      final response = await get(ServerConfig.getProduct);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data']['products'];

        return data
            .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> deleteCart(DeleteCartParams params) async {
    return executeAndHandleErrorServer<Unit>(() async {
      final cardId = params.cartId;
      final endpoint = ServerConfig.cartId(cardId);
      final response = await delete(endpoint);
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<List<CartModel>> getAllCarts() async {
    return executeAndHandleErrorServer<List<CartModel>>(() async {
      final response = await get(ServerConfig.cart);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['carts'];

        return data
            .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<CartModel> addProductToCart(AddProductToCartParams params) async {
    return executeAndHandleErrorServer<CartModel>(() async {
      final response =
          await post(ServerConfig.addToCart, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return CartModel.fromJson(response.json['cart']);
      } else {
        throw Exception;
      }
    });
  }

  Future<OrderResponse> createOrderFromCart(CreateOrderParams params) async {
    return executeAndHandleErrorServer<OrderResponse>(() async {
      final response = await post(
        ServerConfig.orderFromCart,
        body: params.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return OrderResponse.fromJson(response.json);
      } else {
        throw Exception('Failed to create order');
      }
    });
  }

  Future<ProductWithOthersResponse> getProductById(int productId) async {
    return executeAndHandleErrorServer<ProductWithOthersResponse>(() async {
      final response = await get(ServerConfig.getProductById(productId));
      if (response.statusCode == 200 || response.statusCode == 201) {
        // The API returns product fields directly in 'data' along with 'other_products'
        final jsonData = response.json;
        final dataMap = jsonData['data'] as Map<String, dynamic>?;
        if (dataMap == null) {
          throw Exception('Invalid response format');
        }

        // Extract other_products before creating ProductModel
        final otherProductsJson =
            dataMap['other_products'] as List<dynamic>? ?? [];
        final otherProducts = otherProductsJson
            .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList();

        // Remove other_products from dataMap to avoid conflicts when parsing ProductModel
        final productDataMap = Map<String, dynamic>.from(dataMap);
        productDataMap.remove('other_products');

        final product = ProductModel.fromJson(productDataMap);

        return ProductWithOthersResponse(
          message: jsonData['message'] as String?,
          data: ProductWithOthersData(
            product: product,
            otherProducts: otherProducts,
          ),
        );
      } else {
        throw Exception('Failed to get product');
      }
    });
  }
}
