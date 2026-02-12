import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/company/data/datasources/api_service_company.dart';
import 'package:hvatai/features/company/domain/repositories/company_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

class CompanyRepositoryImpl implements CompanyRepository {
  CompanyRepositoryImpl(this._apiService);

  final ApiServiceCompany _apiService;

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
  Future<Either<String, MyStreamsResponse>> getCompanyStreams(
    int userId, {
    String? sortBy,
  }) {
    return executeAndHandleError<MyStreamsResponse>(() async {
      final response = await _apiService.getCompanyStreams(
        userId,
        sortBy: sortBy,
      );
      return response;
    });
  }
}
