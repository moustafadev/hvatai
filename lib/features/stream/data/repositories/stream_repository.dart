import 'package:dartz/dartz.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';

abstract class StreamRepository {
  Future<Either<String, StreamCommentResponse>> getComments({
    required int streamId,
    int page = 1,
    int perPage = 50,
  });

  Future<Either<String, StreamCommentModel>> sendComment({
    required int streamId,
    required String message,
  });

  /// POST streams/{id}/leave
  Future<Either<String, bool>> leaveStream({required int streamId});

  /// POST streams/{id}/end
  Future<Either<String, bool>> endStream({required int streamId});
}
