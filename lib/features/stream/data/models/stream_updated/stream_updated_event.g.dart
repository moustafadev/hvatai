// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_updated_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreamUpdatedEventImpl _$$StreamUpdatedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamUpdatedEventImpl(
      stream: StreamDataModel.fromJson(json['stream'] as Map<String, dynamic>),
      updateType: json['update_type'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$StreamUpdatedEventImplToJson(
        _$StreamUpdatedEventImpl instance) =>
    <String, dynamic>{
      'stream': instance.stream,
      'update_type': instance.updateType,
      'timestamp': instance.timestamp,
    };
