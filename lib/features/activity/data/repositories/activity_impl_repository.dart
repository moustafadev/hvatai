import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/activity/data/datasources/api_service_activity.dart';
import 'package:hvatai/features/activity/data/models/favorites_response/favorites_response.dart';
import 'package:hvatai/features/activity/data/models/user_bids_response/user_bids_response.dart';
import 'package:hvatai/features/activity/domain/repositories/activity_repository.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

class ActivityImplRepository implements ActivityRepository {
  final ApiServiceActivity _apiService;

  ActivityImplRepository(this._apiService);

  @override
  Future<Either<String, FavoritesResponse>> getFavorites() {
    return executeAndHandleError<FavoritesResponse>(() async {
      final res = await _apiService.getFavorites();
      return res;
    });
  }

  @override
  Future<Either<String, MyStreamsResponse>> getMyStreams() {
    return executeAndHandleError<MyStreamsResponse>(() async {
      final res = await _apiService.getMyStreams();
      return res;
    });
  }

  @override
  Future<Either<String, UserBidsResponse>> getUserBids() {
    return executeAndHandleError<UserBidsResponse>(() async {
      final res = await _apiService.getUserBids();
      return res;
    });
  }
}

