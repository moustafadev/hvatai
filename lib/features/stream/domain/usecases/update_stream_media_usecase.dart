import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class UpdateStreamMediaParams {
  final int streamId;
  final String title;
  final String description;
  final List<int>? thumbnailBytes;
  final bool isPublic;

  UpdateStreamMediaParams({
    required this.streamId,
    required this.title,
    required this.description,
    this.thumbnailBytes,
    this.isPublic = true,
  });
}

class UpdateStreamMediaUsecase
    implements UseCase<bool, UpdateStreamMediaParams> {
  final StreamRepository _repo;
  UpdateStreamMediaUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(UpdateStreamMediaParams params) {
    return _repo.updateStreamMedia(
      streamId: params.streamId,
      title: params.title,
      description: params.description,
      thumbnailBytes: params.thumbnailBytes,
      isPublic: params.isPublic,
    );
  }
}
