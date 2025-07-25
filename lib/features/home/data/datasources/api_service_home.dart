import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';

class ApiServiceHome extends ApiBase {
  Future<List<NotificationModel>> getNotifications() async {
    return executeAndHandleErrorServer<List<NotificationModel>>(() async {
      final response = await get(ServerConfig.notifications);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];

        return data
            .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception;
      }
    });
  }
}
