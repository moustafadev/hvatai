// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_streams_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyStreamsResponseImpl _$$MyStreamsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyStreamsResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StreamDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : MyStreamsPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : MyStreamsStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyStreamsResponseImplToJson(
        _$MyStreamsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'pagination': instance.pagination,
      'stats': instance.stats,
    };

_$MyStreamsPaginationImpl _$$MyStreamsPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$MyStreamsPaginationImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyStreamsPaginationImplToJson(
        _$MyStreamsPaginationImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page': instance.lastPage,
    };

_$MyStreamsStatsImpl _$$MyStreamsStatsImplFromJson(Map<String, dynamic> json) =>
    _$MyStreamsStatsImpl(
      total: (json['total'] as num?)?.toInt(),
      live: (json['live'] as num?)?.toInt(),
      ended: (json['ended'] as num?)?.toInt(),
      scheduled: (json['scheduled'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyStreamsStatsImplToJson(
        _$MyStreamsStatsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'live': instance.live,
      'ended': instance.ended,
      'scheduled': instance.scheduled,
    };
