import 'dart:convert';

import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/get_live_streams_usecases.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class ApiServiceHome extends ApiBase {
  Future<StreamListResponseModel> getStreams({
    required GetStreamsParams getStreamsParams,
  }) async {
    return executeAndHandleErrorServer<StreamListResponseModel>(() async {
      final categories = getStreamsParams.categoryIds ?? [];

      // Send category_ids[] as repeated params like ?category_ids[]=1&category_ids[]=2
      final queryParameters = <String, dynamic>{
        if (getStreamsParams.status != null) 'status': getStreamsParams.status!,
        'page': getStreamsParams.page,
        'per_page': getStreamsParams.perPage,
        if (categories.isNotEmpty)
          'category_ids[]': categories.map((e) => e.toString()).toList(),
      };

      final response =
          await get(ServerConfig.streams, queryParameters: queryParameters);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = Map<String, dynamic>.from(response.json);
        return StreamListResponseModel.fromJson(json);
      } else {
        throw Exception('Failed to fetch streams');
      }
    });
  }

  Future<JoinStreamResponse> joinStream({required int streamId}) async {
    return executeAndHandleErrorServer<JoinStreamResponse>(() async {
      final response = await post(
        ServerConfig.joinStream(streamId), // <--- your endpoint
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return JoinStreamResponse.fromJson(
          Map<String, dynamic>.from(response.json),
        );
      } else {
        throw Exception('Failed to join stream');
      }
    });
  }

  Future<StreamListResponseModel> getLiveStreams(
      {required GetLiveStreamsParams getLiveStreamsParams}) {
    return getStreams(
        getStreamsParams: GetStreamsParams(
            status: 'live',
            page: getLiveStreamsParams.page,
            perPage: getLiveStreamsParams.perPage,
            categoryIds: getLiveStreamsParams.categoryIds));
  }

  Stream<LiveStreamEvent> watchLiveStreams() {
    return listenToServerSentEvents(
      ServerConfig.streams,
      queryParameters: const {
        'status': 'live',
      },
    ).where((event) => event.trim().isNotEmpty).map((event) {
      final dynamic decoded = jsonDecode(event);
      if (decoded is Map<String, dynamic>) {
        return LiveStreamEvent.fromJson(decoded);
      }
      throw const FormatException('Unexpected SSE payload shape');
    });
  }
}
