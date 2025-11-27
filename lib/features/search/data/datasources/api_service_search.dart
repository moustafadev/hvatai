import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';

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
}
