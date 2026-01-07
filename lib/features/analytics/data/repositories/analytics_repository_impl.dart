import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/analytics/data/datasources/api_service_analytics.dart';
import 'package:hvatai/features/analytics/data/models/statistics_model.dart';
import 'package:hvatai/features/analytics/domain/repositories/analytics_repository.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  AnalyticsRepositoryImpl(this._apiService);

  final ApiServiceAnalytics _apiService;

  @override
  Future<Either<String, StatisticsModel>> getStatistics({
    required String period,
    required String filter,
  }) async {
    return executeAndHandleError<StatisticsModel>(() async {
      return await _apiService.getStatistics(
        period: period,
        filter: filter,
      );
    });
  }
}
