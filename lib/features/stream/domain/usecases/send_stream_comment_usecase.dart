// domain/usecases/send_stream_comment_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class SendStreamCommentUsecase
    implements UseCase<StreamCommentModel, SendStreamCommentParams> {
  final StreamRepository _repo;
  SendStreamCommentUsecase(this._repo);

  @override
  Future<Either<String, StreamCommentModel>> call(
      SendStreamCommentParams params) {
    return _repo.sendComment(
      streamId: params.streamId,
      message: params.message,
    );
  }
}

class SendStreamCommentParams {
  final int streamId;
  final String message;

  SendStreamCommentParams({
    required this.streamId,
    required this.message,
  });
}
