import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'stream_response_model.freezed.dart';
part 'stream_response_model.g.dart';

@freezed
class StreamResponseModel with _$StreamResponseModel {
  const factory StreamResponseModel({
    bool? success,
    String? message,
    StreamDataModel? data,
  }) = _StreamResponseModel;

  factory StreamResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StreamResponseModelFromJson(json);
}


/// ========= Single stream (updated) =========
@freezed
class StreamDataModel with _$StreamDataModel {
  const factory StreamDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? title,
    String? description,
    @JsonKey(name: 'channel_name') String? channelName,
    @JsonKey(name: 'agora_app_id') String? agoraAppId,
    @JsonKey(name: 'agora_token') String? agoraToken,
    String? status,

    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt, // NEW

    @JsonKey(name: 'is_recording_enabled') bool? isRecordingEnabled,
    @JsonKey(name: 'recording_resource_id') String? recordingResourceId,
    @JsonKey(name: 'recording_sid') String? recordingSid,
    @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList,
    )
    List<String>? recordingFiles, // NEW (nullable list)

    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl, // NEW
    @JsonKey(name: 'viewer_count') int? viewerCount, // NEW
    @JsonKey(name: 'max_viewers') int? maxViewers, // NEW

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

    @JsonKey(name: 'stream_settings') Map<String, dynamic>? streamSettings, // NEW

    @JsonKey(name: 'agora_uid') int? agoraUid,
    @JsonKey(name: 'is_mine') bool? isMine,

    StreamUserModel? user,
    @JsonKey(name: 'stream_products') List<StreamProductModel>? streamProducts,
  }) = _StreamDataModel;

  factory StreamDataModel.fromJson(Map<String, dynamic> json) =>
      _$StreamDataModelFromJson(json);
}

/// ========= User =========
@freezed
class StreamUserModel with _$StreamUserModel {
  const factory StreamUserModel({
    int? id,
    String? name,
    String? email,
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
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'display_order') int? displayOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    ProductModel? product,
  }) = _StreamProductModel;

  factory StreamProductModel.fromJson(Map<String, dynamic> json) =>
      _$StreamProductModelFromJson(json);
}

/// ========= List response wrapper (NEW) =========
@freezed
class StreamListResponseModel with _$StreamListResponseModel {
  const factory StreamListResponseModel({
    bool? success,
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
