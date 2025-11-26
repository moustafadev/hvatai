import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/search/data/datasources/api_service_search.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._apiService);

  final ApiServiceSearch _apiService;

  @override
  Future<Either<String, SearchResponseModel>> search(String query) {
    return executeAndHandleError<SearchResponseModel>(() async {
      final response = await _apiService.search(query: query);
      return response;
    });
  }
}


