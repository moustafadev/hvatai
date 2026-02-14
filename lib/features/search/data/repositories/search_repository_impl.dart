import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/search/data/datasources/api_service_search.dart';
import 'package:hvatai/features/search/data/model/recent_search_response/recent_search_response.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/search_suggestions_response/search_suggestions_response.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';
import 'package:hvatai/features/search/domain/usecases/search_usecase.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._apiService);

  final ApiServiceSearch _apiService;

  @override
  Future<Either<String, SearchResponseModel>> search(SearchParams params) {
    return executeAndHandleError<SearchResponseModel>(() async {
      final response = await _apiService.search(params: params);
      return response;
    });
  }

  @override
  Future<Either<String, SearchSuggestionsResponse>> getSuggestions(
      String query) {
    return executeAndHandleError<SearchSuggestionsResponse>(() async {
      final response = await _apiService.getSuggestions(query: query);
      return response;
    });
  }

  @override
  Future<Either<String, RecentSearchResponse>> getRecentSearches() {
    return executeAndHandleError<RecentSearchResponse>(() async {
      final response = await _apiService.getRecentSearches();
      return response;
    });
  }

  @override
  Future<Either<String, void>> deleteRecentSearch(int id) {
    return executeAndHandleError<void>(() async {
      await _apiService.deleteRecentSearch(id);
    });
  }
}
