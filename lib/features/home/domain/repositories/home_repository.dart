import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/usecases/mark_read_usecase.dart';

abstract class HomeRepository {
  Future<Either<String, List<String>>> getInterestsCategories();
  Future<Either<String, NotificationModel>> getNotifications();
  Future<Either<String, NotificationModel>> markReadNotification(
      MarkReadUsecaseParams params);
}
