// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_stream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinStreamResponseImpl _$$JoinStreamResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinStreamResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : JoinStreamData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JoinStreamResponseImplToJson(
        _$JoinStreamResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$JoinStreamDataImpl _$$JoinStreamDataImplFromJson(Map<String, dynamic> json) =>
    _$JoinStreamDataImpl(
      token: json['token'] as String?,
      rtmToken: json['rtm_token'] as String?,
      channelName: json['channel_name'] as String?,
      appId: json['app_id'] as String?,
      agoraAppId: json['agora_app_id'] as String?,
      agoraToken: json['agora_token'] as String?,
      agoraUid: (json['agora_uid'] as num?)?.toInt(),
      uid: (json['uid'] as num?)?.toInt(),
      isPublisher: _stringIntBoolToBool(json['is_publisher']),
      isMine: json['is_mine'] as bool?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$JoinStreamDataImplToJson(
        _$JoinStreamDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'rtm_token': instance.rtmToken,
      'channel_name': instance.channelName,
      'app_id': instance.appId,
      'agora_app_id': instance.agoraAppId,
      'agora_token': instance.agoraToken,
      'agora_uid': instance.agoraUid,
      'uid': instance.uid,
      'is_publisher': _boolToStringZeroOne(instance.isPublisher),
      'is_mine': instance.isMine,
      'expires_at': instance.expiresAt?.toIso8601String(),
    };
