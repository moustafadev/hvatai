import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/datasources/api_service_stream.dart';
import 'package:hvatai/features/stream/data/models/bid_session/bid_session_response.dart';
import 'package:hvatai/features/stream/data/models/bid_stream/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/models/toggle_bidding/toggle_bidding_response.dart';
import 'package:hvatai/features/stream/data/models/subscribed_users/subscribed_users_response.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';
import 'package:hvatai/features/stream/data/models/start_stream/start_stream_model.dart';
import 'package:hvatai/features/stream/data/models/stream_comment/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/stream_products/stream_products_response.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';
import 'package:hvatai/features/stream/domain/usecases/add_product_to_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_bid_session_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_products_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_bidding_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/create_clip_from_stream_usecase.dart';

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

  @override
  Future<Either<String, StreamProductModel>> addProductToStream({
    required AddProductToStreamParams params,
  }) {
    return executeAndHandleError<StreamProductModel>(() async {
      final res = await _apiServiceStream.addProductToStream(params: params);
      return res;
    });
  }

  @override
  Future<Either<String, StreamProductsResponseModel>> getStreamProducts({
    required GetStreamProductsParams params,
  }) {
    return executeAndHandleError<StreamProductsResponseModel>(() async {
      final res = await _apiServiceStream.getStreamProducts(params: params);
      return res;
    });
  }

  @override
  Future<Either<String, BidSessionResponse>> getBidSession({
    required GetBidSessionParams params,
  }) {
    return executeAndHandleError<BidSessionResponse>(() async {
      final res = await _apiServiceStream.getBidSession(
        streamId: params.streamId,
      );
      return res;
    });
  }

  @override
  Future<Either<String, ToggleBiddingResponseModel>> toggleBidding({
    required ToggleBiddingParams params,
  }) {
    return executeAndHandleError<ToggleBiddingResponseModel>(() async {
      final res = await _apiServiceStream.toggleBidding(
        streamId: params.streamId,
        streamProductId: params.streamProductId,
        bidAmount: params.bidAmount,
        notes: params.notes,
      );
      return res;
    });
  }

  @override
  Future<Either<String, SubscribedUsersResponse>> getSubscribedUsers() {
    return executeAndHandleError<SubscribedUsersResponse>(() async {
      final res = await _apiServiceStream.getSubscribedUsers();
      return res;
    });
  }

  @override
  Future<Either<String, bool>> toggleSubscription({
    required ToggleSubscriptionParams params,
  }) {
    return executeAndHandleError<bool>(() async {
      final ok = await _apiServiceStream.toggleSubscription(
        userId: params.userId,
      );
      return ok;
    });
  }

  @override
  Future<Either<String, MyStreamsResponse>> getMyStreams() {
    return executeAndHandleError<MyStreamsResponse>(() async {
      final res = await _apiServiceStream.getMyStreams();
      return res;
    });
  }

  @override
  Future<Either<String, bool>> updateStreamMedia({
    required int streamId,
    required String title,
    required String description,
    List<int>? thumbnailBytes,
    bool isPublic = true,
  }) {
    return executeAndHandleError<bool>(() async {
      final res = await _apiServiceStream.updateStreamMedia(
        streamId: streamId,
        title: title,
        description: description,
        thumbnailBytes: thumbnailBytes,
        isPublic: isPublic,
      );
      return res;
    });
  }

  @override
  Future<Either<String, bool>> createClipFromStream({
    required CreateClipFromStreamParams params,
  }) {
    return executeAndHandleError<bool>(() async {
      final res = await _apiServiceStream.createClipFromStream(
        streamId: params.streamId,
        duration: params.duration,
        name: params.name,
      );
      return res;
    });
  }
}
