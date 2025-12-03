import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/notifications/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/notifications/domain/repositories/notifications_repository.dart';

class MarkReadUsecase
    implements UseCase<NotificationModel, MarkReadUsecaseParams> {
  final NotificationsRepository _notificationsRepository;

  MarkReadUsecase(this._notificationsRepository);

  @override
  Future<Either<String, NotificationModel>> call(MarkReadUsecaseParams params) {
    return _notificationsRepository.markReadNotification(params);
  }
}

class MarkReadUsecaseParams {
  final NotificationItem notificationItem;

  MarkReadUsecaseParams({required this.notificationItem});

  Map<String, dynamic> toJson() {
    return notificationItem.toJson();
  }
}
