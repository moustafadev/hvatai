import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/invite_friend/data/models/invite_code_response.dart';

class ApiServiceInviteFriend extends ApiBase {
  Future<InviteCodeResponse> getInviteCode() async {
    return executeAndHandleErrorServer<InviteCodeResponse>(() async {
      final response = await get(ServerConfig.inviteCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return InviteCodeResponse.fromJson(response.json);
      }

      throw Exception('Failed to load invite code');
    });
  }

  Future<void> applyInviteCode(String inviteCode) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await post(
        ServerConfig.applyInviteCode,
        body: {'invite_code': inviteCode},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw Exception('Failed to apply invite code');
    });
  }
}
