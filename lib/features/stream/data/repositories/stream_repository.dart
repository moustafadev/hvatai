import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/bid_session/bid_session_response.dart';
import 'package:hvatai/features/stream/data/models/bid_stream/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/models/start_stream/start_stream_model.dart';
import 'package:hvatai/features/stream/data/models/stream_comment/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/stream_products/stream_products_response.dart';
import 'package:hvatai/features/stream/data/models/toggle_bidding/toggle_bidding_response.dart';
import 'package:hvatai/features/stream/data/models/subscribed_users/subscribed_users_response.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';
import 'package:hvatai/features/stream/domain/usecases/add_product_to_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_bid_session_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_products_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_bidding_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';

abstract class StreamRepository {
  Future<Either<String, StreamCommentResponse>> getComments({
    required GetStreamCommentsParams params,
  });

  Future<Either<String, StartStreamModel>> startStream({
    required int streamId,
  });

  Future<Either<String, StreamCommentModel>> sendComment({
    required SendStreamCommentParams params,
  });

  /// GET streams/{id}/bids
  Future<Either<String, BidStreamResponse>> getBids(
      {required GetStreamBidsParams params});

  /// POST streams/{streamId}/products/{productId}/bid
  /// body: { bid_amount: "..." }
  Future<Either<String, BidStreamItem>> addBid({
    required AddStreamBidParams params,
  });

  /// POST streams/{id}/leave
  Future<Either<String, bool>> leaveStream({required int streamId});

  /// POST streams/{id}/end
  Future<Either<String, bool>> endStream({required int streamId});

  /// POST streams/{streamId}/products
  /// body: { product_id: "...", starting_price: 99.99 }
  Future<Either<String, StreamProductModel>> addProductToStream({
    required AddProductToStreamParams params,
  });

  /// GET streams/{streamId}/products
  Future<Either<String, StreamProductsResponseModel>> getStreamProducts({
    required GetStreamProductsParams params,
  });

  /// GET streams/{streamId}/products/{streamProductId}/bid-session
  Future<Either<String, BidSessionResponse>> getBidSession({
    required GetBidSessionParams params,
  });

  /// POST streams/{streamId}/products/{streamProductId}/toggle-bidding
  /// body: { stream_product_id: 1, bid_amount: 150.00, notes: "..." }
  Future<Either<String, ToggleBiddingResponseModel>> toggleBidding({
    required ToggleBiddingParams params,
  });

  Future<Either<String, SubscribedUsersResponse>> getSubscribedUsers();

  Future<Either<String, bool>> toggleSubscription({
    required ToggleSubscriptionParams params,
  });

  Future<Either<String, MyStreamsResponse>> getMyStreams();
}
