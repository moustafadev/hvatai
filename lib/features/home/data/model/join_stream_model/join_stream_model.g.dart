// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_stream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinStreamResponseImpl _$$JoinStreamResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinStreamResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: JoinStreamData.fromJson(json['data'] as Map<String, dynamic>),
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
      stream: JoinStream.fromJson(json['stream'] as Map<String, dynamic>),
      room: json['room'] as String,
      token: json['token'] as String,
      livekitUrl: json['livekit_url'] as String,
      isPublisher: json['is_publisher'] as bool,
      isMine: json['is_mine'] as bool,
      recordUrl: json['record_url'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      gifUrl: json['gif_url'] as String?,
    );

Map<String, dynamic> _$$JoinStreamDataImplToJson(
        _$JoinStreamDataImpl instance) =>
    <String, dynamic>{
      'stream': instance.stream,
      'room': instance.room,
      'token': instance.token,
      'livekit_url': instance.livekitUrl,
      'is_publisher': instance.isPublisher,
      'is_mine': instance.isMine,
      'record_url': instance.recordUrl,
      'thumbnail_url': instance.thumbnailUrl,
      'gif_url': instance.gifUrl,
    };

_$JoinStreamImpl _$$JoinStreamImplFromJson(Map<String, dynamic> json) =>
    _$JoinStreamImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      channelName: json['channel_name'] as String,
      muxLiveStreamId: json['mux_live_stream_id'] as String?,
      muxPlaybackId: json['mux_playback_id'] as String?,
      muxStreamKey: json['mux_stream_key'] as String?,
      status: json['status'] as String,
      scheduledAt: json['scheduled_at'] as String?,
      startedAt: json['started_at'] as String,
      endedAt: json['ended_at'] as String?,
      isRecordingEnabled: json['is_recording_enabled'] as bool,
      recordingResourceId: json['recording_resource_id'] as String?,
      recordingSid: json['recording_sid'] as String?,
      recordingFiles: json['recording_files'],
      thumbnailUrl: json['thumbnail_url'] as String?,
      latestThumbnailUrl: json['latest_thumbnail_url'] as String?,
      latestGifUrl: json['latest_gif_url'] as String?,
      thumbnailHistory: json['thumbnail_history'] as List<dynamic>?,
      gifHistory: json['gif_history'] as List<dynamic>?,
      lastThumbnailGeneratedAt: json['last_thumbnail_generated_at'] as String?,
      lastGifGeneratedAt: json['last_gif_generated_at'] as String?,
      viewerCount: (json['viewer_count'] as num).toInt(),
      maxViewers: (json['max_viewers'] as num).toInt(),
      isPublic: json['is_public'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      autoDeleteAfterEnd: json['auto_delete_after_end'] as bool,
      autoDeleteHours: (json['auto_delete_hours'] as num).toInt(),
      saveRecording: json['save_recording'] as bool,
      enableComments: json['enable_comments'] as bool,
      enableBidding: json['enable_bidding'] as bool,
      minimumBidIncrement: json['minimum_bid_increment'] as String,
      streamSettings: json['stream_settings'] == null
          ? null
          : JoinStreamSettings.fromJson(
              json['stream_settings'] as Map<String, dynamic>),
      isMine: json['is_mine'] as bool,
      latestThumbnail: json['latest_thumbnail'] as String?,
      latestGif: json['latest_gif'] as String?,
      recordUrl: json['record_url'] as String?,
    );

Map<String, dynamic> _$$JoinStreamImplToJson(_$JoinStreamImpl instance) =>
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
      'scheduled_at': instance.scheduledAt,
      'started_at': instance.startedAt,
      'ended_at': instance.endedAt,
      'is_recording_enabled': instance.isRecordingEnabled,
      'recording_resource_id': instance.recordingResourceId,
      'recording_sid': instance.recordingSid,
      'recording_files': instance.recordingFiles,
      'thumbnail_url': instance.thumbnailUrl,
      'latest_thumbnail_url': instance.latestThumbnailUrl,
      'latest_gif_url': instance.latestGifUrl,
      'thumbnail_history': instance.thumbnailHistory,
      'gif_history': instance.gifHistory,
      'last_thumbnail_generated_at': instance.lastThumbnailGeneratedAt,
      'last_gif_generated_at': instance.lastGifGeneratedAt,
      'viewer_count': instance.viewerCount,
      'max_viewers': instance.maxViewers,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'auto_delete_after_end': instance.autoDeleteAfterEnd,
      'auto_delete_hours': instance.autoDeleteHours,
      'save_recording': instance.saveRecording,
      'enable_comments': instance.enableComments,
      'enable_bidding': instance.enableBidding,
      'minimum_bid_increment': instance.minimumBidIncrement,
      'stream_settings': instance.streamSettings,
      'is_mine': instance.isMine,
      'latest_thumbnail': instance.latestThumbnail,
      'latest_gif': instance.latestGif,
      'record_url': instance.recordUrl,
    };

