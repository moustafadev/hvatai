import 'dart:convert';
import 'dart:math';

import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/home/data/model/live_stream_model.dart';

class ApiServiceHome extends ApiBase {
  ApiServiceHome();

  get http => null;
  Stream<List<String>> getInterestsCategories() {
    return Stream.periodic(const Duration(seconds: 5)).asyncMap((_) async {
      return await executeAndHandleErrorServer<List<String>>(() async {
        final response = await get(ServerConfig.interestsCategories);

        if (response.statusCode == 200) {
          return [];
        } else {
          throw Exception('Failed to load interests categories');
        }
      });
    });
  }

  Future<List<LiveStreamModel>> fetchLiveStreams() async {
    return executeAndHandleErrorServer<List<LiveStreamModel>>(() async {
      final response = await http.get(Uri.parse('livestreams'));
      if (response.statusCode == 200) {
        return [];
      } else {
        throw Exception('Failed to load livestreams');
      }
    });
  }

  Future<void> sendUnblockRequest(String channelId, String reason) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await http.post(
        Uri.parse('/livestreams/$channelId/unblock-request'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'reason': reason}),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to send unblock request');
      }
    });
  }

  Future<void> joinLiveStreamingWithPrefs(String channelId) async {
    return executeAndHandleErrorServer<void>(() async {
      final uid = 10000 + Random().nextInt(90000);

      final response = await http.get(Uri.parse('/livestreams/$channelId'));

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch livestream details');
      }

      final data = json.decode(response.body) as Map<String, dynamic>;
      final adminUid = data['adminUid'];

      if (adminUid == null) {
        throw Exception('adminUid not found in livestream data');
      }

      // // 2. التنقل إلى شاشة البث مع المعطيات المطلوبة
      // Get.to(() => LiveStreamingScreen(
      //   channelId: channelId,
      //   isAdmin: false,
      //   uid: uid,
      // ));
    });
  }
}
