import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class UploadClipUsecase implements UseCase<bool, UploadClipParams> {
  final ClipRepository _repo;
  UploadClipUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(UploadClipParams params) {
    return _repo.uploadClip(params);
  }
}

class UploadClipParams {
  final int streamId;
  final String name;
  final double startValue;
  final double endValue;

  UploadClipParams({
    required this.streamId,
    required this.name,
    required this.startValue,
    required this.endValue,
  });
}
