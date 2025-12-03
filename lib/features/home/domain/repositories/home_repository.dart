import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

abstract class HomeRepository {
  Future<Either<String, List<String>>> getInterestsCategories();
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

  Stream<Either<String, LiveStreamEvent>> watchLiveStreams();

  Future<Either<String, JoinStreamResponse>> joinStream(
      {required int streamId});
}
