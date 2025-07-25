import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';

abstract class HomeRepository {
  Future<Either<String, List<String>>> getInterestsCategories();
  Future<Either<String, List<NotificationModel>>> getNotifications();
}
