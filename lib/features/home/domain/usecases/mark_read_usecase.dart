import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';

class MarkReadUsecase
    implements UseCase<NotificationModel, MarkReadUsecaseParams> {
  final HomeRepository _homeRepository;

  MarkReadUsecase(this._homeRepository);

  @override
  Future<Either<String, NotificationModel>> call(MarkReadUsecaseParams params) {
    return _homeRepository.markReadNotification(params);
  }
}

class MarkReadUsecaseParams {
  final NotificationItem notificationItem;

  MarkReadUsecaseParams({required this.notificationItem});

  Map<String, dynamic> toJson() {
    return notificationItem.toJson();
  }
}
