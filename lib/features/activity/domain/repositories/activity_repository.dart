import 'package:dartz/dartz.dart';
import 'package:hvatai/features/activity/data/models/favorites_response/favorites_response.dart';
import 'package:hvatai/features/activity/data/models/user_bids_response/user_bids_response.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

abstract class ActivityRepository {
  Future<Either<String, FavoritesResponse>> getFavorites();
  Future<Either<String, MyStreamsResponse>> getMyStreams();
  Future<Either<String, UserBidsResponse>> getUserBids();
}

