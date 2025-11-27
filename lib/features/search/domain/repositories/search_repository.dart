import 'package:dartz/dartz.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';

abstract class SearchRepository {
  Future<Either<String, SearchResponseModel>> search(String query);
  Future<Either<String, UserDataModel>> getUserData(int userId);
}
