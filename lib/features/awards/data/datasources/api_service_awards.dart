import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/awards/data/models/reward_payment_response/reward_payment_response.dart';

class ApiServiceAwards extends ApiBase {
  Future<RewardPaymentResponse> sendReward({
    required int userId,
    required Map<String, dynamic> body,
  }) async {
    return executeAndHandleErrorServer<RewardPaymentResponse>(() async {
      final response = await post(
        ServerConfig.sendReward(userId),
        body: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return RewardPaymentResponse.fromJson(
          Map<String, dynamic>.from(response.json),
        );
      }

      throw Exception('Failed to send reward');
    });
  }
}