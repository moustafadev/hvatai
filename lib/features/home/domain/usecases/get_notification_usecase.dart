import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';

class GetNotificationUsecase implements UseCase<List<NotificationModel>, Unit> {
  final HomeRepository _homeRepository;

  GetNotificationUsecase(this._homeRepository);

  @override
  Future<Either<String, List<NotificationModel>>> call(Unit params) {
    return _homeRepository.getNotifications();
  }
}
