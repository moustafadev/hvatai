// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer_joined_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewerJoinedEventImpl _$$ViewerJoinedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewerJoinedEventImpl(
      streamId: (json['stream_id'] as num?)?.toInt(),
      channelName: json['channel_name'] as String?,
      viewer: json['viewer'] == null
          ? null
          : Viewer.fromJson(json['viewer'] as Map<String, dynamic>),
      viewerCount: (json['viewer_count'] as num).toInt(),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$ViewerJoinedEventImplToJson(
        _$ViewerJoinedEventImpl instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'channel_name': instance.channelName,
      'viewer': instance.viewer,
      'viewer_count': instance.viewerCount,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

_$ViewerImpl _$$ViewerImplFromJson(Map<String, dynamic> json) => _$ViewerImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ViewerImplToJson(_$ViewerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
