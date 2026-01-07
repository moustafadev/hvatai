import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/analytics/data/models/statistics_model.dart';

class ApiServiceAnalytics extends ApiBase {
  Future<StatisticsModel> getStatistics({
    required String period,
    required String filter,
  }) async {
    return executeAndHandleErrorServer<StatisticsModel>(() async {
      final response = await get(
        ServerConfig.statistics,
        queryParameters: {
          'period': period.toLowerCase(),
          'filter': filter.toLowerCase(),
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return StatisticsModel.fromJson(response.json);
      }
      throw Exception('Failed to load statistics');
    });
  }
}
