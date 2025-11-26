import 'package:dartz/dartz.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';

abstract class SearchRepository {
  Future<Either<String, SearchResponseModel>> search(String query);
}


