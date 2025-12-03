import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/notifications/data/datasources/api_service_notifications.dart';
import 'package:hvatai/features/notifications/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/notifications/domain/repositories/notifications_repository.dart';
import 'package:hvatai/features/notifications/domain/usecases/mark_read_usecase.dart';

class NotificationsImplRepository implements NotificationsRepository {
  final ApiServiceNotifications _apiServiceNotifications;

  NotificationsImplRepository(this._apiServiceNotifications);

  @override
  Future<Either<String, NotificationModel>> getNotifications() async {
    return executeAndHandleError<NotificationModel>(() async {
      final res = await _apiServiceNotifications.getNotifications();
      return res;
    });
  }

  @override
  Future<Either<String, NotificationModel>> markReadNotification(
      MarkReadUsecaseParams params) async {
    return executeAndHandleError<NotificationModel>(() async {
      final res = await _apiServiceNotifications.markReadNotification(params);
      return res;
    });
  }
}
