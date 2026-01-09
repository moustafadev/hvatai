import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/activity/data/models/favorites_response/favorites_response.dart';
import 'package:hvatai/features/activity/data/models/user_bids_response/user_bids_response.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

class ApiServiceActivity extends ApiBase {
  Future<FavoritesResponse> getFavorites() async {
    return executeAndHandleErrorServer<FavoritesResponse>(() async {
      final response = await get(ServerConfig.favorites);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return FavoritesResponse.fromJson(response.json);
      } else {
        throw Exception('Failed to fetch favorites');
      }
    });
  }

  Future<MyStreamsResponse> getMyStreams() async {
    return executeAndHandleErrorServer<MyStreamsResponse>(() async {
      final response = await get(ServerConfig.myStreams);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return MyStreamsResponse.fromJson(response.json);
      } else {
        throw Exception('Failed to fetch my streams');
      }
    });
  }

  Future<UserBidsResponse> getUserBids() async {
    return executeAndHandleErrorServer<UserBidsResponse>(() async {
      final response = await get(ServerConfig.userBids);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserBidsResponse.fromJson(response.json);
      } else {
        throw Exception('Failed to fetch user bids');
      }
    });
  }
}
