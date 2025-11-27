import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

class ApiServiceSearch extends ApiBase {
  Future<SearchResponseModel> search({required String query}) async {
    return executeAndHandleErrorServer<SearchResponseModel>(() async {
      final response = await get(
        ServerConfig.search,
        queryParameters: {'query': query},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return SearchResponseModel.fromJson(response.json);
      }

      throw Exception('Failed to load search results');
    });
  }

  Future<UserDataModel> getUserData(int userId) async {
    return executeAndHandleErrorServer<UserDataModel>(() async {
      final response = await get(ServerConfig.userData(userId));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.json['data'] as Map<String, dynamic>? ?? {};
        final userJson = data['user'] as Map<String, dynamic>? ?? {};
        return UserDataModel.fromJson(userJson);
      }

      throw Exception('Failed to fetch user data');
    });
  }

  Future<List<ProductModel>> getCompanyProducts(int userId) async {
    return executeAndHandleErrorServer<List<ProductModel>>(() async {
      final response = await get(ServerConfig.userProducts(userId));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data =
            (response.json['data'] as List<dynamic>? ?? <dynamic>[]);
        return data
            .map(
              (item) => ProductModel.fromJson(
                Map<String, dynamic>.from(item as Map),
              ),
            )
            .toList();
      }

      throw Exception('Failed to fetch company products');
    });
  }

  Future<MyStreamsResponse> getCompanyStreams(int userId) async {
    return executeAndHandleErrorServer<MyStreamsResponse>(() async {
      final response = await get(ServerConfig.userStreams(userId));

      if (response.statusCode == 200 || response.statusCode == 201) {
        return MyStreamsResponse.fromJson(response.json);
      }

      throw Exception('Failed to fetch company streams');
    });
  }
}
