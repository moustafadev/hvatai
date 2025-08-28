import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

// Adjust the import to your actual path
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';

class ApiServiceStream extends ApiBase {
  /// GET: streams/{id}/comments?page=&per_page=
  Future<StreamCommentResponse> getComments({
    required int streamId,
    int page = 1,
    int perPage = 50,
  }) async {
    final path = ServerConfig.streamComments(streamId);

    final res = await get(
      path,
      queryParameters: {
        'page': '$page',
        'per_page': '$perPage',
      },
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      return StreamCommentResponse.fromJson(
        Map<String, dynamic>.from(res.json),
      );
    }

    throw Exception('Failed to fetch stream comments (code: ${res.statusCode})');
  }

  /// POST: streams/{id}/comments
  /// body: { message: "..." }
  Future<StreamCommentModel> sendComment({
    required int streamId,
    required String message,
  }) async {
    final path = ServerConfig.streamComments(streamId);

    final res = await post(
      path,
      body: {'message': message},
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      final root = Map<String, dynamic>.from(res.json);
      final data = Map<String, dynamic>.from(root['data'] ?? {});
      return StreamCommentModel.fromJson(data);
    }

    throw Exception('Failed to send comment (code: ${res.statusCode})');
  }

  /// POST: streams/{id}/leave
  /// Returns true on 200/201
  Future<bool> leaveStream({required int streamId}) async {
    final path = ServerConfig.leaveStream(streamId);

    final res = await post(path);

    if (res.statusCode == 200 || res.statusCode == 201) {
      return true;
    }

    throw Exception('Failed to leave stream (code: ${res.statusCode})');
  }

  /// POST: streams/{id}/end
  /// Returns true on 200/201
  Future<bool> endStream({required int streamId}) async {
    final path = ServerConfig.endStream(streamId);

    final res = await post(path);

    if (res.statusCode == 200 || res.statusCode == 201) {
      return true;
    }

    throw Exception('Failed to end stream (code: ${res.statusCode})');
  }
}
