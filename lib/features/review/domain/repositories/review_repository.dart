import 'package:dartz/dartz.dart';

abstract class ReviewRepository {
  Future<Either<String, bool>> submitReview({
    required int businessId,
    required int score,
    required String comment,
    required List<String> images,
  });
}
