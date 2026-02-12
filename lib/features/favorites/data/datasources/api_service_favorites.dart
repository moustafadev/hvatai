import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class ApiServiceFavorites extends ApiBase {
  Future<List<ProductModel>> getFavProducts() async {
    return executeAndHandleErrorServer<List<ProductModel>>(() async {
      final response = await get(ServerConfig.getFavProduct);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data']['products'];

        return data
            .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to fetch favorite products');
      }
    });
  }

  Future<void> toggleFavorite({
    required String type,
    required int id,
  }) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await post(
        ServerConfig.toggleFavorite,
        body: {
          'type': type,
          'id': id,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw Exception('Failed to toggle favorite');
    });
  }
}
