import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/home/data/datasources/api_service_home.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeImplRepository implements HomeRepository {
  final ApiServiceHome _apiServiceHome;

  HomeImplRepository(this._apiServiceHome);

  @override
  Future<Either<String, List<String>>> getInterestsCategories() {
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<NotificationModel>>> getNotifications() async {
    return executeAndHandleError<List<NotificationModel>>(() async {
      final res = await _apiServiceHome.getNotifications();
      return res;
    });
  }
}
