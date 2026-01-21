import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/review/domain/repositories/review_repository.dart';

class SubmitReviewParams {
  final int businessId;
  final int score;
  final String comment;
  final List<String> images;

  SubmitReviewParams({
    required this.businessId,
    required this.score,
    required this.comment,
    required this.images,
  });
}

class SubmitReviewUsecase implements UseCase<bool, SubmitReviewParams> {
  final ReviewRepository _repository;

  SubmitReviewUsecase(this._repository);

  @override
  Future<Either<String, bool>> call(SubmitReviewParams params) {
    return _repository.submitReview(
      businessId: params.businessId,
      score: params.score,
      comment: params.comment,
      images: params.images,
    );
  }
}
