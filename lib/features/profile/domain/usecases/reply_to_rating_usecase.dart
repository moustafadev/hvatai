import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class ReplyToRatingParams {
  final int ratingId;
  final String comment;

  const ReplyToRatingParams({
    required this.ratingId,
    required this.comment,
  });
}

class ReplyToRatingUsecase implements UseCase<void, ReplyToRatingParams> {
  const ReplyToRatingUsecase(this._repository);

  final ProfileRepository _repository;

  @override
  Future<Either<String, void>> call(ReplyToRatingParams params) {
    return _repository.replyToRating(params.ratingId, params.comment);
  }
}
