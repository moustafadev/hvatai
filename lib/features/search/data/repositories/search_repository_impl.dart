import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/data/datasources/api_service_search.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

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

  @override
  Future<Either<String, UserDataModel>> getUserData(int userId) {
    return executeAndHandleError<UserDataModel>(() async {
      final response = await _apiService.getUserData(userId);
      return response;
    });
  }

  @override
  Future<Either<String, List<ProductModel>>> getCompanyProducts(int userId) {
    return executeAndHandleError<List<ProductModel>>(() async {
      final response = await _apiService.getCompanyProducts(userId);
      return response;
    });
  }

  @override
  Future<Either<String, MyStreamsResponse>> getCompanyStreams(int userId) {
    return executeAndHandleError<MyStreamsResponse>(() async {
      final response = await _apiService.getCompanyStreams(userId);
      return response;
    });
  }
}
