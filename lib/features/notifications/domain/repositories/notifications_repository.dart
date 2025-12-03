import 'package:dartz/dartz.dart';
import 'package:hvatai/features/notifications/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/notifications/domain/usecases/mark_read_usecase.dart';

abstract class NotificationsRepository {
  Future<Either<String, NotificationModel>> getNotifications();
  Future<Either<String, NotificationModel>> markReadNotification(
      MarkReadUsecaseParams params);
}
