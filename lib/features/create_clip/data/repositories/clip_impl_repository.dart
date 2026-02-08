import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/create_clip/data/datasources/api_service_clip.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class ClipImplRepository implements ClipRepository {
  final ApiServiceClip _apiServiceClip;

  ClipImplRepository(this._apiServiceClip);

  @override
  Future<Either<String, bool>> uploadClip({
    required int streamId,
    required String name,
    required String videoFilePath,
  }) {
    return executeAndHandleError<bool>(() async {
      final res = await _apiServiceClip.uploadClip(
        streamId: streamId,
        name: name,
        videoFilePath: videoFilePath,
      );
      return res;
    });
  }
}
