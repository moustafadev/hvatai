import 'package:dartz/dartz.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/create_clip/data/models/preview_images/preview_images_model.dart';
import 'package:hvatai/features/create_clip/domain/usecases/upload_clip_usecase.dart';

abstract class ClipRepository {
  /// POST streams/{streamId}/clips
  /// body: FormData with { name: "...", video: MultipartFile }
  Future<Either<String, bool>> uploadClip(UploadClipParams params);

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

  Future<Either<String, PreviewImagesResponse>> getPreviewImages(int streamId);
}
