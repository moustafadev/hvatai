import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/home/data/datasources/api_service_home.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/domain/usecases/mark_read_usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class HomeImplRepository implements HomeRepository {
  final ApiServiceHome _apiServiceHome;

  HomeImplRepository(this._apiServiceHome);

  @override
  Future<Either<String, List<String>>> getInterestsCategories() {
    throw UnimplementedError();
  }

  @override
  Future<Either<String, NotificationModel>> getNotifications() async {
    return executeAndHandleError<NotificationModel>(() async {
      final res = await _apiServiceHome.getNotifications();
      return res;
    });
  }

  @override
  Future<Either<String, NotificationModel>> markReadNotification(
      MarkReadUsecaseParams params) {
    return executeAndHandleError<NotificationModel>(() async {
      final res = await _apiServiceHome.markReadNotification(params);
      return res;
    });
  }

  @override
  Future<Either<String, StreamListResponseModel>> getStreams({
    String? status,
    int page = 1,
    int perPage = 15,
  }) {
    return executeAndHandleError<StreamListResponseModel>(() async {
      final res = await _apiServiceHome.getStreams(
        status: status,
        page: page,
        perPage: perPage,
      );
      return res;
    });
  }

  @override
  Future<Either<String, StreamListResponseModel>> getLiveStreams({
    int page = 1,
    int perPage = 15,
  }) {
    return executeAndHandleError<StreamListResponseModel>(() async {
      final res = await _apiServiceHome.getLiveStreams(
        page: page,
        perPage: perPage,
      );
      return res;
    });
  }

  @override
  Future<Either<String, JoinStreamResponse>> joinStream({
    required String channelName,
    required bool isPublisher,
    required int userId,
  }) {
    return executeAndHandleError<JoinStreamResponse>(() async {
      final res = await _apiServiceHome.joinStream(
        channelName: channelName,
        isPublisher: isPublisher,
        userId: userId,
      );
      return res;
    });
  }
}
