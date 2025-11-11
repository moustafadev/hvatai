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
      room: json['room'] as String?,
      token: json['token'] as String?,
      livekitUrl: json['livekit_url'] as String?,
      isPublisher: json['is_publisher'] as bool?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      gifUrl: json['gif_url'] as String?,
    );

Map<String, dynamic> _$$StartStreamModelImplToJson(
        _$StartStreamModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'room': instance.room,
      'token': instance.token,
      'livekit_url': instance.livekitUrl,
      'is_publisher': instance.isPublisher,
      'thumbnail_url': instance.thumbnailUrl,
      'gif_url': instance.gifUrl,
    };

_$StreamDataImpl _$$StreamDataImplFromJson(Map<String, dynamic> json) =>
    _$StreamDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      channelName: json['channel_name'] as String,
      muxLiveStreamId: json['mux_live_stream_id'] as String?,
      muxPlaybackId: json['mux_playback_id'] as String?,
      muxStreamKey: json['mux_stream_key'] as String?,
      status: json['status'] as String,
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      startedAt: DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      isRecordingEnabled: json['is_recording_enabled'] as bool?,
      recordingResourceId: json['recording_resource_id'] as String?,
      recordingSid: json['recording_sid'] as String?,
      recordingFiles: json['recording_files'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      latestThumbnailUrl: json['latest_thumbnail_url'] as String?,
      latestGifUrl: json['latest_gif_url'] as String?,
      thumbnailHistory: json['thumbnail_history'] as List<dynamic>?,
      gifHistory: json['gif_history'] as List<dynamic>?,
      lastThumbnailGeneratedAt: json['last_thumbnail_generated_at'] == null
          ? null
          : DateTime.parse(json['last_thumbnail_generated_at'] as String),
      lastGifGeneratedAt: json['last_gif_generated_at'] == null
          ? null
          : DateTime.parse(json['last_gif_generated_at'] as String),
      viewerCount: (json['viewer_count'] as num?)?.toInt(),
      maxViewers: (json['max_viewers'] as num?)?.toInt(),
      isPublic: json['is_public'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      autoDeleteAfterEnd: json['auto_delete_after_end'] as bool?,
      autoDeleteHours: (json['auto_delete_hours'] as num?)?.toInt(),
      saveRecording: json['save_recording'] as bool?,
      enableComments: json['enable_comments'] as bool?,
      enableBidding: json['enable_bidding'] as bool?,
      minimumBidIncrement: json['minimum_bid_increment'] as String?,
      streamSettings: json['stream_settings'] == null
          ? null
          : StreamSettings.fromJson(
              json['stream_settings'] as Map<String, dynamic>),
      recordUrl: json['record_url'] as String?,
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
      'status': instance.status,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'is_recording_enabled': instance.isRecordingEnabled,
      'recording_resource_id': instance.recordingResourceId,
      'recording_sid': instance.recordingSid,
      'recording_files': instance.recordingFiles,
      'thumbnail_url': instance.thumbnailUrl,
      'latest_thumbnail_url': instance.latestThumbnailUrl,
      'latest_gif_url': instance.latestGifUrl,
      'thumbnail_history': instance.thumbnailHistory,
      'gif_history': instance.gifHistory,
      'last_thumbnail_generated_at':
          instance.lastThumbnailGeneratedAt?.toIso8601String(),
      'last_gif_generated_at': instance.lastGifGeneratedAt?.toIso8601String(),
      'viewer_count': instance.viewerCount,
      'max_viewers': instance.maxViewers,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'auto_delete_after_end': instance.autoDeleteAfterEnd,
      'auto_delete_hours': instance.autoDeleteHours,
      'save_recording': instance.saveRecording,
      'enable_comments': instance.enableComments,
      'enable_bidding': instance.enableBidding,
      'minimum_bid_increment': instance.minimumBidIncrement,
      'stream_settings': instance.streamSettings,
      'record_url': instance.recordUrl,
    };

_$StreamSettingsImpl _$$StreamSettingsImplFromJson(Map<String, dynamic> json) =>
    _$StreamSettingsImpl(
      livekit: json['livekit'] == null
          ? null
          : LivekitStreamSettings.fromJson(
              json['livekit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamSettingsImplToJson(
        _$StreamSettingsImpl instance) =>
    <String, dynamic>{
      'livekit': instance.livekit,
    };

_$LivekitStreamSettingsImpl _$$LivekitStreamSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$LivekitStreamSettingsImpl(
      room: json['room'] as String?,
      egress: json['egress'] == null
          ? null
          : EgressInfo.fromJson(json['egress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LivekitStreamSettingsImplToJson(
        _$LivekitStreamSettingsImpl instance) =>
    <String, dynamic>{
      'room': instance.room,
      'egress': instance.egress,
    };

_$EgressInfoImpl _$$EgressInfoImplFromJson(Map<String, dynamic> json) =>
    _$EgressInfoImpl(
      error: json['error'] as String?,
      status: json['status'] as String?,
      details: json['details'] as String?,
      roomId: json['room_id'] as String?,
      endedAt: json['ended_at'] as String?,
      egressId: json['egress_id'] as String?,
      roomName: json['room_name'] as String?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      startedAt: json['started_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      sourceType: json['source_type'] as String?,
      fileResults: (json['file_results'] as List<dynamic>?)
          ?.map((e) => FileResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageResults: json['image_results'] as List<dynamic>?,
      roomComposite: json['room_composite'] == null
          ? null
          : RoomCompositeInfo.fromJson(
              json['room_composite'] as Map<String, dynamic>),
      streamResults: json['stream_results'] as List<dynamic>?,
      segmentResults: json['segment_results'] as List<dynamic>?,
      manifestLocation: json['manifest_location'] as String?,
      backupStorageUsed: json['backup_storage_used'] as bool?,
      file: json['file'] == null
          ? null
          : FileInfo.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EgressInfoImplToJson(_$EgressInfoImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'status': instance.status,
      'details': instance.details,
      'room_id': instance.roomId,
      'ended_at': instance.endedAt,
      'egress_id': instance.egressId,
      'room_name': instance.roomName,
      'error_code': instance.errorCode,
      'started_at': instance.startedAt,
      'updated_at': instance.updatedAt,
      'source_type': instance.sourceType,
      'file_results': instance.fileResults,
      'image_results': instance.imageResults,
      'room_composite': instance.roomComposite,
      'stream_results': instance.streamResults,
      'segment_results': instance.segmentResults,
      'manifest_location': instance.manifestLocation,
      'backup_storage_used': instance.backupStorageUsed,
      'file': instance.file,
    };

_$FileInfoImpl _$$FileInfoImplFromJson(Map<String, dynamic> json) =>
    _$FileInfoImpl(
      size: json['size'] as String?,
      duration: json['duration'] as String?,
      endedAt: json['ended_at'] as String?,
      filename: json['filename'] as String?,
      location: json['location'] as String?,
      startedAt: json['started_at'] as String?,
    );

Map<String, dynamic> _$$FileInfoImplToJson(_$FileInfoImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'duration': instance.duration,
      'ended_at': instance.endedAt,
      'filename': instance.filename,
      'location': instance.location,
      'started_at': instance.startedAt,
    };

_$FileResultImpl _$$FileResultImplFromJson(Map<String, dynamic> json) =>
    _$FileResultImpl(
      size: json['size'] as String?,
      duration: json['duration'] as String?,
      endedAt: json['ended_at'] as String?,
      filename: json['filename'] as String?,
      location: json['location'] as String?,
      startedAt: json['started_at'] as String?,
    );

Map<String, dynamic> _$$FileResultImplToJson(_$FileResultImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'duration': instance.duration,
      'ended_at': instance.endedAt,
      'filename': instance.filename,
      'location': instance.location,
      'started_at': instance.startedAt,
    };

_$RoomCompositeInfoImpl _$$RoomCompositeInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomCompositeInfoImpl(
      file: json['file'] == null
          ? null
          : RoomCompositeFile.fromJson(json['file'] as Map<String, dynamic>),
      layout: json['layout'] as String?,
      advanced: json['advanced'] == null
          ? null
          : Advanced.fromJson(json['advanced'] as Map<String, dynamic>),
      webhooks: json['webhooks'] as List<dynamic>?,
      roomName: json['room_name'] as String?,
      audioOnly: json['audio_only'] as bool?,
      videoOnly: json['video_only'] as bool?,
      audioMixing: json['audio_mixing'] as String?,
      fileOutputs: json['file_outputs'] as List<dynamic>?,
      imageOutputs: json['image_outputs'] as List<dynamic>?,
      streamOutputs: json['stream_outputs'] as List<dynamic>?,
      customBaseUrl: json['custom_base_url'] as String?,
      segmentOutputs: json['segment_outputs'] as List<dynamic>?,
    );

Map<String, dynamic> _$$RoomCompositeInfoImplToJson(
        _$RoomCompositeInfoImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'layout': instance.layout,
      'advanced': instance.advanced,
      'webhooks': instance.webhooks,
      'room_name': instance.roomName,
      'audio_only': instance.audioOnly,
      'video_only': instance.videoOnly,
      'audio_mixing': instance.audioMixing,
      'file_outputs': instance.fileOutputs,
      'image_outputs': instance.imageOutputs,
      'stream_outputs': instance.streamOutputs,
      'custom_base_url': instance.customBaseUrl,
      'segment_outputs': instance.segmentOutputs,
    };

_$RoomCompositeFileImpl _$$RoomCompositeFileImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomCompositeFileImpl(
      filepath: json['filepath'] as String?,
      fileType: json['file_type'] as String?,
      disableManifest: json['disable_manifest'] as bool?,
    );

Map<String, dynamic> _$$RoomCompositeFileImplToJson(
        _$RoomCompositeFileImpl instance) =>
    <String, dynamic>{
      'filepath': instance.filepath,
      'file_type': instance.fileType,
      'disable_manifest': instance.disableManifest,
    };

_$AdvancedImpl _$$AdvancedImplFromJson(Map<String, dynamic> json) =>
    _$AdvancedImpl(
      depth: (json['depth'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      framerate: (json['framerate'] as num?)?.toInt(),
      audioCodec: json['audio_codec'] as String?,
      videoCodec: json['video_codec'] as String?,
      audioBitrate: (json['audio_bitrate'] as num?)?.toInt(),
      audioQuality: (json['audio_quality'] as num?)?.toInt(),
      videoBitrate: (json['video_bitrate'] as num?)?.toInt(),
      videoQuality: (json['video_quality'] as num?)?.toInt(),
      audioFrequency: (json['audio_frequency'] as num?)?.toInt(),
      keyFrameInterval: (json['key_frame_interval'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AdvancedImplToJson(_$AdvancedImpl instance) =>
    <String, dynamic>{
      'depth': instance.depth,
      'width': instance.width,
      'height': instance.height,
      'framerate': instance.framerate,
      'audio_codec': instance.audioCodec,
      'video_codec': instance.videoCodec,
      'audio_bitrate': instance.audioBitrate,
      'audio_quality': instance.audioQuality,
      'video_bitrate': instance.videoBitrate,
      'video_quality': instance.videoQuality,
      'audio_frequency': instance.audioFrequency,
      'key_frame_interval': instance.keyFrameInterval,
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
