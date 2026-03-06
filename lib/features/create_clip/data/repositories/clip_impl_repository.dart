import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/create_clip/data/datasources/api_service_clip.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/create_clip/data/models/preview_images/preview_images_model.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';
import 'package:hvatai/features/create_clip/domain/usecases/upload_clip_usecase.dart';

class ClipImplRepository implements ClipRepository {
  final ApiServiceClip _apiServiceClip;

  ClipImplRepository(this._apiServiceClip);

  @override
  Future<Either<String, bool>> uploadClip(UploadClipParams params) {
    return executeAndHandleError<bool>(() async {
      final res = await _apiServiceClip.uploadClip(params);
      return res;
    });
  }

  @override
  Future<Either<String, ClipsResponseModel>> getUserClips(int userId) {
    return executeAndHandleError<ClipsResponseModel>(() async {
      return await _apiServiceClip.getUserClips(userId);
    });
  }

  @override
  Future<Either<String, ClipModel>> updateClip({
    required int clipId,
    required String name,
    required bool status,
  }) {
    return executeAndHandleError<ClipModel>(() async {
      return await _apiServiceClip.updateClip(
        clipId: clipId,
        name: name,
        status: status,
      );
    });
  }

  @override
  Future<Either<String, bool>> deleteClip(int clipId) {
    return executeAndHandleError<bool>(() async {
      return await _apiServiceClip.deleteClip(clipId);
    });
  }

  @override
  Future<Either<String, PreviewImagesResponse>> getPreviewImages(int streamId) {
    return executeAndHandleError<PreviewImagesResponse>(() async {
      return await _apiServiceClip.getPreviewImages(streamId);
    });
  }
}
