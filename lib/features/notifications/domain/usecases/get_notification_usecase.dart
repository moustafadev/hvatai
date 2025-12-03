import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/notifications/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/notifications/domain/repositories/notifications_repository.dart';

class GetNotificationUsecase implements UseCase<NotificationModel, Unit> {
  final NotificationsRepository _notificationsRepository;

  GetNotificationUsecase(this._notificationsRepository);

  @override
  Future<Either<String, NotificationModel>> call(Unit params) {
    return _notificationsRepository.getNotifications();
  }
}
