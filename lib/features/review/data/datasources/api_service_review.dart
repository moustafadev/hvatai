import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

class ApiServiceReview extends ApiBase {

  Future<bool> submitReview({
    required int businessId,
    required int score,
    required String comment,
    required List<String> images,
  }) async {
    return executeAndHandleErrorServer<bool>(() async {
      final path = ServerConfig.submitBusinessReview(businessId);

      final formData = FormData();

      // Add score
      formData.fields.add(MapEntry('score', score.toString()));

      // Add comment
      formData.fields.add(MapEntry('comment', comment));

      // Add images
      for (int i = 0; i < images.length; i++) {
        final imagePath = images[i];
        if (imagePath.isNotEmpty) {
          try {
            final file = await MultipartFile.fromFile(
              imagePath,
              filename: imagePath.split('/').last,
            );
            formData.files.add(MapEntry('image[$i]', file));
          } catch (e) {
            debugPrint('Error adding image file: $e');
            // Continue with other images
          }
        }
      }

      final response = await post(
        path,
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      }

      throw Exception(
        'Failed to submit review (code: ${response.statusCode})',
      );
    });
  }
}
