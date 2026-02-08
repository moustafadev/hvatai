import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class UploadClipUsecase implements UseCase<bool, UploadClipParams> {
  final ClipRepository _repo;
  UploadClipUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(UploadClipParams params) {
    return _repo.uploadClip(
      streamId: params.streamId,
      name: params.name,
      videoFilePath: params.videoFilePath,
    );
  }
}

class UploadClipParams {
  final int streamId;
  final String name;
  final String videoFilePath;

  UploadClipParams({
    required this.streamId,
    required this.name,
    required this.videoFilePath,
  });
}
