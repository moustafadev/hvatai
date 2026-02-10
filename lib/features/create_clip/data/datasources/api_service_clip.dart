import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

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
}
