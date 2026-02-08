import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class DownloadVideoUsecase implements UseCase<String, DownloadVideoParams> {
  final StreamRepository _repo;
  DownloadVideoUsecase(this._repo);

  @override
  Future<Either<String, String>> call(DownloadVideoParams params) {
    return _repo.downloadVideo(
      videoUrl: params.videoUrl,
      targetPath: params.targetPath,
    );
  }
}

class DownloadVideoParams {
  final String videoUrl;
  final String targetPath;

  DownloadVideoParams({
    required this.videoUrl,
    required this.targetPath,
  });
}
