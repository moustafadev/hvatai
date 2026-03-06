import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/create_clip/data/models/preview_images/preview_images_model.dart';
import 'package:hvatai/features/create_clip/domain/usecases/upload_clip_usecase.dart';

class ApiServiceClip extends ApiBase {
  /// POST: streams/{streamId}/clips
  /// body: FormData with { name: "...", video: MultipartFile }
  Future<bool> uploadClip(UploadClipParams params) async {
    return executeAndHandleErrorServer<bool>(() async {
      final path = ServerConfig.uploadClip(params.streamId);

      final res = await post(
        path,
        body: {
          "name": params.name,
          "segments": [
            {
              "from": _formatSeconds(params.startValue),
              "to": _formatSeconds(params.endValue),
            }
          ]
        },
        contentType: 'application/json',
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      }

      return false;
    });
  }

  /// GET: users/{userId}/clips
  Future<ClipsResponseModel> getUserClips(int userId) async {
    return executeAndHandleErrorServer<ClipsResponseModel>(() async {
      final path = ServerConfig.getUserClips(userId);
      final res = await get(path);

      if (res.statusCode == 200) {
        return ClipsResponseModel.fromJson(res.json);
      }
      throw Exception('Failed to get user clips: ${res.statusCode}');
    });
  }

  /// PUT: streams/clips/{clipId}
  /// body: { name: "...", status: true/false }
  Future<ClipModel> updateClip({
    required int clipId,
    required String name,
    required bool status,
  }) async {
    return executeAndHandleErrorServer<ClipModel>(() async {
      final path = ServerConfig.updateClip(clipId);
      final res = await put(
        path,
        body: {
          'name': name,
          'status': status,
        },
      );

      if (res.statusCode == 200) {
        return ClipModel.fromJson(res.json['data']);
      }

      throw Exception('Failed to get user clips: ${res.statusCode}');
    });
  }

  /// DELETE: streams/clips/{clipId}
  Future<bool> deleteClip(int clipId) async {
    return executeAndHandleErrorServer<bool>(() async {
      final path = ServerConfig.deleteClip(clipId);
      final res = await delete(path);

      if (res.statusCode == 200 || res.statusCode == 204) {
        return true;
      }

      return false;
    });
  }

  Future<PreviewImagesResponse> getPreviewImages(int streamId) async {
    return executeAndHandleErrorServer<PreviewImagesResponse>(() async {
      final path = ServerConfig.previewImages(streamId);
      final res = await get(path);

      if (res.statusCode == 200) {
        return PreviewImagesResponse.fromJson(res.json);
      }

      throw Exception(
          'Failed to get preview images for stream $streamId: ${res.statusCode}');
    });
  }
}

String _formatSeconds(num seconds) {
  final totalSeconds = seconds.floor();

  final hours = (totalSeconds ~/ 3600).toString().padLeft(2, '0');
  final minutes = ((totalSeconds % 3600) ~/ 60).toString().padLeft(2, '0');
  final secs = (totalSeconds % 60).toString().padLeft(2, '0');

  return "$hours:$minutes:$secs";
}
