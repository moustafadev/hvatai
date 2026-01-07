import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_model.freezed.dart';
part 'statistics_model.g.dart';

@freezed
class StatisticsModel with _$StatisticsModel {
  const factory StatisticsModel({
    String? period,
    String? filter,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    StatisticsData? statistics,
  }) = _StatisticsModel;

  factory StatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticsModelFromJson(json);
}

@freezed
class StatisticsData with _$StatisticsData {
  const factory StatisticsData({
    StatisticItem? revenue,
    StatisticItem? streams,
    StatisticItem? bids,
    @JsonKey(name: 'sold_products') StatisticItem? soldProducts,
    StatisticItem? participants,
    @JsonKey(name: 'max_viewers') StatisticItem? maxViewers,
    @JsonKey(name: 'auction_winners') AuctionWinners? auctionWinners,
  }) = _StatisticsData;

  factory StatisticsData.fromJson(Map<String, dynamic> json) =>
      _$StatisticsDataFromJson(json);
}

@freezed
class StatisticItem with _$StatisticItem {
  const factory StatisticItem({
    String? total,
    List<StatisticDetail>? details,
  }) = _StatisticItem;

  factory StatisticItem.fromJson(Map<String, dynamic> json) =>
      _$StatisticItemFromJson(json);
}

@freezed
class StatisticDetail with _$StatisticDetail {
  const factory StatisticDetail({
    String? date,
    int? value,
  }) = _StatisticDetail;

  factory StatisticDetail.fromJson(Map<String, dynamic> json) =>
      _$StatisticDetailFromJson(json);
}

@freezed
class AuctionWinners with _$AuctionWinners {
  const factory AuctionWinners({
    @JsonKey(name: 'total_unique') String? totalUnique,
    @JsonKey(name: 'lots_won_total') String? lotsWonTotal,
    List<StatisticDetail>? details,
  }) = _AuctionWinners;

  factory AuctionWinners.fromJson(Map<String, dynamic> json) =>
      _$AuctionWinnersFromJson(json);
}
