import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';

class DeleteRecentSearchUsecase implements UseCase<void, int> {
  const DeleteRecentSearchUsecase(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<String, void>> call(int params) {
    return _repository.deleteRecentSearch(params);
  }
}
