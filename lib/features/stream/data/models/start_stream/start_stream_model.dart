// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_stream_model.freezed.dart';
part 'start_stream_model.g.dart';

// Main model for the entire response
@freezed
class StartStreamModel with _$StartStreamModel {
  const factory StartStreamModel({
    required bool success,
    required String message,
    required StreamData data,
    String? room,
    String? token,
    @JsonKey(name: 'livekit_url') String? livekitUrl,
    @JsonKey(name: 'is_publisher') bool? isPublisher,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'gif_url') String? gifUrl,
  }) = _StartStreamModel;

  factory StartStreamModel.fromJson(Map<String, dynamic> json) =>
      _$StartStreamModelFromJson(json);
}

// Model for the 'data' object
@freezed
class StreamData with _$StreamData {
  const factory StreamData({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    String? title,
    String? description,
    @JsonKey(name: 'channel_name') required String channelName,
    @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
    @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,
    @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
    required String status,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
    @JsonKey(name: 'started_at') required DateTime startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'is_recording_enabled') bool? isRecordingEnabled,
    @JsonKey(name: 'recording_resource_id') String? recordingResourceId,
    @JsonKey(name: 'recording_sid') String? recordingSid,
    @JsonKey(name: 'recording_files') String? recordingFiles,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
    @JsonKey(name: 'latest_gif_url') String? latestGifUrl,
    @JsonKey(name: 'thumbnail_history') List<dynamic>? thumbnailHistory,
    @JsonKey(name: 'gif_history') List<dynamic>? gifHistory,
    @JsonKey(name: 'last_thumbnail_generated_at')
    DateTime? lastThumbnailGeneratedAt,
    @JsonKey(name: 'last_gif_generated_at') DateTime? lastGifGeneratedAt,
    @JsonKey(name: 'viewer_count') int? viewerCount,
    @JsonKey(name: 'max_viewers') int? maxViewers,
    @JsonKey(name: 'is_public') bool? isPublic,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'auto_delete_after_end') bool? autoDeleteAfterEnd,
    @JsonKey(name: 'auto_delete_hours') int? autoDeleteHours,
    @JsonKey(name: 'save_recording') bool? saveRecording,
    @JsonKey(name: 'enable_comments') bool? enableComments,
    @JsonKey(name: 'enable_bidding') bool? enableBidding,
    @JsonKey(name: 'minimum_bid_increment') String? minimumBidIncrement,
    @JsonKey(name: 'stream_settings') StreamSettings? streamSettings,
    @JsonKey(name: 'record_url') String? recordUrl,
  }) = _StreamData;

  factory StreamData.fromJson(Map<String, dynamic> json) =>
      _$StreamDataFromJson(json);
}

// Model for the 'stream_settings' object
@freezed
class StreamSettings with _$StreamSettings {
  const factory StreamSettings({
    LivekitStreamSettings? livekit,
  }) = _StreamSettings;

  factory StreamSettings.fromJson(Map<String, dynamic> json) =>
      _$StreamSettingsFromJson(json);
}

// Model for the 'livekit' object within 'stream_settings'
@freezed
class LivekitStreamSettings with _$LivekitStreamSettings {
  const factory LivekitStreamSettings({
    String? room,
    EgressInfo? egress,
  }) = _LivekitStreamSettings;

  factory LivekitStreamSettings.fromJson(Map<String, dynamic> json) =>
      _$LivekitStreamSettingsFromJson(json);
}

// Model for the 'egress' object within livekit
@freezed
class EgressInfo with _$EgressInfo {
  const factory EgressInfo({
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
    @JsonKey(name: 'file_results') List<FileResult>? fileResults,
    @JsonKey(name: 'image_results') List<dynamic>? imageResults,
    @JsonKey(name: 'room_composite') RoomCompositeInfo? roomComposite,
    @JsonKey(name: 'stream_results') List<dynamic>? streamResults,
    @JsonKey(name: 'segment_results') List<dynamic>? segmentResults,
    @JsonKey(name: 'manifest_location') String? manifestLocation,
    @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed,
    FileInfo? file,
  }) = _EgressInfo;

  factory EgressInfo.fromJson(Map<String, dynamic> json) =>
      _$EgressInfoFromJson(json);
}

// Model for the 'file' object within egress
@freezed
class FileInfo with _$FileInfo {
  const factory FileInfo({
    String? size,
    String? duration,
    @JsonKey(name: 'ended_at') String? endedAt,
    String? filename,
    String? location,
    @JsonKey(name: 'started_at') String? startedAt,
  }) = _FileInfo;

  factory FileInfo.fromJson(Map<String, dynamic> json) =>
      _$FileInfoFromJson(json);
}

// Model for objects in the 'file_results' list
@freezed
class FileResult with _$FileResult {
  const factory FileResult({
    String? size,
    String? duration,
    @JsonKey(name: 'ended_at') String? endedAt,
    String? filename,
    String? location,
    @JsonKey(name: 'started_at') String? startedAt,
  }) = _FileResult;

  factory FileResult.fromJson(Map<String, dynamic> json) =>
      _$FileResultFromJson(json);
}

// Model for the 'room_composite' object within egress
@freezed
class RoomCompositeInfo with _$RoomCompositeInfo {
  const factory RoomCompositeInfo({
    RoomCompositeFile? file,
    String? layout,
    Advanced? advanced,
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
  }) = _RoomCompositeInfo;

  factory RoomCompositeInfo.fromJson(Map<String, dynamic> json) =>
      _$RoomCompositeInfoFromJson(json);
}

// Model for the 'file' object within room_composite
@freezed
class RoomCompositeFile with _$RoomCompositeFile {
  const factory RoomCompositeFile({
    String? filepath,
    @JsonKey(name: 'file_type') String? fileType,
    @JsonKey(name: 'disable_manifest') bool? disableManifest,
  }) = _RoomCompositeFile;

  factory RoomCompositeFile.fromJson(Map<String, dynamic> json) =>
      _$RoomCompositeFileFromJson(json);
}

// Model for the 'advanced' object within room_composite
@freezed
class Advanced with _$Advanced {
  const factory Advanced({
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
  }) = _Advanced;

  factory Advanced.fromJson(Map<String, dynamic> json) =>
      _$AdvancedFromJson(json);
}

// Model for the 'livekit' object
@freezed
class Livekit with _$Livekit {
  const factory Livekit({
    required String token,
    @JsonKey(name: 'room_name') required String roomName,
    @JsonKey(name: 'server_url') required String serverUrl,
    required Permissions permissions,
    @JsonKey(name: 'participant_identity') required String participantIdentity,
  }) = _Livekit;

  factory Livekit.fromJson(Map<String, dynamic> json) =>
      _$LivekitFromJson(json);
}

// Model for the 'permissions' object
@freezed
class Permissions with _$Permissions {
  const factory Permissions({
    required bool canPublish,
    required bool canSubscribe,
    required bool canPublishData,
    required bool canUpdateOwnMetadata,
    required bool roomJoin,
    required bool roomCreate,
    @Default(false)
    bool
        roomAdmin, // Defaulted as it's not in the provided JSON but is a common field
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}
