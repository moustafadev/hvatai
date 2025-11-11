import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_stream_model.freezed.dart';
part 'join_stream_model.g.dart';

@freezed
class JoinStreamResponse with _$JoinStreamResponse {
  const factory JoinStreamResponse({
    required bool success,
    required String message,
    required JoinStreamData data,
  }) = _JoinStreamResponse;

  factory JoinStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinStreamResponseFromJson(json);
}

@freezed
class JoinStreamData with _$JoinStreamData {
  const factory JoinStreamData({
    required JoinStream stream,
    required String room,
    required String token,
    @JsonKey(name: 'livekit_url') required String livekitUrl,
    @JsonKey(name: 'is_publisher') required bool isPublisher,
    @JsonKey(name: 'is_mine') required bool isMine,
    @JsonKey(name: 'record_url') String? recordUrl,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'gif_url') String? gifUrl,
  }) = _JoinStreamData;

  factory JoinStreamData.fromJson(Map<String, dynamic> json) =>
      _$JoinStreamDataFromJson(json);
}

@freezed
class JoinStream with _$JoinStream {
  const factory JoinStream({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    String? title,
    String? description,
    @JsonKey(name: 'channel_name') required String channelName,
    @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
    @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,
    @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
    required String status,
    @JsonKey(name: 'scheduled_at') String? scheduledAt,
    @JsonKey(name: 'started_at') required String startedAt,
    @JsonKey(name: 'ended_at') String? endedAt,
    @JsonKey(name: 'is_recording_enabled') required bool isRecordingEnabled,
    @JsonKey(name: 'recording_resource_id') String? recordingResourceId,
    @JsonKey(name: 'recording_sid') String? recordingSid,
    @JsonKey(name: 'recording_files') dynamic recordingFiles,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
    @JsonKey(name: 'latest_gif_url') String? latestGifUrl,
    @JsonKey(name: 'thumbnail_history') List<dynamic>? thumbnailHistory,
    @JsonKey(name: 'gif_history') List<dynamic>? gifHistory,
    @JsonKey(name: 'last_thumbnail_generated_at')
    String? lastThumbnailGeneratedAt,
    @JsonKey(name: 'last_gif_generated_at') String? lastGifGeneratedAt,
    @JsonKey(name: 'viewer_count') required int viewerCount,
    @JsonKey(name: 'max_viewers') required int maxViewers,
    @JsonKey(name: 'is_public') required bool isPublic,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'auto_delete_after_end') required bool autoDeleteAfterEnd,
    @JsonKey(name: 'auto_delete_hours') required int autoDeleteHours,
    @JsonKey(name: 'save_recording') required bool saveRecording,
    @JsonKey(name: 'enable_comments') required bool enableComments,
    @JsonKey(name: 'enable_bidding') required bool enableBidding,
    @JsonKey(name: 'minimum_bid_increment') required String minimumBidIncrement,
    @JsonKey(name: 'stream_settings') JoinStreamSettings? streamSettings,
    @JsonKey(name: 'is_mine') required bool isMine,
    @JsonKey(name: 'latest_thumbnail') String? latestThumbnail,
    @JsonKey(name: 'latest_gif') String? latestGif,
    @JsonKey(name: 'record_url') String? recordUrl,
  }) = _JoinStream;

  factory JoinStream.fromJson(Map<String, dynamic> json) =>
      _$JoinStreamFromJson(json);
}

@freezed
class JoinStreamSettings with _$JoinStreamSettings {
  const factory JoinStreamSettings({
    JoinLivekitStreamSettings? livekit,
  }) = _JoinStreamSettings;

  factory JoinStreamSettings.fromJson(Map<String, dynamic> json) =>
      _$JoinStreamSettingsFromJson(json);
}

@freezed
class JoinLivekitStreamSettings with _$JoinLivekitStreamSettings {
  const factory JoinLivekitStreamSettings({
    required String room,
    JoinEgressInfo? egress,
  }) = _JoinLivekitStreamSettings;

  factory JoinLivekitStreamSettings.fromJson(Map<String, dynamic> json) =>
      _$JoinLivekitStreamSettingsFromJson(json);
}

