import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';

class SearchParams {
  final String query;
  final List<int> categoryIds;
  const SearchParams({required this.query, required this.categoryIds});
}

class SearchUsecase
    implements UseCase<SearchResponseModel, SearchParams> {
  const SearchUsecase(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<String, SearchResponseModel>> call(SearchParams params) {
    return _repository.search(params);
  }
}

