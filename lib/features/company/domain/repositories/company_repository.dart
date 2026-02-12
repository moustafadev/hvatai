import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

abstract class CompanyRepository {
  Future<Either<String, UserDataModel>> getUserData(int userId);
  Future<Either<String, List<ProductModel>>> getCompanyProducts(int userId);
  Future<Either<String, MyStreamsResponse>> getCompanyStreams(
    int userId, {
    String? sortBy,
  });
}
