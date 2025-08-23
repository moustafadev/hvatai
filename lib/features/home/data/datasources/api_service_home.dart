import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/usecases/mark_read_usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

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

  Future<StreamListResponseModel> getStreams({
    String? status, // e.g., 'live'
    int page = 1,
    int perPage = 15,
  }) async {
    return executeAndHandleErrorServer<StreamListResponseModel>(() async {
      final uri = Uri.parse(ServerConfig.streams).replace(
        queryParameters: {
          if (status != null) 'status': status,
          'page': '$page',
          'per_page': '$perPage',
        },
      );

      final response = await get(uri.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = Map<String, dynamic>.from(response.json);
        return StreamListResponseModel.fromJson(json);
      } else {
        throw Exception('Failed to fetch streams');
      }
    });
  }

  Future<JoinStreamResponse> joinStream({
    required String channelName,
    required bool isPublisher,
    required int userId,
  }) async {
    return executeAndHandleErrorServer<JoinStreamResponse>(() async {
      final response = await post(
        ServerConfig.joinStream, // <--- your endpoint
        body: {
          'channel_name': channelName,
          'is_publisher': isPublisher,
          'user_id': userId,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return JoinStreamResponse.fromJson(
          Map<String, dynamic>.from(response.json),
        );
      } else {
        throw Exception('Failed to join stream');
      }
    });
  }

  Future<StreamListResponseModel> getLiveStreams(
      {int page = 1, int perPage = 15}) {
    return getStreams(status: 'live', page: page, perPage: perPage);
  }
}
