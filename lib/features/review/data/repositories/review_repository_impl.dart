import 'package:dartz/dartz.dart';
import 'package:hvatai/features/review/data/datasources/api_service_review.dart';
import 'package:hvatai/features/review/domain/repositories/review_repository.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final ApiServiceReview _apiService;

  ReviewRepositoryImpl(this._apiService);

  @override
  Future<Either<String, bool>> submitReview({
    required int businessId,
    required int score,
    required String comment,
    required List<String> images,
  }) async {
    try {
      final result = await _apiService.submitReview(
        businessId: businessId,
        score: score,
        comment: comment,
        images: images,
      );
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
