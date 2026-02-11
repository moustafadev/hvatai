import 'package:dartz/dartz.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';

abstract class ClipRepository {
  /// POST streams/{streamId}/clips
  /// body: FormData with { name: "...", video: MultipartFile }
  Future<Either<String, bool>> uploadClip({
    required int streamId,
    required String name,
    required String videoFilePath,
  });

  /// GET users/{userId}/clips
  Future<Either<String, ClipsResponseModel>> getUserClips(int userId);

  /// PUT streams/clips/{clipId}
  /// body: { name: "...", status: true/false }
  Future<Either<String, ClipModel>> updateClip({
    required int clipId,
    required String name,
    required bool status,
  });

  /// DELETE streams/clips/{clipId}
  Future<Either<String, bool>> deleteClip(int clipId);
}
