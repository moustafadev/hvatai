import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/usecases/mark_read_usecase.dart';

class ApiServiceHome extends ApiBase {
  Future<NotificationModel> getNotifications() async {
    return executeAndHandleErrorServer<NotificationModel>(() async {
      final response = await get(ServerConfig.notifications);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return NotificationModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<NotificationModel> markReadNotification(
      MarkReadUsecaseParams params) async {
    return executeAndHandleErrorServer<NotificationModel>(() async {
      final id = params.notificationItem.id;
      if (id == null) throw Exception("Notification ID is null");

      final url = ServerConfig.notificationMarkRead(id);
      final response = await patch(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return NotificationModel.fromJson({
          'data': [response.json['data']]
        });
      } else {
        throw Exception;
      }
    });
  }
}
