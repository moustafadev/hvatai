import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/usecases/mark_read_usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

abstract class HomeRepository {
  Future<Either<String, List<String>>> getInterestsCategories();
  Future<Either<String, NotificationModel>> getNotifications();
  Future<Either<String, NotificationModel>> markReadNotification(
      MarkReadUsecaseParams params);
  Future<Either<String, StreamListResponseModel>> getStreams({
    String? status, // e.g. 'live'
    int page = 1,
    int perPage = 15,
  });

  /// Convenience wrapper for status=live
  Future<Either<String, StreamListResponseModel>> getLiveStreams({
    int page = 1,
    int perPage = 15,
  });

  Future<Either<String, JoinStreamResponse>> joinStream({
    required String channelName,
    required bool isPublisher,
    required int userId,
  });
}
