import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/search/data/model/recent_search_response/recent_search_response.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';

class GetRecentSearchesUsecase implements UseCase<RecentSearchResponse, Unit> {
  const GetRecentSearchesUsecase(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<String, RecentSearchResponse>> call(Unit params) {
    return _repository.getRecentSearches();
  }
}
