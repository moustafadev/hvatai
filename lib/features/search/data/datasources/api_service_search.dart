import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/search/data/model/recent_search_response/recent_search_response.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/search_suggestions_response/search_suggestions_response.dart';
import 'package:hvatai/features/search/domain/usecases/search_usecase.dart';

class ApiServiceSearch extends ApiBase {
  Future<SearchResponseModel> search({required SearchParams params}) async {
    return executeAndHandleErrorServer<SearchResponseModel>(() async {
      final queryParams = <String, dynamic>{
        'query': params.query,
      };
      if (params.categoryIds.isNotEmpty) {
        final queryParams = <String, dynamic>{
          'query': params.query,
        };

        if (params.categoryIds.isNotEmpty) {
          queryParams['category_ids[]'] = params.categoryIds; // ✅ important
        }
      }
      final response = await get(
        ServerConfig.search,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return SearchResponseModel.fromJson(response.json);
      }

      throw Exception('Failed to load search results');
    });
  }

  Future<SearchSuggestionsResponse> getSuggestions(
      {required String query}) async {
    return executeAndHandleErrorServer<SearchSuggestionsResponse>(() async {
      final response = await get(
        ServerConfig.searchSuggestions,
        queryParameters: {'query': query},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return SearchSuggestionsResponse.fromJson(response.json);
      }

      throw Exception('Failed to load suggestions');
    });
  }

  Future<RecentSearchResponse> getRecentSearches() async {
    return executeAndHandleErrorServer<RecentSearchResponse>(() async {
      final response = await get(ServerConfig.searchRecent);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return RecentSearchResponse.fromJson(response.json);
      }

      throw Exception('Failed to load recent searches');
    });
  }

  Future<void> deleteRecentSearch(int id) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await delete(ServerConfig.deleteRecentSearch(id));

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw Exception('Failed to delete recent search');
    });
  }
}
