import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/activity/data/models/favorites_response/favorites_response.dart';
import 'package:hvatai/features/activity/domain/repositories/activity_repository.dart';

class GetFavoritesUsecase
    implements UseCase<FavoritesResponse, Unit> {
  final ActivityRepository _repository;

  GetFavoritesUsecase(this._repository);

  @override
  Future<Either<String, FavoritesResponse>> call(Unit params) {
    return _repository.getFavorites();
  }
}

