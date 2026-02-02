// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/stream/data/models/toggle_bidding/toggle_bidding_response.dart';
part 'stream_response_model.freezed.dart';
part 'stream_response_model.g.dart';

@freezed
class StreamResponseModel with _$StreamResponseModel {
  const factory StreamResponseModel({
    bool? success,
    String? message,
    StreamDataModel? data,
    // Added to handle the top-level livekit object
    LivekitInfoModel? livekit,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'gif_url') String? gifUrl,
  }) = _StreamResponseModel;

  factory StreamResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StreamResponseModelFromJson(json);
}

/// ========= Single stream (updated for Mux and LiveKit) =========
@freezed
class StreamDataModel with _$StreamDataModel {
  const factory StreamDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? title,
    String? description,

    // Still present
    @JsonKey(name: 'channel_name') String? channelName,

    // --- Mux fields ---
    @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
    @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
    @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,

    // --- New LiveKit fields ---
    @JsonKey(name: 'livekit_room_name') String? livekitRoomName,
    @JsonKey(name: 'livekit_server_url') String? livekitServerUrl,
    @JsonKey(name: 'livekit_config') LivekitConfigModel? livekitConfig,
    @JsonKey(name: 'livekit_room_created_at') DateTime? livekitRoomCreatedAt,
    String? status,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'is_recording_enabled') bool? isRecordingEnabled,

    // Optional recording fields
    @JsonKey(name: 'recording_resource_id') String? recordingResourceId,
    @JsonKey(name: 'recording_sid') String? recordingSid,
    @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList,
    )
    List<String>? recordingFiles,

    // Optional/derived UI fields
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
    @JsonKey(name: 'latest_gif_url') String? latestGifUrl,
    @JsonKey(
      name: 'thumbnail_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList,
    )
    List<String>? thumbnailHistory,
    @JsonKey(
      name: 'gif_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList,
    )
    List<String>? gifHistory,
    @JsonKey(name: 'last_thumbnail_generated_at')
    DateTime? lastThumbnailGeneratedAt,
    @JsonKey(name: 'last_gif_generated_at') DateTime? lastGifGeneratedAt,
    @JsonKey(name: 'latest_thumbnail') String? latestThumbnail,
    @JsonKey(name: 'latest_gif') String? latestGif,
    @JsonKey(name: 'viewer_count') int? viewerCount,
    @JsonKey(name: 'max_viewers') int? maxViewers,
    @JsonKey(name: 'is_public') bool? isPublic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'auto_delete_after_end') bool? autoDeleteAfterEnd,
    @JsonKey(name: 'auto_delete_hours') int? autoDeleteHours,
    @JsonKey(name: 'save_recording') bool? saveRecording,
    @JsonKey(name: 'enable_comments') bool? enableComments,
    @JsonKey(name: 'enable_bidding') bool? enableBidding,
    @JsonKey(
      name: 'minimum_bid_increment',
      fromJson: _stringToDouble,
      toJson: _doubleToString,
    )
    double? minimumBidIncrement,
    @JsonKey(name: 'bid_duration_seconds') int? bidDurationSeconds,
    @JsonKey(name: 'stream_settings') StreamSettingsModel? streamSettings,
    @JsonKey(name: 'is_mine') bool? isMine,
    StreamUserModel? user,
    @JsonKey(name: 'stream_products') List<StreamProductModel>? streamProducts,
    @JsonKey(name: 'categories') List<StreamCategoryModel>? categories,
    @JsonKey(name: 'record_url') String? recordUrl,
  }) = _StreamDataModel;

  factory StreamDataModel.fromJson(Map<String, dynamic> json) =>
      _$StreamDataModelFromJson(json);
}

/// ========= LiveKit Config (New Model) =========
@freezed
class LivekitConfigModel with _$LivekitConfigModel {
  const factory LivekitConfigModel({
    @JsonKey(name: 'max_participants') int? maxParticipants,
    @JsonKey(name: 'empty_timeout') int? emptyTimeout,
    @JsonKey(name: 'video_quality') String? videoQuality,
  }) = _LivekitConfigModel;

  factory LivekitConfigModel.fromJson(Map<String, dynamic> json) =>
      _$LivekitConfigModelFromJson(json);
}

/// ========= LiveKit Info (New Model) =========
@freezed
class LivekitInfoModel with _$LivekitInfoModel {
  const factory LivekitInfoModel({
    @JsonKey(name: 'room_name') String? roomName,
    @JsonKey(name: 'server_url') String? serverUrl,
  }) = _LivekitInfoModel;

  factory LivekitInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LivekitInfoModelFromJson(json);
}

/// ========= User =========
@freezed
class StreamUserModel with _$StreamUserModel {
  const factory StreamUserModel({
    int? id,
    String? name,
    String? email,
    String? image,
    @JsonKey(name: 'personal_rating') double? personalRating,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
  }) = _StreamUserModel;

  factory StreamUserModel.fromJson(Map<String, dynamic> json) =>
      _$StreamUserModelFromJson(json);
}

/// ========= Product on stream =========
@freezed
class StreamProductModel with _$StreamProductModel {
  const factory StreamProductModel({
    int? id,
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'starting_price') String? startingPrice,
    @JsonKey(name: 'current_bid') String? currentBid,
    @JsonKey(name: 'bid_duration_seconds') int? bidDurationSeconds,
    @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'display_order') int? displayOrder,
    @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
    @JsonKey(name: 'bid_session') ToggleBiddingSessionModel? bidSession,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'product') StreamEmbeddedProductModel? product,
  }) = _StreamProductModel;

  factory StreamProductModel.fromJson(Map<String, dynamic> json) =>
      _$StreamProductModelFromJson(json);
}

