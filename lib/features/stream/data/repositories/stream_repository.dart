import 'package:dartz/dartz.dart';
import 'package:hvatai/features/stream/data/models/start_stream_model.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/bid_stream_response.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';

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
}
