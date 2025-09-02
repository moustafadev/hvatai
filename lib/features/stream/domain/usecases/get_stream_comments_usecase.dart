// domain/usecases/get_stream_comments_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class GetStreamCommentsUsecase
    implements UseCase<StreamCommentResponse, GetStreamCommentsParams> {
  final StreamRepository _repo;
  GetStreamCommentsUsecase(this._repo);

  @override
  Future<Either<String, StreamCommentResponse>> call(
      GetStreamCommentsParams params) {
    return _repo.getComments(params: params);
  }
}

class GetStreamCommentsParams {
  final int streamId;
  final int page;
  final int perPage;

  GetStreamCommentsParams({
    required this.streamId,
    this.page = 1,
    this.perPage = 50,
  });
}