@freezed
class StreamEmbeddedProductModel with _$StreamEmbeddedProductModel {
  const factory StreamEmbeddedProductModel({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'self_pickup') int? selfPickup,
    String? location,
    @JsonKey(
        name: 'latitude', fromJson: _stringToDouble, toJson: _doubleToString)
    double? latitude,
    @JsonKey(
        name: 'longitude', fromJson: _stringToDouble, toJson: _doubleToString)
    double? longitude,
  }) = _StreamEmbeddedProductModel;

  factory StreamEmbeddedProductModel.fromJson(Map<String, dynamic> json) =>
      _$StreamEmbeddedProductModelFromJson(json);
}

@freezed
class StreamCategoryModel with _$StreamCategoryModel {
  const factory StreamCategoryModel({
    int? id,
    String? name,
    @JsonKey(name: 'pivot') StreamCategoryPivotModel? pivot,
  }) = _StreamCategoryModel;

  factory StreamCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$StreamCategoryModelFromJson(json);
}

@freezed
class StreamCategoryPivotModel with _$StreamCategoryPivotModel {
  const factory StreamCategoryPivotModel({
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StreamCategoryPivotModel;

  factory StreamCategoryPivotModel.fromJson(Map<String, dynamic> json) =>
      _$StreamCategoryPivotModelFromJson(json);
}

/// ========= List response wrapper =========
@freezed
class StreamListResponseModel with _$StreamListResponseModel {
  const factory StreamListResponseModel({
    bool? success,
    String? message,
    List<StreamDataModel>? data,
    PaginationModel? pagination,
  }) = _StreamListResponseModel;

  factory StreamListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StreamListResponseModelFromJson(json);
}

/// ========= Pagination =========
@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @JsonKey(name: 'current_page') String? currentPage,
    @JsonKey(name: 'per_page') String? perPage,
    int? total,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

/// ========= Stream Settings =========
@freezed
class StreamSettingsModel with _$StreamSettingsModel {
  const factory StreamSettingsModel({
    LivekitSettingsModel? livekit,
  }) = _StreamSettingsModel;

  factory StreamSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$StreamSettingsModelFromJson(json);
}

/// ========= LiveKit Settings =========
@freezed
class LivekitSettingsModel with _$LivekitSettingsModel {
  const factory LivekitSettingsModel({
    String? room,
    EgressModel? egress,
  }) = _LivekitSettingsModel;

  factory LivekitSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$LivekitSettingsModelFromJson(json);
}

/// ========= Egress =========
@freezed
class EgressModel with _$EgressModel {
  const factory EgressModel({
    EgressFileModel? file,
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
    @JsonKey(name: 'file_results') List<EgressFileModel>? fileResults,
    @JsonKey(name: 'image_results') List<dynamic>? imageResults,
    @JsonKey(name: 'room_composite') RoomCompositeModel? roomComposite,
    @JsonKey(name: 'stream_results') List<dynamic>? streamResults,
    @JsonKey(name: 'segment_results') List<dynamic>? segmentResults,
    @JsonKey(name: 'manifest_location') String? manifestLocation,
    @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed,
  }) = _EgressModel;

  factory EgressModel.fromJson(Map<String, dynamic> json) =>
      _$EgressModelFromJson(json);
}

/// ========= Egress File =========
@freezed
class EgressFileModel with _$EgressFileModel {
  const factory EgressFileModel({
    String? size,
    String? duration,
    @JsonKey(name: 'ended_at') String? endedAt,
    String? filename,
    String? location,
    @JsonKey(name: 'started_at') String? startedAt,
  }) = _EgressFileModel;

  factory EgressFileModel.fromJson(Map<String, dynamic> json) =>
      _$EgressFileModelFromJson(json);
}

/// ========= Room Composite =========
@freezed
class RoomCompositeModel with _$RoomCompositeModel {
  const factory RoomCompositeModel({
    RoomCompositeFileModel? file,
    String? layout,
    RoomCompositeAdvancedModel? advanced,
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
  }) = _RoomCompositeModel;

  factory RoomCompositeModel.fromJson(Map<String, dynamic> json) =>
      _$RoomCompositeModelFromJson(json);
}

/// ========= Room Composite File =========
@freezed
class RoomCompositeFileModel with _$RoomCompositeFileModel {
  const factory RoomCompositeFileModel({
    String? filepath,
    @JsonKey(name: 'file_type') String? fileType,
    @JsonKey(name: 'disable_manifest') bool? disableManifest,
  }) = _RoomCompositeFileModel;

  factory RoomCompositeFileModel.fromJson(Map<String, dynamic> json) =>
      _$RoomCompositeFileModelFromJson(json);
}

/// ========= Room Composite Advanced =========
@freezed
class RoomCompositeAdvancedModel with _$RoomCompositeAdvancedModel {
  const factory RoomCompositeAdvancedModel({
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
  }) = _RoomCompositeAdvancedModel;

  factory RoomCompositeAdvancedModel.fromJson(Map<String, dynamic> json) =>
      _$RoomCompositeAdvancedModelFromJson(json);
}

// ===== Helpers =====
double? _stringToDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value);
  throw Exception("Invalid type for minimum_bid_increment: $value");
}

String? _doubleToString(double? value) => value?.toString();

List<String>? _stringListOrNull(dynamic v) {
  if (v == null) return null;
  if (v is List) {
    return v.whereType<String>().toList();
  }
  return null;
}

dynamic _nullOrStringList(List<String>? v) => v;