@freezed
class JoinEgressInfo with _$JoinEgressInfo {
  const factory JoinEgressInfo({
    JoinFileInfo? file,
    String? error,
    String? status,
    String? details,
    @JsonKey(name: 'room_id') String? roomId,
    @JsonKey(name: 'ended_at') String? endedAt,
    @JsonKey(name: 'egress_id') String? egressId,
    @JsonKey(name: 'room_name') String? roomName,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'started_at') String? startedAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'source_type') String? sourceType,
    @JsonKey(name: 'file_results') List<JoinFileResult>? fileResults,
    @JsonKey(name: 'image_results') List<dynamic>? imageResults,
    @JsonKey(name: 'room_composite') JoinRoomCompositeInfo? roomComposite,
    @JsonKey(name: 'stream_results') List<dynamic>? streamResults,
    @JsonKey(name: 'segment_results') List<dynamic>? segmentResults,
    @JsonKey(name: 'manifest_location') String? manifestLocation,
    @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed,
  }) = _JoinEgressInfo;

  factory JoinEgressInfo.fromJson(Map<String, dynamic> json) =>
      _$JoinEgressInfoFromJson(json);
}

@freezed
class JoinFileInfo with _$JoinFileInfo {
  const factory JoinFileInfo({
    String? size,
    String? duration,
    @JsonKey(name: 'ended_at') String? endedAt,
    String? filename,
    String? location,
    @JsonKey(name: 'started_at') String? startedAt,
  }) = _JoinFileInfo;

  factory JoinFileInfo.fromJson(Map<String, dynamic> json) =>
      _$JoinFileInfoFromJson(json);
}

@freezed
class JoinFileResult with _$JoinFileResult {
  const factory JoinFileResult({
    String? size,
    String? duration,
    @JsonKey(name: 'ended_at') String? endedAt,
    String? filename,
    String? location,
    @JsonKey(name: 'started_at') String? startedAt,
  }) = _JoinFileResult;

  factory JoinFileResult.fromJson(Map<String, dynamic> json) =>
      _$JoinFileResultFromJson(json);
}

@freezed
class JoinRoomCompositeInfo with _$JoinRoomCompositeInfo {
  const factory JoinRoomCompositeInfo({
    JoinRoomCompositeFile? file,
    String? layout,
    JoinAdvanced? advanced,
    List<dynamic>? webhooks,
    @JsonKey(name: 'room_name') String? roomName,
    @JsonKey(name: 'audio_only') bool? audioOnly,
    @JsonKey(name: 'video_only') bool? videoOnly,
    @JsonKey(name: 'audio_mixing') String? audioMixing,
    @JsonKey(name: 'file_outputs') List<dynamic>? fileOutputs,
    @JsonKey(name: 'image_outputs') List<dynamic>? imageOutputs,
    @JsonKey(name: 'stream_outputs') List<dynamic>? streamOutputs,
    @JsonKey(name: 'custom_base_url') String? customBaseUrl,
    @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs,
  }) = _JoinRoomCompositeInfo;

  factory JoinRoomCompositeInfo.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomCompositeInfoFromJson(json);
}

@freezed
class JoinRoomCompositeFile with _$JoinRoomCompositeFile {
  const factory JoinRoomCompositeFile({
    String? filepath,
    @JsonKey(name: 'file_type') String? fileType,
    @JsonKey(name: 'disable_manifest') bool? disableManifest,
  }) = _JoinRoomCompositeFile;

  factory JoinRoomCompositeFile.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomCompositeFileFromJson(json);
}

@freezed
class JoinAdvanced with _$JoinAdvanced {
  const factory JoinAdvanced({
    int? depth,
    int? width,
    int? height,
    int? framerate,
    @JsonKey(name: 'audio_codec') String? audioCodec,
    @JsonKey(name: 'video_codec') String? videoCodec,
    @JsonKey(name: 'audio_bitrate') int? audioBitrate,
    @JsonKey(name: 'audio_quality') int? audioQuality,
    @JsonKey(name: 'video_bitrate') int? videoBitrate,
    @JsonKey(name: 'video_quality') int? videoQuality,
    @JsonKey(name: 'audio_frequency') int? audioFrequency,
    @JsonKey(name: 'key_frame_interval') int? keyFrameInterval,
  }) = _JoinAdvanced;

  factory JoinAdvanced.fromJson(Map<String, dynamic> json) =>
      _$JoinAdvancedFromJson(json);
}
