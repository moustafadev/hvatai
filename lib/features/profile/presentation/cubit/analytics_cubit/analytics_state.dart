part of 'analytics_cubit.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState({
    @Default(0) int selectedTabIndex,
    @Default(0) int selectedCategoryIndex,
  }) = _AnalyticsState;
}
