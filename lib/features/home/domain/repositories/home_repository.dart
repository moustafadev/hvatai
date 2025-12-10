import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/home/domain/usecases/get_live_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

abstract class HomeRepository {
  Future<Either<String, List<String>>> getInterestsCategories();
  Future<Either<String, StreamListResponseModel>> getStreams({
    required GetStreamsParams getStreamsParams,
  });

  /// Convenience wrapper for status=live
  Future<Either<String, StreamListResponseModel>> getLiveStreams({
    required GetLiveStreamsParams getLiveStreamsParams,
  });

  Stream<Either<String, LiveStreamEvent>> watchLiveStreams();

  Future<Either<String, JoinStreamResponse>> joinStream(
      {required int streamId});
}