_$JoinStreamSettingsImpl _$$JoinStreamSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinStreamSettingsImpl(
      livekit: json['livekit'] == null
          ? null
          : JoinLivekitStreamSettings.fromJson(
              json['livekit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JoinStreamSettingsImplToJson(
        _$JoinStreamSettingsImpl instance) =>
    <String, dynamic>{
      'livekit': instance.livekit,
    };

_$JoinLivekitStreamSettingsImpl _$$JoinLivekitStreamSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinLivekitStreamSettingsImpl(
      room: json['room'] as String,
      egress: json['egress'] == null
          ? null
          : JoinEgressInfo.fromJson(json['egress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JoinLivekitStreamSettingsImplToJson(
        _$JoinLivekitStreamSettingsImpl instance) =>
    <String, dynamic>{
      'room': instance.room,
      'egress': instance.egress,
    };

_$JoinEgressInfoImpl _$$JoinEgressInfoImplFromJson(Map<String, dynamic> json) =>
    _$JoinEgressInfoImpl(
      file: json['file'] == null
          ? null
          : JoinFileInfo.fromJson(json['file'] as Map<String, dynamic>),
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
          ?.map((e) => JoinFileResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageResults: json['image_results'] as List<dynamic>?,
      roomComposite: json['room_composite'] == null
          ? null
          : JoinRoomCompositeInfo.fromJson(
              json['room_composite'] as Map<String, dynamic>),
      streamResults: json['stream_results'] as List<dynamic>?,
      segmentResults: json['segment_results'] as List<dynamic>?,
      manifestLocation: json['manifest_location'] as String?,
      backupStorageUsed: json['backup_storage_used'] as bool?,
    );

Map<String, dynamic> _$$JoinEgressInfoImplToJson(
        _$JoinEgressInfoImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
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
    };

_$JoinFileInfoImpl _$$JoinFileInfoImplFromJson(Map<String, dynamic> json) =>
    _$JoinFileInfoImpl(
      size: json['size'] as String?,
      duration: json['duration'] as String?,
      endedAt: json['ended_at'] as String?,
      filename: json['filename'] as String?,
      location: json['location'] as String?,
      startedAt: json['started_at'] as String?,
    );

Map<String, dynamic> _$$JoinFileInfoImplToJson(_$JoinFileInfoImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'duration': instance.duration,
      'ended_at': instance.endedAt,
      'filename': instance.filename,
      'location': instance.location,
      'started_at': instance.startedAt,
    };

_$JoinFileResultImpl _$$JoinFileResultImplFromJson(Map<String, dynamic> json) =>
    _$JoinFileResultImpl(
      size: json['size'] as String?,
      duration: json['duration'] as String?,
      endedAt: json['ended_at'] as String?,
      filename: json['filename'] as String?,
      location: json['location'] as String?,
      startedAt: json['started_at'] as String?,
    );

Map<String, dynamic> _$$JoinFileResultImplToJson(
        _$JoinFileResultImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'duration': instance.duration,
      'ended_at': instance.endedAt,
      'filename': instance.filename,
      'location': instance.location,
      'started_at': instance.startedAt,
    };

_$JoinRoomCompositeInfoImpl _$$JoinRoomCompositeInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinRoomCompositeInfoImpl(
      file: json['file'] == null
          ? null
          : JoinRoomCompositeFile.fromJson(
              json['file'] as Map<String, dynamic>),
      layout: json['layout'] as String?,
      advanced: json['advanced'] == null
          ? null
          : JoinAdvanced.fromJson(json['advanced'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$JoinRoomCompositeInfoImplToJson(
        _$JoinRoomCompositeInfoImpl instance) =>
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

_$JoinRoomCompositeFileImpl _$$JoinRoomCompositeFileImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinRoomCompositeFileImpl(
      filepath: json['filepath'] as String?,
      fileType: json['file_type'] as String?,
      disableManifest: json['disable_manifest'] as bool?,
    );

Map<String, dynamic> _$$JoinRoomCompositeFileImplToJson(
        _$JoinRoomCompositeFileImpl instance) =>
    <String, dynamic>{
      'filepath': instance.filepath,
      'file_type': instance.fileType,
      'disable_manifest': instance.disableManifest,
    };

_$JoinAdvancedImpl _$$JoinAdvancedImplFromJson(Map<String, dynamic> json) =>
    _$JoinAdvancedImpl(
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

Map<String, dynamic> _$$JoinAdvancedImplToJson(_$JoinAdvancedImpl instance) =>
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
