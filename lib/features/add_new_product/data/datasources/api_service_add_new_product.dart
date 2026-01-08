import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class ApiServiceAddNewProduct extends ApiBase {
  Future<ProductModel> addNewProduct(FormData formData) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final response = await post(
        ServerConfig.products,
        body: formData,
        contentType: 'multipart/form-data',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.json['data']);
      }
      throw Exception;
    });
  }

  Future<List<MainCategoryModel>> getProductCategory() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.categories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<List<MainCategoryModel>> getLastUsedCategories() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.lastUsedCategories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<ProductModel> updateProduct({
    required int productId,
    required FormData formData,
  }) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final response = await post(
        ServerConfig.updateProduct(productId),
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.json);
      }
      throw Exception;
    });
  }
}

