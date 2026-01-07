import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/analytics/data/models/statistics_model.dart';
import 'package:hvatai/features/analytics/domain/usecases/get_statistics_usecase.dart';

part 'analytics_cubit.freezed.dart';
part 'analytics_state.dart';

class AnalyticsCubit extends Cubit<AnalyticsState> {
  AnalyticsCubit(this._getStatisticsUsecase) : super(const AnalyticsState()) {
    loadStatistics();
  }

  final GetStatisticsUsecase _getStatisticsUsecase;

  // Cache statistics by filter and period combination
  final Map<String, StatisticsModel> _statisticsCache = {};

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
    loadStatistics();
  }

  void changePeriod(int index) {
    emit(state.copyWith(selectedPeriodIndex: index));
    loadStatistics();
  }

  Future<void> loadStatistics() async {
    final period = _getPeriodString(state.selectedPeriodIndex);
    final filter = state.selectedTabIndex == 0 ? 'all' : 'streams';
    final cacheKey = '$filter-$period';

    // Check if we have cached data for this filter and period
    final cachedStatistics = _statisticsCache[cacheKey];

    if (cachedStatistics != null) {
      // Show cached data immediately without loading indicator
      // Don't fetch again - just use cached data
      emit(state.copyWith(
        statistics: cachedStatistics,
        isLoading: false,
        errorMessage: '',
      ));
      return; // Exit early, don't fetch
    }

    // No cached data, show loading indicator and fetch
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
    ));

    final result = await _getStatisticsUsecase(
      GetStatisticsParams(period: period, filter: filter),
    );

    result.fold(
      (error) {
        // Show error if fetch failed
        emit(state.copyWith(
          isLoading: false,
          errorMessage: error,
        ));
      },
      (statistics) {
        // Cache the new statistics
        _statisticsCache[cacheKey] = statistics;

        emit(state.copyWith(
          isLoading: false,
          statistics: statistics,
          errorMessage: '',
        ));
      },
    );
  }

  String _getPeriodString(int index) {
    switch (index) {
      case 0:
        return 'week';
      case 1:
        return 'month';
      case 2:
        return 'quarter';
      case 3:
        return 'year';
      default:
        return 'week';
    }
  }
}
