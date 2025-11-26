import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
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
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_products_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';

class ApiServiceStream extends ApiBase {
  Future<StartStreamModel> startStream(int streamId) async {
    return executeAndHandleErrorServer<StartStreamModel>(() async {
      final response = await post(
        ServerConfig.startStream(streamId),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return StartStreamModel.fromJson(response.json);
      } else {
        throw Exception('Failed to create stream: ${response.statusCode}');
      }
    });
  }

  /// GET: streams/{id}/comments?page=&per_page=
  Future<StreamCommentResponse> getComments(
      {required GetStreamCommentsParams params}) async {
    return executeAndHandleErrorServer<StreamCommentResponse>(() async {
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
    });
  }

  /// POST: streams/{id}/comments
  /// body: { message: "..." }
  Future<StreamCommentModel> sendComment({
    required SendStreamCommentParams params,
  }) async {
    return executeAndHandleErrorServer<StreamCommentModel>(() async {
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
    });
  }

  /// GET: streams/{id}/bids?page=&per_page=
  Future<BidStreamResponse> getBids({
    required GetStreamBidsParams params,
  }) async {
    return executeAndHandleErrorServer<BidStreamResponse>(() async {
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
    });
  }

  /// POST: streams/{streamId}/products/{productId}/bid
  /// body: { bid_amount: "..." }
  Future<BidStreamItem> addBid({
    required AddStreamBidParams addStreamBidParams,
  }) async {
    return executeAndHandleErrorServer<BidStreamItem>(() async {
      final path = ServerConfig.addBidStream(
          addStreamBidParams.streamId, addStreamBidParams.streamProductId);

      final res = await post(
        path,
        body: {
          'stream_product_id': addStreamBidParams.streamProductId,
          'bid_amount': addStreamBidParams.bidAmount,
        },
      );
      if (res.statusCode == 200 || res.statusCode == 201) {
        return BidStreamItem.fromJson(res.json['data']['bid']);
      }

      throw Exception('Failed to add bid (code: ${res.statusCode})');
    });
  }

  /// POST: streams/{id}/leave
  Future<bool> leaveStream({required int streamId}) async {
    return executeAndHandleErrorServer<bool>(() async {
      final path = ServerConfig.leaveStream(streamId);

      final res = await post(path);

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      }

      throw Exception('Failed to leave stream (code: ${res.statusCode})');
    });
  }

  /// POST: streams/{id}/end
  Future<bool> endStream({required int streamId}) async {
    return executeAndHandleErrorServer<bool>(() async {
      final path = ServerConfig.endStream(streamId);

      final res = await post(path);

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      }

      throw Exception('Failed to end stream (code: ${res.statusCode})');
    });
  }

  /// POST: streams/{streamId}/products
  /// body: { product_id: "...", starting_price: 99.99 }
  Future<StreamProductModel> addProductToStream({
    required AddProductToStreamParams params,
  }) async {
    return executeAndHandleErrorServer<StreamProductModel>(() async {
      final path = ServerConfig.addProductToStream(params.streamId);

      final res = await post(
        path,
        body: {
          'product_id': params.productId,
          'starting_price': params.startingPrice,
        },
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        final root = Map<String, dynamic>.from(res.json);
        final data = Map<String, dynamic>.from(root['data'] ?? root);
        return StreamProductModel.fromJson(data);
      }

      throw Exception(
          'Failed to add product to stream (code: ${res.statusCode})');
    });
  }

  /// GET: streams/{streamId}/products
  Future<StreamProductsResponseModel> getStreamProducts({
    required GetStreamProductsParams params,
  }) async {
    return executeAndHandleErrorServer<StreamProductsResponseModel>(() async {
      final path = ServerConfig.getStreamProducts(params.streamId);

      final res = await get(path);

      if (res.statusCode == 200 || res.statusCode == 201) {
        return StreamProductsResponseModel.fromJson(
          Map<String, dynamic>.from(res.json),
        );
      }

      throw Exception(
        'Failed to get stream products (code: ${res.statusCode})',
      );
    });
  }

  Future<BidSessionResponse> getBidSession({
    required int streamId,
  }) async {
    return executeAndHandleErrorServer<BidSessionResponse>(() async {
      final path = ServerConfig.getBidSession(streamId);

      final res = await get(path);

      if (res.statusCode == 200 || res.statusCode == 201) {
        return BidSessionResponse.fromJson(
          Map<String, dynamic>.from(res.json),
        );
      }

      throw Exception(
        'Failed to get bid session (code: ${res.statusCode})',
      );
    });
  }

  /// POST: streams/{streamId}/products/{streamProductId}/toggle-bidding
  /// body: { stream_product_id: 1, bid_amount: 150.00, notes: "..." }
  Future<ToggleBiddingResponseModel> toggleBidding({
    required int streamId,
    required int streamProductId,
    required double bidAmount,
    String? notes,
  }) async {
    return executeAndHandleErrorServer<ToggleBiddingResponseModel>(() async {
      final path = ServerConfig.toggleBidding(streamId, streamProductId);

      final body = <String, dynamic>{
        'stream_product_id': streamProductId,
        'bid_amount': bidAmount,
        'bidding_enabled': true,
      };
      if (notes != null && notes.isNotEmpty) {
        body['notes'] = notes;
      }

      final res = await put(path, body: body);

      if (res.statusCode == 200 || res.statusCode == 201) {
        final root = Map<String, dynamic>.from(res.json);
        return ToggleBiddingResponseModel.fromJson(root);
      }

      throw Exception(
        'Failed to toggle bidding (code: ${res.statusCode})',
      );
    });
  }

  Future<SubscribedUsersResponse> getSubscribedUsers() async {
    return executeAndHandleErrorServer<SubscribedUsersResponse>(() async {
      final res = await get(ServerConfig.subscribedUsers);

      if (res.statusCode == 200 || res.statusCode == 201) {
        return SubscribedUsersResponse.fromJson(
          Map<String, dynamic>.from(res.json),
        );
      }

      throw Exception(
        'Failed to fetch subscribed users (code: ${res.statusCode})',
      );
    });
  }

  Future<bool> toggleSubscription({required int userId}) async {
    return executeAndHandleErrorServer<bool>(() async {
      final res = await post(ServerConfig.toggleSubscription(userId));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      }

      throw Exception(
        'Failed to toggle subscription (code: ${res.statusCode})',
      );
    });
  }

  Future<MyStreamsResponse> getMyStreams() async {
    return executeAndHandleErrorServer<MyStreamsResponse>(() async {
      final res = await get(ServerConfig.myStreams);

      if (res.statusCode == 200 || res.statusCode == 201) {
        return MyStreamsResponse.fromJson(res.json);
      }

      throw Exception(
        'Failed to fetch my streams (code: ${res.statusCode})',
      );
    });
  }
}
