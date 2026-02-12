import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class DeleteRatingParams {
  final int ratingId;

  const DeleteRatingParams({required this.ratingId});
}

class DeleteRatingUsecase implements UseCase<void, DeleteRatingParams> {
  const DeleteRatingUsecase(this._repository);

  final ProfileRepository _repository;

  @override
  Future<Either<String, void>> call(DeleteRatingParams params) {
    return _repository.deleteRating(params.ratingId);
  }
}
