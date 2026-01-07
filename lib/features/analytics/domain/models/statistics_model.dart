import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_model.freezed.dart';

@freezed
class StatisticsModel with _$StatisticsModel {
  const factory StatisticsModel({
    required String period,
    required String filter,
    required String startDate,
    required String endDate,
    required StatisticsData statistics,
  }) = _StatisticsModel;
}

@freezed
class StatisticsData with _$StatisticsData {
  const factory StatisticsData({
    required StatisticItem revenue,
    required StatisticItem streams,
    required StatisticItem bids,
    required StatisticItem soldProducts,
  }) = _StatisticsData;
}

@freezed
class StatisticItem with _$StatisticItem {
  const factory StatisticItem({
    required String total,
    required List<StatisticDetail> details,
  }) = _StatisticItem;
}

@freezed
class StatisticDetail with _$StatisticDetail {
  const factory StatisticDetail({
    required String date,
    required int value,
  }) = _StatisticDetail;
}
