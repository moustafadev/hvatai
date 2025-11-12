// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStreamModelImpl _$$CreateStreamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStreamModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      isRecordingEnabled: json['is_recording_enabled'] as bool,
      isPublic: json['is_public'] as bool,
      enableComments: json['enable_comments'] as bool,
      enableBidding: json['enable_bidding'] as bool,
      minimumBidIncrement: (json['minimum_bid_increment'] as num).toDouble(),
      autoDeleteAfterEnd: json['auto_delete_after_end'] as bool,
      autoDeleteHours: (json['auto_delete_hours'] as num).toInt(),
      saveRecording: json['save_recording'] as bool,
      productIds: (json['product_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      categoryIds: (json['category_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      bidDurationSeconds: (json['bid_duration_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateStreamModelImplToJson(
        _$CreateStreamModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      if (instance.scheduledAt?.toIso8601String() case final value?)
        'scheduled_at': value,
      'is_recording_enabled': instance.isRecordingEnabled,
      'is_public': instance.isPublic,
      'enable_comments': instance.enableComments,
      'enable_bidding': instance.enableBidding,
      'minimum_bid_increment': instance.minimumBidIncrement,
      'auto_delete_after_end': instance.autoDeleteAfterEnd,
      'auto_delete_hours': instance.autoDeleteHours,
      'save_recording': instance.saveRecording,
      'product_ids': instance.productIds,
      'category_ids': instance.categoryIds,
      'bid_duration_seconds': instance.bidDurationSeconds,
    };
