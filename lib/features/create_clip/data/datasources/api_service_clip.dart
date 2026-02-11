import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';

class ApiServiceClip extends ApiBase {
  /// POST: streams/{streamId}/clips
  /// body: FormData with { name: "...", video: MultipartFile }
  Future<bool> uploadClip({
    required int streamId,
    required String name,
    required String videoFilePath,
  }) async {
    return executeAndHandleErrorServer<bool>(() async {
      final path = ServerConfig.uploadClip(streamId);

      final formData = FormData.fromMap({
        'name': name,
        'video': await MultipartFile.fromFile(
          videoFilePath,
          filename: videoFilePath.split('/').last,
        ),
      });

      print('formData: $formData');
      print('formData.fields: ${formData.fields}');
      print('formData.files: ${formData.files}');

      final res = await post(
        path,
        body: formData,
        contentType: 'multipart/form-data',
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
}
