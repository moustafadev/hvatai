import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';

class InterestsCategoryUseCase {
  final HomeRepository _repository;

  InterestsCategoryUseCase(this._repository);

  Future<Either<String, List<String>>> call() {
    return _repository.getInterestsCategories();
  }
}
