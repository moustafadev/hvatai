// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsModelImpl _$$StatisticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsModelImpl(
      period: json['period'] as String?,
      filter: json['filter'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      statistics: json['statistics'] == null
          ? null
          : StatisticsData.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticsModelImplToJson(
        _$StatisticsModelImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'filter': instance.filter,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'statistics': instance.statistics,
    };

_$StatisticsDataImpl _$$StatisticsDataImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsDataImpl(
      revenue: json['revenue'] == null
          ? null
          : StatisticItem.fromJson(json['revenue'] as Map<String, dynamic>),
      streams: json['streams'] == null
          ? null
          : StatisticItem.fromJson(json['streams'] as Map<String, dynamic>),
      bids: json['bids'] == null
          ? null
          : StatisticItem.fromJson(json['bids'] as Map<String, dynamic>),
      soldProducts: json['sold_products'] == null
          ? null
          : StatisticItem.fromJson(
              json['sold_products'] as Map<String, dynamic>),
      participants: json['participants'] == null
          ? null
          : StatisticItem.fromJson(
              json['participants'] as Map<String, dynamic>),
      maxViewers: json['max_viewers'] == null
          ? null
          : StatisticItem.fromJson(json['max_viewers'] as Map<String, dynamic>),
      auctionWinners: json['auction_winners'] == null
          ? null
          : AuctionWinners.fromJson(
              json['auction_winners'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticsDataImplToJson(
        _$StatisticsDataImpl instance) =>
    <String, dynamic>{
      'revenue': instance.revenue,
      'streams': instance.streams,
      'bids': instance.bids,
      'sold_products': instance.soldProducts,
      'participants': instance.participants,
      'max_viewers': instance.maxViewers,
      'auction_winners': instance.auctionWinners,
    };

_$StatisticItemImpl _$$StatisticItemImplFromJson(Map<String, dynamic> json) =>
    _$StatisticItemImpl(
      total: json['total'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => StatisticDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StatisticItemImplToJson(_$StatisticItemImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'details': instance.details,
    };

_$StatisticDetailImpl _$$StatisticDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticDetailImpl(
      date: json['date'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StatisticDetailImplToJson(
        _$StatisticDetailImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };

_$AuctionWinnersImpl _$$AuctionWinnersImplFromJson(Map<String, dynamic> json) =>
    _$AuctionWinnersImpl(
      totalUnique: json['total_unique'] as String?,
      lotsWonTotal: json['lots_won_total'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => StatisticDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AuctionWinnersImplToJson(
        _$AuctionWinnersImpl instance) =>
    <String, dynamic>{
      'total_unique': instance.totalUnique,
      'lots_won_total': instance.lotsWonTotal,
      'details': instance.details,
    };
