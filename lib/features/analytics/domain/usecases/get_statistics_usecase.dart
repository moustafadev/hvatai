import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/analytics/data/models/statistics_model.dart';
import 'package:hvatai/features/analytics/domain/repositories/analytics_repository.dart';

class GetStatisticsParams {
  final String period; // week, month, quarter, year
  final String filter; // all, streams

  const GetStatisticsParams({
    required this.period,
    required this.filter,
  });
}

class GetStatisticsUsecase
    implements UseCase<StatisticsModel, GetStatisticsParams> {
  const GetStatisticsUsecase(this._repository);

  final AnalyticsRepository _repository;

  @override
  Future<Either<String, StatisticsModel>> call(GetStatisticsParams params) {
    return _repository.getStatistics(
      period: params.period,
      filter: params.filter,
    );
  }
}

