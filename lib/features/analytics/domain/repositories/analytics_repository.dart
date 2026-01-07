import 'package:dartz/dartz.dart';
import 'package:hvatai/features/analytics/data/models/statistics_model.dart';

abstract class AnalyticsRepository {
  Future<Either<String, StatisticsModel>> getStatistics({
    required String period,
    required String filter,
  });
}
