// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_stream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartStreamModelImpl _$$StartStreamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StartStreamModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: StreamData.fromJson(json['data'] as Map<String, dynamic>),
      egress: Egress.fromJson(json['egress'] as Map<String, dynamic>),
      livekit: Livekit.fromJson(json['livekit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StartStreamModelImplToJson(
        _$StartStreamModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'egress': instance.egress,
      'livekit': instance.livekit,
    };

_$StreamDataImpl _$$StreamDataImplFromJson(Map<String, dynamic> json) =>
    _$StreamDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      channelName: json['channel_name'] as String,
      muxLiveStreamId: json['mux_live_stream_id'] as String,
      muxPlaybackId: json['mux_playback_id'] as String,
      muxStreamKey: json['mux_stream_key'] as String,
      livekitRoomName: json['livekit_room_name'] as String,
      livekitEgressId: json['livekit_egress_id'] as String,
      livekitServerUrl: json['livekit_server_url'] as String,
      livekitConfig: LivekitConfig.fromJson(
          json['livekit_config'] as Map<String, dynamic>),
      livekitRoomCreatedAt:
          DateTime.parse(json['livekit_room_created_at'] as String),
      livekitEgressStartedAt:
          DateTime.parse(json['livekit_egress_started_at'] as String),
      status: json['status'] as String,
      startedAt: DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      isRecordingEnabled: json['is_recording_enabled'] as bool,
      viewerCount: (json['viewer_count'] as num).toInt(),
      isPublic: json['is_public'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isMine: json['is_mine'] as bool,
    );

Map<String, dynamic> _$$StreamDataImplToJson(_$StreamDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'channel_name': instance.channelName,
      'mux_live_stream_id': instance.muxLiveStreamId,
      'mux_playback_id': instance.muxPlaybackId,
      'mux_stream_key': instance.muxStreamKey,
      'livekit_room_name': instance.livekitRoomName,
      'livekit_egress_id': instance.livekitEgressId,
      'livekit_server_url': instance.livekitServerUrl,
      'livekit_config': instance.livekitConfig,
      'livekit_room_created_at':
          instance.livekitRoomCreatedAt.toIso8601String(),
      'livekit_egress_started_at':
          instance.livekitEgressStartedAt.toIso8601String(),
      'status': instance.status,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'is_recording_enabled': instance.isRecordingEnabled,
      'viewer_count': instance.viewerCount,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_mine': instance.isMine,
    };

_$LivekitConfigImpl _$$LivekitConfigImplFromJson(Map<String, dynamic> json) =>
    _$LivekitConfigImpl(
      emptyTimeout: (json['empty_timeout'] as num).toInt(),
      videoQuality: json['video_quality'] as String,
      maxParticipants: (json['max_participants'] as num).toInt(),
    );

Map<String, dynamic> _$$LivekitConfigImplToJson(_$LivekitConfigImpl instance) =>
    <String, dynamic>{
      'empty_timeout': instance.emptyTimeout,
      'video_quality': instance.videoQuality,
      'max_participants': instance.maxParticipants,
    };

_$EgressImpl _$$EgressImplFromJson(Map<String, dynamic> json) => _$EgressImpl(
      egressId: json['egress_id'] as String,
      roomId: json['room_id'] as String,
      roomName: json['room_name'] as String,
      status: json['status'] as String,
      startedAt: json['started_at'] as String,
      roomComposite: RoomComposite.fromJson(
          json['room_composite'] as Map<String, dynamic>),
      streamResults: (json['stream_results'] as List<dynamic>)
          .map((e) => StreamResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EgressImplToJson(_$EgressImpl instance) =>
    <String, dynamic>{
      'egress_id': instance.egressId,
      'room_id': instance.roomId,
      'room_name': instance.roomName,
      'status': instance.status,
      'started_at': instance.startedAt,
      'room_composite': instance.roomComposite,
      'stream_results': instance.streamResults,
    };

_$RoomCompositeImpl _$$RoomCompositeImplFromJson(Map<String, dynamic> json) =>
    _$RoomCompositeImpl(
      roomName: json['room_name'] as String?,
      layout: json['layout'] as String?,
      preset: json['preset'] as String?,
      streamOutputs: (json['stream_outputs'] as List<dynamic>?)
          ?.map((e) => StreamOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomCompositeImplToJson(_$RoomCompositeImpl instance) =>
    <String, dynamic>{
      'room_name': instance.roomName,
      'layout': instance.layout,
      'preset': instance.preset,
      'stream_outputs': instance.streamOutputs,
    };

_$StreamOutputImpl _$$StreamOutputImplFromJson(Map<String, dynamic> json) =>
    _$StreamOutputImpl(
      protocol: json['protocol'] as String,
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$StreamOutputImplToJson(_$StreamOutputImpl instance) =>
    <String, dynamic>{
      'protocol': instance.protocol,
      'urls': instance.urls,
    };

_$StreamResultImpl _$$StreamResultImplFromJson(Map<String, dynamic> json) =>
    _$StreamResultImpl(
      url: json['url'] as String,
      status: json['status'] as String,
      error: json['error'] as String,
    );

Map<String, dynamic> _$$StreamResultImplToJson(_$StreamResultImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'status': instance.status,
      'error': instance.error,
    };

_$LivekitImpl _$$LivekitImplFromJson(Map<String, dynamic> json) =>
    _$LivekitImpl(
      token: json['token'] as String,
      roomName: json['room_name'] as String,
      serverUrl: json['server_url'] as String,
      permissions:
          Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      participantIdentity: json['participant_identity'] as String,
    );

Map<String, dynamic> _$$LivekitImplToJson(_$LivekitImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'room_name': instance.roomName,
      'server_url': instance.serverUrl,
      'permissions': instance.permissions,
      'participant_identity': instance.participantIdentity,
    };

_$PermissionsImpl _$$PermissionsImplFromJson(Map<String, dynamic> json) =>
    _$PermissionsImpl(
      canPublish: json['canPublish'] as bool,
      canSubscribe: json['canSubscribe'] as bool,
      canPublishData: json['canPublishData'] as bool,
      canUpdateOwnMetadata: json['canUpdateOwnMetadata'] as bool,
      roomJoin: json['roomJoin'] as bool,
      roomCreate: json['roomCreate'] as bool,
      roomAdmin: json['roomAdmin'] as bool? ?? false,
    );

Map<String, dynamic> _$$PermissionsImplToJson(_$PermissionsImpl instance) =>
    <String, dynamic>{
      'canPublish': instance.canPublish,
      'canSubscribe': instance.canSubscribe,
      'canPublishData': instance.canPublishData,
      'canUpdateOwnMetadata': instance.canUpdateOwnMetadata,
      'roomJoin': instance.roomJoin,
      'roomCreate': instance.roomCreate,
      'roomAdmin': instance.roomAdmin,
    };
