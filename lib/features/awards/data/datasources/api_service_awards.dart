import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

class ApiServiceAwards extends ApiBase {
  Future<void> sendReward({
    required int userId,
    required Map<String, dynamic> body,
  }) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await post(
        ServerConfig.sendReward(userId),
        body: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw Exception('Failed to send reward');
    });
  }
}
