import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/stream/data/datasources/api_service_stream.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class StreamImplRepository implements StreamRepository {
  final ApiServiceStream _apiServiceStream;

  StreamImplRepository(this._apiServiceStream);

  @override
  Future<Either<String, StreamCommentResponse>> getComments({
    required int streamId,
    int page = 1,
    int perPage = 50,
  }) {
    return executeAndHandleError<StreamCommentResponse>(() async {
      final res = await _apiServiceStream.getComments(
        streamId: streamId,
        page: page,
        perPage: perPage,
      );
      return res;
    });
  }

  @override
  Future<Either<String, StreamCommentModel>> sendComment({
    required int streamId,
    required String message,
  }) {
    return executeAndHandleError<StreamCommentModel>(() async {
      final res = await _apiServiceStream.sendComment(
        streamId: streamId,
        message: message,
      );
      return res;
    });
  }

  @override
  Future<Either<String, bool>> leaveStream({required int streamId}) {
    return executeAndHandleError<bool>(() async {
      final ok = await _apiServiceStream.leaveStream(streamId: streamId);
      return ok;
    });
  }

  @override
  Future<Either<String, bool>> endStream({required int streamId}) {
    return executeAndHandleError<bool>(() async {
      final ok = await _apiServiceStream.endStream(streamId: streamId);
      return ok;
    });
  }
}
