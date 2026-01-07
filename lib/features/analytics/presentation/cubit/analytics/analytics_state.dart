part of 'analytics_cubit.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState({
    @Default(0) int selectedTabIndex, // 0 = all, 1 = streams
    @Default(0)
    int selectedPeriodIndex, // 0 = week, 1 = month, 2 = quarter, 3 = year
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    StatisticsModel? statistics,
  }) = _AnalyticsState;
}
