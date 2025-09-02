import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/bid_stream_response.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';

class ApiServiceStream extends ApiBase {
  /// GET: streams/{id}/comments?page=&per_page=
  Future<StreamCommentResponse> getComments(
      {required GetStreamCommentsParams params}) async {
    final path = ServerConfig.streamComments(params.streamId);

    final res = await get(
      path,
      queryParameters: {
        'page': '${params.page}',
        'per_page': '${params.perPage}',
      },
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      return StreamCommentResponse.fromJson(
        Map<String, dynamic>.from(res.json),
      );
    }

    throw Exception(
        'Failed to fetch stream comments (code: ${res.statusCode})');
  }

  /// POST: streams/{id}/comments
  /// body: { message: "..." }
  Future<StreamCommentModel> sendComment({
    required SendStreamCommentParams params,
  }) async {
    final path = ServerConfig.streamComments(params.streamId);

    final res = await post(
      path,
      body: {'message': params.message},
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      final root = Map<String, dynamic>.from(res.json);
      final data = Map<String, dynamic>.from(root['data'] ?? {});
      return StreamCommentModel.fromJson(data);
    }

    throw Exception('Failed to send comment (code: ${res.statusCode})');
  }

  /// GET: streams/{id}/bids?page=&per_page=
  Future<BidStreamResponse> getBids({
    required GetStreamBidsParams params,
  }) async {
    final path = ServerConfig.bidStream(params.streamId);

    final res = await get(
      path,
      queryParameters: {
        'page': '${params.page}',
        'per_page': '${params.perPage}',
      },
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      return BidStreamResponse.fromJson(
        res.json,
      );
    }

    throw Exception('Failed to fetch stream bids (code: ${res.statusCode})');
  }

  /// POST: streams/{streamId}/products/{productId}/bid
  /// body: { bid_amount: "..." }
  Future<BidStreamItem> addBid({
    required AddStreamBidParams addStreamBidParams,
  }) async {
    final path = ServerConfig.addBidStream(
        addStreamBidParams.streamId, addStreamBidParams.productId);

    final res = await post(
      path,
      body: {
        'stream_product_id': addStreamBidParams.productId,
        'bid_amount': addStreamBidParams.bidAmount,
      },
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      return BidStreamItem.fromJson(res.json['data']['bid']);
    }

    throw Exception('Failed to add bid (code: ${res.statusCode})');
  }

  /// POST: streams/{id}/leave
  Future<bool> leaveStream({required int streamId}) async {
    final path = ServerConfig.leaveStream(streamId);

    final res = await post(path);

    if (res.statusCode == 200 || res.statusCode == 201) {
      return true;
    }

    throw Exception('Failed to leave stream (code: ${res.statusCode})');
  }

  /// POST: streams/{id}/end
  Future<bool> endStream({required int streamId}) async {
    final path = ServerConfig.endStream(streamId);

    final res = await post(path);

    if (res.statusCode == 200 || res.statusCode == 201) {
      return true;
    }

    throw Exception('Failed to end stream (code: ${res.statusCode})');
  }
}
