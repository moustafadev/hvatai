import 'dart:convert';

import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class ApiServiceHome extends ApiBase {
  Future<StreamListResponseModel> getStreams({
    String? status, // e.g., 'live'
    int page = 1,
    int perPage = 15,
  }) async {
    return executeAndHandleErrorServer<StreamListResponseModel>(() async {
      final uri = Uri.parse(ServerConfig.streams).replace(
        queryParameters: {
          if (status != null) 'status': status,
          'page': '$page',
          'per_page': '$perPage',
        },
      );

      final response = await get(uri.toString());

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
      {int page = 1, int perPage = 15}) {
    return getStreams(status: 'live', page: page, perPage: perPage);
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
