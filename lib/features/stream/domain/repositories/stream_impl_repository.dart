import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/stream/data/datasources/api_service_stream.dart';
import 'package:hvatai/features/stream/data/models/start_stream_model.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';

class StreamImplRepository implements StreamRepository {
  final ApiServiceStream _apiServiceStream;

  StreamImplRepository(this._apiServiceStream);

  @override
  Future<Either<String, StartStreamModel>> startStream({
    required int streamId,
  }) {
    return executeAndHandleError<StartStreamModel>(() async {
      final res = await _apiServiceStream.startStream(streamId);
      return res;
    });
  }

  @override
  Future<Either<String, StreamCommentResponse>> getComments({
    required GetStreamCommentsParams params,
  }) {
    return executeAndHandleError<StreamCommentResponse>(() async {
      final res = await _apiServiceStream.getComments(params: params);
      return res;
    });
  }

  @override
  Future<Either<String, StreamCommentModel>> sendComment(
      {required SendStreamCommentParams params}) {
    return executeAndHandleError<StreamCommentModel>(() async {
      final res = await _apiServiceStream.sendComment(params: params);
      return res;
    });
  }

  @override
  Future<Either<String, BidStreamResponse>> getBids({
    required GetStreamBidsParams params,
  }) {
    return executeAndHandleError<BidStreamResponse>(() async {
      final res = await _apiServiceStream.getBids(params: params);
      return res;
    });
  }

  @override
  Future<Either<String, BidStreamItem>> addBid({
    required AddStreamBidParams params,
  }) {
    return executeAndHandleError<BidStreamItem>(() async {
      final ok = await _apiServiceStream.addBid(addStreamBidParams: params);
      return ok;
    });
  }

  @override
  Future<Either<String, bool>> leaveStream({required int streamId}) {
    return executeAndHandleError<bool>(() async {
      final ok = await _apiServiceStream.leaveStream(streamId: streamId);
      return ok;
    });
  }

  @override
  Future<Either<String, bool>> endStream({required int streamId}) {
    return executeAndHandleError<bool>(() async {
      final ok = await _apiServiceStream.endStream(streamId: streamId);
      return ok;
    });
  }
}
