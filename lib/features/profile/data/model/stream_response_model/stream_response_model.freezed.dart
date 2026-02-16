// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StreamResponseModel _$StreamResponseModelFromJson(Map<String, dynamic> json) {
  return _StreamResponseModel.fromJson(json);
}

/// @nodoc
mixin _$StreamResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  StreamDataModel? get data =>
      throw _privateConstructorUsedError; // Added to handle the top-level livekit object
  LivekitInfoModel? get livekit => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gif_url')
  String? get gifUrl => throw _privateConstructorUsedError;

  /// Serializes this StreamResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamResponseModelCopyWith<StreamResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamResponseModelCopyWith<$Res> {
  factory $StreamResponseModelCopyWith(
          StreamResponseModel value, $Res Function(StreamResponseModel) then) =
      _$StreamResponseModelCopyWithImpl<$Res, StreamResponseModel>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      StreamDataModel? data,
      LivekitInfoModel? livekit,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'gif_url') String? gifUrl});

  $StreamDataModelCopyWith<$Res>? get data;
  $LivekitInfoModelCopyWith<$Res>? get livekit;
}

/// @nodoc
class _$StreamResponseModelCopyWithImpl<$Res, $Val extends StreamResponseModel>
    implements $StreamResponseModelCopyWith<$Res> {
  _$StreamResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? livekit = freezed,
    Object? thumbnailUrl = freezed,
    Object? gifUrl = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamDataModel?,
      livekit: freezed == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as LivekitInfoModel?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gifUrl: freezed == gifUrl
          ? _value.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StreamDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivekitInfoModelCopyWith<$Res>? get livekit {
    if (_value.livekit == null) {
      return null;
    }

    return $LivekitInfoModelCopyWith<$Res>(_value.livekit!, (value) {
      return _then(_value.copyWith(livekit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamResponseModelImplCopyWith<$Res>
    implements $StreamResponseModelCopyWith<$Res> {
  factory _$$StreamResponseModelImplCopyWith(_$StreamResponseModelImpl value,
          $Res Function(_$StreamResponseModelImpl) then) =
      __$$StreamResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      StreamDataModel? data,
      LivekitInfoModel? livekit,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'gif_url') String? gifUrl});

  @override
  $StreamDataModelCopyWith<$Res>? get data;
  @override
  $LivekitInfoModelCopyWith<$Res>? get livekit;
}

/// @nodoc
class __$$StreamResponseModelImplCopyWithImpl<$Res>
    extends _$StreamResponseModelCopyWithImpl<$Res, _$StreamResponseModelImpl>
    implements _$$StreamResponseModelImplCopyWith<$Res> {
  __$$StreamResponseModelImplCopyWithImpl(_$StreamResponseModelImpl _value,
      $Res Function(_$StreamResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? livekit = freezed,
    Object? thumbnailUrl = freezed,
    Object? gifUrl = freezed,
  }) {
    return _then(_$StreamResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamDataModel?,
      livekit: freezed == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as LivekitInfoModel?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gifUrl: freezed == gifUrl
          ? _value.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamResponseModelImpl implements _StreamResponseModel {
  const _$StreamResponseModelImpl(
      {this.success,
      this.message,
      this.data,
      this.livekit,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'gif_url') this.gifUrl});

  factory _$StreamResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final StreamDataModel? data;
// Added to handle the top-level livekit object
  @override
  final LivekitInfoModel? livekit;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'gif_url')
  final String? gifUrl;

  @override
  String toString() {
    return 'StreamResponseModel(success: $success, message: $message, data: $data, livekit: $livekit, thumbnailUrl: $thumbnailUrl, gifUrl: $gifUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.livekit, livekit) || other.livekit == livekit) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.gifUrl, gifUrl) || other.gifUrl == gifUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, data, livekit, thumbnailUrl, gifUrl);

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamResponseModelImplCopyWith<_$StreamResponseModelImpl> get copyWith =>
      __$$StreamResponseModelImplCopyWithImpl<_$StreamResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamResponseModelImplToJson(
      this,
    );
  }
}

abstract class _StreamResponseModel implements StreamResponseModel {
  const factory _StreamResponseModel(
          {final bool? success,
          final String? message,
          final StreamDataModel? data,
          final LivekitInfoModel? livekit,
          @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
          @JsonKey(name: 'gif_url') final String? gifUrl}) =
      _$StreamResponseModelImpl;

  factory _StreamResponseModel.fromJson(Map<String, dynamic> json) =
      _$StreamResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  StreamDataModel? get data; // Added to handle the top-level livekit object
  @override
  LivekitInfoModel? get livekit;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'gif_url')
  String? get gifUrl;

  /// Create a copy of StreamResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamResponseModelImplCopyWith<_$StreamResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamDataModel _$StreamDataModelFromJson(Map<String, dynamic> json) {
  return _StreamDataModel.fromJson(json);
}

/// @nodoc
mixin _$StreamDataModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // Still present
  @JsonKey(name: 'channel_name')
  String? get channelName =>
      throw _privateConstructorUsedError; // --- Mux fields ---
  @JsonKey(name: 'mux_live_stream_id')
  String? get muxLiveStreamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_stream_key')
  String? get muxStreamKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_playback_id')
  String? get muxPlaybackId =>
      throw _privateConstructorUsedError; // --- New LiveKit fields ---
  @JsonKey(name: 'livekit_room_name')
  String? get livekitRoomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_server_url')
  String? get livekitServerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_config')
  LivekitConfigModel? get livekitConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_room_created_at')
  DateTime? get livekitRoomCreatedAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_recording_enabled')
  bool? get isRecordingEnabled =>
      throw _privateConstructorUsedError; // Optional recording fields
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_sid')
  String? get recordingSid => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get recordingFiles =>
      throw _privateConstructorUsedError; // Optional/derived UI fields
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_thumbnail_url')
  String? get latestThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_gif_url')
  String? get latestGifUrl => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'thumbnail_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get thumbnailHistory => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'gif_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get gifHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_thumbnail_generated_at')
  DateTime? get lastThumbnailGeneratedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_gif_generated_at')
  DateTime? get lastGifGeneratedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_thumbnail')
  String? get latestThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_gif')
  String? get latestGif => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int? get viewerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_viewers')
  int? get maxViewers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool? get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_delete_after_end')
  bool? get autoDeleteAfterEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_delete_hours')
  int? get autoDeleteHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'save_recording')
  bool? get saveRecording => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_comments')
  bool? get enableComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_bidding')
  bool? get enableBidding => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'minimum_bid_increment',
      fromJson: _stringToDouble,
      toJson: _doubleToString)
  double? get minimumBidIncrement => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_duration_seconds')
  int? get bidDurationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_settings')
  StreamSettingsModel? get streamSettings => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool? get isMine => throw _privateConstructorUsedError;
  StreamUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_products')
  List<StreamProductModel>? get streamProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<StreamCategoryModel>? get categories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'record_url')
  String? get recordUrl => throw _privateConstructorUsedError;

  /// Serializes this StreamDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamDataModelCopyWith<StreamDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamDataModelCopyWith<$Res> {
  factory $StreamDataModelCopyWith(
          StreamDataModel value, $Res Function(StreamDataModel) then) =
      _$StreamDataModelCopyWithImpl<$Res, StreamDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? title,
      String? description,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
      @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
      @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,
      @JsonKey(name: 'livekit_room_name') String? livekitRoomName,
      @JsonKey(name: 'livekit_server_url') String? livekitServerUrl,
      @JsonKey(name: 'livekit_config') LivekitConfigModel? livekitConfig,
      @JsonKey(name: 'livekit_room_created_at') DateTime? livekitRoomCreatedAt,
      String? status,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled') bool? isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') String? recordingResourceId,
      @JsonKey(name: 'recording_sid') String? recordingSid,
      @JsonKey(
          name: 'recording_files',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      List<String>? recordingFiles,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') String? latestGifUrl,
      @JsonKey(
          name: 'thumbnail_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      List<String>? thumbnailHistory,
      @JsonKey(
          name: 'gif_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      List<String>? gifHistory,
      @JsonKey(name: 'is_favorite') bool? isFavorited,
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
          toJson: _doubleToString)
      double? minimumBidIncrement,
      @JsonKey(name: 'bid_duration_seconds') int? bidDurationSeconds,
      @JsonKey(name: 'stream_settings') StreamSettingsModel? streamSettings,
      @JsonKey(name: 'is_mine') bool? isMine,
      StreamUserModel? user,
      @JsonKey(name: 'stream_products')
      List<StreamProductModel>? streamProducts,
      @JsonKey(name: 'categories') List<StreamCategoryModel>? categories,
      @JsonKey(name: 'record_url') String? recordUrl});

  $LivekitConfigModelCopyWith<$Res>? get livekitConfig;
  $StreamSettingsModelCopyWith<$Res>? get streamSettings;
  $StreamUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$StreamDataModelCopyWithImpl<$Res, $Val extends StreamDataModel>
    implements $StreamDataModelCopyWith<$Res> {
  _$StreamDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelName = freezed,
    Object? muxLiveStreamId = freezed,
    Object? muxStreamKey = freezed,
    Object? muxPlaybackId = freezed,
    Object? livekitRoomName = freezed,
    Object? livekitServerUrl = freezed,
    Object? livekitConfig = freezed,
    Object? livekitRoomCreatedAt = freezed,
    Object? status = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? isRecordingEnabled = freezed,
    Object? recordingResourceId = freezed,
    Object? recordingSid = freezed,
    Object? recordingFiles = freezed,
    Object? thumbnailUrl = freezed,
    Object? latestThumbnailUrl = freezed,
    Object? latestGifUrl = freezed,
    Object? thumbnailHistory = freezed,
    Object? gifHistory = freezed,
    Object? isFavorited = freezed,
    Object? lastThumbnailGeneratedAt = freezed,
    Object? lastGifGeneratedAt = freezed,
    Object? latestThumbnail = freezed,
    Object? latestGif = freezed,
    Object? viewerCount = freezed,
    Object? maxViewers = freezed,
    Object? isPublic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? autoDeleteAfterEnd = freezed,
    Object? autoDeleteHours = freezed,
    Object? saveRecording = freezed,
    Object? enableComments = freezed,
    Object? enableBidding = freezed,
    Object? minimumBidIncrement = freezed,
    Object? bidDurationSeconds = freezed,
    Object? streamSettings = freezed,
    Object? isMine = freezed,
    Object? user = freezed,
    Object? streamProducts = freezed,
    Object? categories = freezed,
    Object? recordUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      muxLiveStreamId: freezed == muxLiveStreamId
          ? _value.muxLiveStreamId
          : muxLiveStreamId // ignore: cast_nullable_to_non_nullable
              as String?,
      muxStreamKey: freezed == muxStreamKey
          ? _value.muxStreamKey
          : muxStreamKey // ignore: cast_nullable_to_non_nullable
              as String?,
      muxPlaybackId: freezed == muxPlaybackId
          ? _value.muxPlaybackId
          : muxPlaybackId // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitRoomName: freezed == livekitRoomName
          ? _value.livekitRoomName
          : livekitRoomName // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitServerUrl: freezed == livekitServerUrl
          ? _value.livekitServerUrl
          : livekitServerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitConfig: freezed == livekitConfig
          ? _value.livekitConfig
          : livekitConfig // ignore: cast_nullable_to_non_nullable
              as LivekitConfigModel?,
      livekitRoomCreatedAt: freezed == livekitRoomCreatedAt
          ? _value.livekitRoomCreatedAt
          : livekitRoomCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecordingEnabled: freezed == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingResourceId: freezed == recordingResourceId
          ? _value.recordingResourceId
          : recordingResourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingSid: freezed == recordingSid
          ? _value.recordingSid
          : recordingSid // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingFiles: freezed == recordingFiles
          ? _value.recordingFiles
          : recordingFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latestThumbnailUrl: freezed == latestThumbnailUrl
          ? _value.latestThumbnailUrl
          : latestThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGifUrl: freezed == latestGifUrl
          ? _value.latestGifUrl
          : latestGifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailHistory: freezed == thumbnailHistory
          ? _value.thumbnailHistory
          : thumbnailHistory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      gifHistory: freezed == gifHistory
          ? _value.gifHistory
          : gifHistory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastThumbnailGeneratedAt: freezed == lastThumbnailGeneratedAt
          ? _value.lastThumbnailGeneratedAt
          : lastThumbnailGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastGifGeneratedAt: freezed == lastGifGeneratedAt
          ? _value.lastGifGeneratedAt
          : lastGifGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latestThumbnail: freezed == latestThumbnail
          ? _value.latestThumbnail
          : latestThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGif: freezed == latestGif
          ? _value.latestGif
          : latestGif // ignore: cast_nullable_to_non_nullable
              as String?,
      viewerCount: freezed == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxViewers: freezed == maxViewers
          ? _value.maxViewers
          : maxViewers // ignore: cast_nullable_to_non_nullable
              as int?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      autoDeleteAfterEnd: freezed == autoDeleteAfterEnd
          ? _value.autoDeleteAfterEnd
          : autoDeleteAfterEnd // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoDeleteHours: freezed == autoDeleteHours
          ? _value.autoDeleteHours
          : autoDeleteHours // ignore: cast_nullable_to_non_nullable
              as int?,
      saveRecording: freezed == saveRecording
          ? _value.saveRecording
          : saveRecording // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableComments: freezed == enableComments
          ? _value.enableComments
          : enableComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableBidding: freezed == enableBidding
          ? _value.enableBidding
          : enableBidding // ignore: cast_nullable_to_non_nullable
              as bool?,
      minimumBidIncrement: freezed == minimumBidIncrement
          ? _value.minimumBidIncrement
          : minimumBidIncrement // ignore: cast_nullable_to_non_nullable
              as double?,
      bidDurationSeconds: freezed == bidDurationSeconds
          ? _value.bidDurationSeconds
          : bidDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as StreamSettingsModel?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StreamUserModel?,
      streamProducts: freezed == streamProducts
          ? _value.streamProducts
          : streamProducts // ignore: cast_nullable_to_non_nullable
              as List<StreamProductModel>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<StreamCategoryModel>?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivekitConfigModelCopyWith<$Res>? get livekitConfig {
    if (_value.livekitConfig == null) {
      return null;
    }

    return $LivekitConfigModelCopyWith<$Res>(_value.livekitConfig!, (value) {
      return _then(_value.copyWith(livekitConfig: value) as $Val);
    });
  }

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamSettingsModelCopyWith<$Res>? get streamSettings {
    if (_value.streamSettings == null) {
      return null;
    }

    return $StreamSettingsModelCopyWith<$Res>(_value.streamSettings!, (value) {
      return _then(_value.copyWith(streamSettings: value) as $Val);
    });
  }

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $StreamUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamDataModelImplCopyWith<$Res>
    implements $StreamDataModelCopyWith<$Res> {
  factory _$$StreamDataModelImplCopyWith(_$StreamDataModelImpl value,
          $Res Function(_$StreamDataModelImpl) then) =
      __$$StreamDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? title,
      String? description,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
      @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
      @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,
      @JsonKey(name: 'livekit_room_name') String? livekitRoomName,
      @JsonKey(name: 'livekit_server_url') String? livekitServerUrl,
      @JsonKey(name: 'livekit_config') LivekitConfigModel? livekitConfig,
      @JsonKey(name: 'livekit_room_created_at') DateTime? livekitRoomCreatedAt,
      String? status,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled') bool? isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') String? recordingResourceId,
      @JsonKey(name: 'recording_sid') String? recordingSid,
      @JsonKey(
          name: 'recording_files',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      List<String>? recordingFiles,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') String? latestGifUrl,
      @JsonKey(
          name: 'thumbnail_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      List<String>? thumbnailHistory,
      @JsonKey(
          name: 'gif_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      List<String>? gifHistory,
      @JsonKey(name: 'is_favorite') bool? isFavorited,
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
          toJson: _doubleToString)
      double? minimumBidIncrement,
      @JsonKey(name: 'bid_duration_seconds') int? bidDurationSeconds,
      @JsonKey(name: 'stream_settings') StreamSettingsModel? streamSettings,
      @JsonKey(name: 'is_mine') bool? isMine,
      StreamUserModel? user,
      @JsonKey(name: 'stream_products')
      List<StreamProductModel>? streamProducts,
      @JsonKey(name: 'categories') List<StreamCategoryModel>? categories,
      @JsonKey(name: 'record_url') String? recordUrl});

  @override
  $LivekitConfigModelCopyWith<$Res>? get livekitConfig;
  @override
  $StreamSettingsModelCopyWith<$Res>? get streamSettings;
  @override
  $StreamUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$StreamDataModelImplCopyWithImpl<$Res>
    extends _$StreamDataModelCopyWithImpl<$Res, _$StreamDataModelImpl>
    implements _$$StreamDataModelImplCopyWith<$Res> {
  __$$StreamDataModelImplCopyWithImpl(
      _$StreamDataModelImpl _value, $Res Function(_$StreamDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelName = freezed,
    Object? muxLiveStreamId = freezed,
    Object? muxStreamKey = freezed,
    Object? muxPlaybackId = freezed,
    Object? livekitRoomName = freezed,
    Object? livekitServerUrl = freezed,
    Object? livekitConfig = freezed,
    Object? livekitRoomCreatedAt = freezed,
    Object? status = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? isRecordingEnabled = freezed,
    Object? recordingResourceId = freezed,
    Object? recordingSid = freezed,
    Object? recordingFiles = freezed,
    Object? thumbnailUrl = freezed,
    Object? latestThumbnailUrl = freezed,
    Object? latestGifUrl = freezed,
    Object? thumbnailHistory = freezed,
    Object? gifHistory = freezed,
    Object? isFavorited = freezed,
    Object? lastThumbnailGeneratedAt = freezed,
    Object? lastGifGeneratedAt = freezed,
    Object? latestThumbnail = freezed,
    Object? latestGif = freezed,
    Object? viewerCount = freezed,
    Object? maxViewers = freezed,
    Object? isPublic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? autoDeleteAfterEnd = freezed,
    Object? autoDeleteHours = freezed,
    Object? saveRecording = freezed,
    Object? enableComments = freezed,
    Object? enableBidding = freezed,
    Object? minimumBidIncrement = freezed,
    Object? bidDurationSeconds = freezed,
    Object? streamSettings = freezed,
    Object? isMine = freezed,
    Object? user = freezed,
    Object? streamProducts = freezed,
    Object? categories = freezed,
    Object? recordUrl = freezed,
  }) {
    return _then(_$StreamDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      muxLiveStreamId: freezed == muxLiveStreamId
          ? _value.muxLiveStreamId
          : muxLiveStreamId // ignore: cast_nullable_to_non_nullable
              as String?,
      muxStreamKey: freezed == muxStreamKey
          ? _value.muxStreamKey
          : muxStreamKey // ignore: cast_nullable_to_non_nullable
              as String?,
      muxPlaybackId: freezed == muxPlaybackId
          ? _value.muxPlaybackId
          : muxPlaybackId // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitRoomName: freezed == livekitRoomName
          ? _value.livekitRoomName
          : livekitRoomName // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitServerUrl: freezed == livekitServerUrl
          ? _value.livekitServerUrl
          : livekitServerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitConfig: freezed == livekitConfig
          ? _value.livekitConfig
          : livekitConfig // ignore: cast_nullable_to_non_nullable
              as LivekitConfigModel?,
      livekitRoomCreatedAt: freezed == livekitRoomCreatedAt
          ? _value.livekitRoomCreatedAt
          : livekitRoomCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecordingEnabled: freezed == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingResourceId: freezed == recordingResourceId
          ? _value.recordingResourceId
          : recordingResourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingSid: freezed == recordingSid
          ? _value.recordingSid
          : recordingSid // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingFiles: freezed == recordingFiles
          ? _value._recordingFiles
          : recordingFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latestThumbnailUrl: freezed == latestThumbnailUrl
          ? _value.latestThumbnailUrl
          : latestThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGifUrl: freezed == latestGifUrl
          ? _value.latestGifUrl
          : latestGifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailHistory: freezed == thumbnailHistory
          ? _value._thumbnailHistory
          : thumbnailHistory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      gifHistory: freezed == gifHistory
          ? _value._gifHistory
          : gifHistory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastThumbnailGeneratedAt: freezed == lastThumbnailGeneratedAt
          ? _value.lastThumbnailGeneratedAt
          : lastThumbnailGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastGifGeneratedAt: freezed == lastGifGeneratedAt
          ? _value.lastGifGeneratedAt
          : lastGifGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latestThumbnail: freezed == latestThumbnail
          ? _value.latestThumbnail
          : latestThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGif: freezed == latestGif
          ? _value.latestGif
          : latestGif // ignore: cast_nullable_to_non_nullable
              as String?,
      viewerCount: freezed == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxViewers: freezed == maxViewers
          ? _value.maxViewers
          : maxViewers // ignore: cast_nullable_to_non_nullable
              as int?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      autoDeleteAfterEnd: freezed == autoDeleteAfterEnd
          ? _value.autoDeleteAfterEnd
          : autoDeleteAfterEnd // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoDeleteHours: freezed == autoDeleteHours
          ? _value.autoDeleteHours
          : autoDeleteHours // ignore: cast_nullable_to_non_nullable
              as int?,
      saveRecording: freezed == saveRecording
          ? _value.saveRecording
          : saveRecording // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableComments: freezed == enableComments
          ? _value.enableComments
          : enableComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableBidding: freezed == enableBidding
          ? _value.enableBidding
          : enableBidding // ignore: cast_nullable_to_non_nullable
              as bool?,
      minimumBidIncrement: freezed == minimumBidIncrement
          ? _value.minimumBidIncrement
          : minimumBidIncrement // ignore: cast_nullable_to_non_nullable
              as double?,
      bidDurationSeconds: freezed == bidDurationSeconds
          ? _value.bidDurationSeconds
          : bidDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as StreamSettingsModel?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StreamUserModel?,
      streamProducts: freezed == streamProducts
          ? _value._streamProducts
          : streamProducts // ignore: cast_nullable_to_non_nullable
              as List<StreamProductModel>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<StreamCategoryModel>?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamDataModelImpl implements _StreamDataModel {
  const _$StreamDataModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.title,
      this.description,
      @JsonKey(name: 'channel_name') this.channelName,
      @JsonKey(name: 'mux_live_stream_id') this.muxLiveStreamId,
      @JsonKey(name: 'mux_stream_key') this.muxStreamKey,
      @JsonKey(name: 'mux_playback_id') this.muxPlaybackId,
      @JsonKey(name: 'livekit_room_name') this.livekitRoomName,
      @JsonKey(name: 'livekit_server_url') this.livekitServerUrl,
      @JsonKey(name: 'livekit_config') this.livekitConfig,
      @JsonKey(name: 'livekit_room_created_at') this.livekitRoomCreatedAt,
      this.status,
      @JsonKey(name: 'scheduled_at') this.scheduledAt,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'is_recording_enabled') this.isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') this.recordingResourceId,
      @JsonKey(name: 'recording_sid') this.recordingSid,
      @JsonKey(
          name: 'recording_files',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      final List<String>? recordingFiles,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') this.latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') this.latestGifUrl,
      @JsonKey(
          name: 'thumbnail_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      final List<String>? thumbnailHistory,
      @JsonKey(
          name: 'gif_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      final List<String>? gifHistory,
      @JsonKey(name: 'is_favorite') this.isFavorited,
      @JsonKey(name: 'last_thumbnail_generated_at')
      this.lastThumbnailGeneratedAt,
      @JsonKey(name: 'last_gif_generated_at') this.lastGifGeneratedAt,
      @JsonKey(name: 'latest_thumbnail') this.latestThumbnail,
      @JsonKey(name: 'latest_gif') this.latestGif,
      @JsonKey(name: 'viewer_count') this.viewerCount,
      @JsonKey(name: 'max_viewers') this.maxViewers,
      @JsonKey(name: 'is_public') this.isPublic,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'auto_delete_after_end') this.autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') this.autoDeleteHours,
      @JsonKey(name: 'save_recording') this.saveRecording,
      @JsonKey(name: 'enable_comments') this.enableComments,
      @JsonKey(name: 'enable_bidding') this.enableBidding,
      @JsonKey(
          name: 'minimum_bid_increment',
          fromJson: _stringToDouble,
          toJson: _doubleToString)
      this.minimumBidIncrement,
      @JsonKey(name: 'bid_duration_seconds') this.bidDurationSeconds,
      @JsonKey(name: 'stream_settings') this.streamSettings,
      @JsonKey(name: 'is_mine') this.isMine,
      this.user,
      @JsonKey(name: 'stream_products')
      final List<StreamProductModel>? streamProducts,
      @JsonKey(name: 'categories') final List<StreamCategoryModel>? categories,
      @JsonKey(name: 'record_url') this.recordUrl})
      : _recordingFiles = recordingFiles,
        _thumbnailHistory = thumbnailHistory,
        _gifHistory = gifHistory,
        _streamProducts = streamProducts,
        _categories = categories;

  factory _$StreamDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? title;
  @override
  final String? description;
// Still present
  @override
  @JsonKey(name: 'channel_name')
  final String? channelName;
// --- Mux fields ---
  @override
  @JsonKey(name: 'mux_live_stream_id')
  final String? muxLiveStreamId;
  @override
  @JsonKey(name: 'mux_stream_key')
  final String? muxStreamKey;
  @override
  @JsonKey(name: 'mux_playback_id')
  final String? muxPlaybackId;
// --- New LiveKit fields ---
  @override
  @JsonKey(name: 'livekit_room_name')
  final String? livekitRoomName;
  @override
  @JsonKey(name: 'livekit_server_url')
  final String? livekitServerUrl;
  @override
  @JsonKey(name: 'livekit_config')
  final LivekitConfigModel? livekitConfig;
  @override
  @JsonKey(name: 'livekit_room_created_at')
  final DateTime? livekitRoomCreatedAt;
  @override
  final String? status;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  final bool? isRecordingEnabled;
// Optional recording fields
  @override
  @JsonKey(name: 'recording_resource_id')
  final String? recordingResourceId;
  @override
  @JsonKey(name: 'recording_sid')
  final String? recordingSid;
  final List<String>? _recordingFiles;
  @override
  @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get recordingFiles {
    final value = _recordingFiles;
    if (value == null) return null;
    if (_recordingFiles is EqualUnmodifiableListView) return _recordingFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Optional/derived UI fields
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'latest_thumbnail_url')
  final String? latestThumbnailUrl;
  @override
  @JsonKey(name: 'latest_gif_url')
  final String? latestGifUrl;
  final List<String>? _thumbnailHistory;
  @override
  @JsonKey(
      name: 'thumbnail_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get thumbnailHistory {
    final value = _thumbnailHistory;
    if (value == null) return null;
    if (_thumbnailHistory is EqualUnmodifiableListView)
      return _thumbnailHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _gifHistory;
  @override
  @JsonKey(
      name: 'gif_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get gifHistory {
    final value = _gifHistory;
    if (value == null) return null;
    if (_gifHistory is EqualUnmodifiableListView) return _gifHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_favorite')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'last_thumbnail_generated_at')
  final DateTime? lastThumbnailGeneratedAt;
  @override
  @JsonKey(name: 'last_gif_generated_at')
  final DateTime? lastGifGeneratedAt;
  @override
  @JsonKey(name: 'latest_thumbnail')
  final String? latestThumbnail;
  @override
  @JsonKey(name: 'latest_gif')
  final String? latestGif;
  @override
  @JsonKey(name: 'viewer_count')
  final int? viewerCount;
  @override
  @JsonKey(name: 'max_viewers')
  final int? maxViewers;
  @override
  @JsonKey(name: 'is_public')
  final bool? isPublic;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'auto_delete_after_end')
  final bool? autoDeleteAfterEnd;
  @override
  @JsonKey(name: 'auto_delete_hours')
  final int? autoDeleteHours;
  @override
  @JsonKey(name: 'save_recording')
  final bool? saveRecording;
  @override
  @JsonKey(name: 'enable_comments')
  final bool? enableComments;
  @override
  @JsonKey(name: 'enable_bidding')
  final bool? enableBidding;
  @override
  @JsonKey(
      name: 'minimum_bid_increment',
      fromJson: _stringToDouble,
      toJson: _doubleToString)
  final double? minimumBidIncrement;
  @override
  @JsonKey(name: 'bid_duration_seconds')
  final int? bidDurationSeconds;
  @override
  @JsonKey(name: 'stream_settings')
  final StreamSettingsModel? streamSettings;
  @override
  @JsonKey(name: 'is_mine')
  final bool? isMine;
  @override
  final StreamUserModel? user;
  final List<StreamProductModel>? _streamProducts;
  @override
  @JsonKey(name: 'stream_products')
  List<StreamProductModel>? get streamProducts {
    final value = _streamProducts;
    if (value == null) return null;
    if (_streamProducts is EqualUnmodifiableListView) return _streamProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StreamCategoryModel>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<StreamCategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'record_url')
  final String? recordUrl;

  @override
  String toString() {
    return 'StreamDataModel(id: $id, userId: $userId, title: $title, description: $description, channelName: $channelName, muxLiveStreamId: $muxLiveStreamId, muxStreamKey: $muxStreamKey, muxPlaybackId: $muxPlaybackId, livekitRoomName: $livekitRoomName, livekitServerUrl: $livekitServerUrl, livekitConfig: $livekitConfig, livekitRoomCreatedAt: $livekitRoomCreatedAt, status: $status, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, isRecordingEnabled: $isRecordingEnabled, recordingResourceId: $recordingResourceId, recordingSid: $recordingSid, recordingFiles: $recordingFiles, thumbnailUrl: $thumbnailUrl, latestThumbnailUrl: $latestThumbnailUrl, latestGifUrl: $latestGifUrl, thumbnailHistory: $thumbnailHistory, gifHistory: $gifHistory, isFavorited: $isFavorited, lastThumbnailGeneratedAt: $lastThumbnailGeneratedAt, lastGifGeneratedAt: $lastGifGeneratedAt, latestThumbnail: $latestThumbnail, latestGif: $latestGif, viewerCount: $viewerCount, maxViewers: $maxViewers, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt, autoDeleteAfterEnd: $autoDeleteAfterEnd, autoDeleteHours: $autoDeleteHours, saveRecording: $saveRecording, enableComments: $enableComments, enableBidding: $enableBidding, minimumBidIncrement: $minimumBidIncrement, bidDurationSeconds: $bidDurationSeconds, streamSettings: $streamSettings, isMine: $isMine, user: $user, streamProducts: $streamProducts, categories: $categories, recordUrl: $recordUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.muxLiveStreamId, muxLiveStreamId) ||
                other.muxLiveStreamId == muxLiveStreamId) &&
            (identical(other.muxStreamKey, muxStreamKey) ||
                other.muxStreamKey == muxStreamKey) &&
            (identical(other.muxPlaybackId, muxPlaybackId) ||
                other.muxPlaybackId == muxPlaybackId) &&
            (identical(other.livekitRoomName, livekitRoomName) ||
                other.livekitRoomName == livekitRoomName) &&
            (identical(other.livekitServerUrl, livekitServerUrl) ||
                other.livekitServerUrl == livekitServerUrl) &&
            (identical(other.livekitConfig, livekitConfig) ||
                other.livekitConfig == livekitConfig) &&
            (identical(other.livekitRoomCreatedAt, livekitRoomCreatedAt) ||
                other.livekitRoomCreatedAt == livekitRoomCreatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.isRecordingEnabled, isRecordingEnabled) ||
                other.isRecordingEnabled == isRecordingEnabled) &&
            (identical(other.recordingResourceId, recordingResourceId) ||
                other.recordingResourceId == recordingResourceId) &&
            (identical(other.recordingSid, recordingSid) ||
                other.recordingSid == recordingSid) &&
            const DeepCollectionEquality()
                .equals(other._recordingFiles, _recordingFiles) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.latestThumbnailUrl, latestThumbnailUrl) ||
                other.latestThumbnailUrl == latestThumbnailUrl) &&
            (identical(other.latestGifUrl, latestGifUrl) ||
                other.latestGifUrl == latestGifUrl) &&
            const DeepCollectionEquality()
                .equals(other._thumbnailHistory, _thumbnailHistory) &&
            const DeepCollectionEquality()
                .equals(other._gifHistory, _gifHistory) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.lastThumbnailGeneratedAt, lastThumbnailGeneratedAt) ||
                other.lastThumbnailGeneratedAt == lastThumbnailGeneratedAt) &&
            (identical(other.lastGifGeneratedAt, lastGifGeneratedAt) ||
                other.lastGifGeneratedAt == lastGifGeneratedAt) &&
            (identical(other.latestThumbnail, latestThumbnail) ||
                other.latestThumbnail == latestThumbnail) &&
            (identical(other.latestGif, latestGif) ||
                other.latestGif == latestGif) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.maxViewers, maxViewers) ||
                other.maxViewers == maxViewers) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.autoDeleteAfterEnd, autoDeleteAfterEnd) ||
                other.autoDeleteAfterEnd == autoDeleteAfterEnd) &&
            (identical(other.autoDeleteHours, autoDeleteHours) ||
                other.autoDeleteHours == autoDeleteHours) &&
            (identical(other.saveRecording, saveRecording) ||
                other.saveRecording == saveRecording) &&
            (identical(other.enableComments, enableComments) ||
                other.enableComments == enableComments) &&
            (identical(other.enableBidding, enableBidding) ||
                other.enableBidding == enableBidding) &&
            (identical(other.minimumBidIncrement, minimumBidIncrement) ||
                other.minimumBidIncrement == minimumBidIncrement) &&
            (identical(other.bidDurationSeconds, bidDurationSeconds) ||
                other.bidDurationSeconds == bidDurationSeconds) &&
            (identical(other.streamSettings, streamSettings) ||
                other.streamSettings == streamSettings) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._streamProducts, _streamProducts) &&
            const DeepCollectionEquality().equals(other._categories, _categories) &&
            (identical(other.recordUrl, recordUrl) || other.recordUrl == recordUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        title,
        description,
        channelName,
        muxLiveStreamId,
        muxStreamKey,
        muxPlaybackId,
        livekitRoomName,
        livekitServerUrl,
        livekitConfig,
        livekitRoomCreatedAt,
        status,
        scheduledAt,
        startedAt,
        endedAt,
        isRecordingEnabled,
        recordingResourceId,
        recordingSid,
        const DeepCollectionEquality().hash(_recordingFiles),
        thumbnailUrl,
        latestThumbnailUrl,
        latestGifUrl,
        const DeepCollectionEquality().hash(_thumbnailHistory),
        const DeepCollectionEquality().hash(_gifHistory),
        isFavorited,
        lastThumbnailGeneratedAt,
        lastGifGeneratedAt,
        latestThumbnail,
        latestGif,
        viewerCount,
        maxViewers,
        isPublic,
        createdAt,
        updatedAt,
        autoDeleteAfterEnd,
        autoDeleteHours,
        saveRecording,
        enableComments,
        enableBidding,
        minimumBidIncrement,
        bidDurationSeconds,
        streamSettings,
        isMine,
        user,
        const DeepCollectionEquality().hash(_streamProducts),
        const DeepCollectionEquality().hash(_categories),
        recordUrl
      ]);

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamDataModelImplCopyWith<_$StreamDataModelImpl> get copyWith =>
      __$$StreamDataModelImplCopyWithImpl<_$StreamDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamDataModelImplToJson(
      this,
    );
  }
}

abstract class _StreamDataModel implements StreamDataModel {
  const factory _StreamDataModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      final String? title,
      final String? description,
      @JsonKey(name: 'channel_name') final String? channelName,
      @JsonKey(name: 'mux_live_stream_id') final String? muxLiveStreamId,
      @JsonKey(name: 'mux_stream_key') final String? muxStreamKey,
      @JsonKey(name: 'mux_playback_id') final String? muxPlaybackId,
      @JsonKey(name: 'livekit_room_name') final String? livekitRoomName,
      @JsonKey(name: 'livekit_server_url') final String? livekitServerUrl,
      @JsonKey(name: 'livekit_config') final LivekitConfigModel? livekitConfig,
      @JsonKey(name: 'livekit_room_created_at')
      final DateTime? livekitRoomCreatedAt,
      final String? status,
      @JsonKey(name: 'scheduled_at') final DateTime? scheduledAt,
      @JsonKey(name: 'started_at') final DateTime? startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled') final bool? isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') final String? recordingResourceId,
      @JsonKey(name: 'recording_sid') final String? recordingSid,
      @JsonKey(
          name: 'recording_files',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      final List<String>? recordingFiles,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') final String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') final String? latestGifUrl,
      @JsonKey(
          name: 'thumbnail_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      final List<String>? thumbnailHistory,
      @JsonKey(
          name: 'gif_history',
          fromJson: _stringListOrNull,
          toJson: _nullOrStringList)
      final List<String>? gifHistory,
      @JsonKey(name: 'is_favorite') final bool? isFavorited,
      @JsonKey(name: 'last_thumbnail_generated_at')
      final DateTime? lastThumbnailGeneratedAt,
      @JsonKey(name: 'last_gif_generated_at')
      final DateTime? lastGifGeneratedAt,
      @JsonKey(name: 'latest_thumbnail') final String? latestThumbnail,
      @JsonKey(name: 'latest_gif') final String? latestGif,
      @JsonKey(name: 'viewer_count') final int? viewerCount,
      @JsonKey(name: 'max_viewers') final int? maxViewers,
      @JsonKey(name: 'is_public') final bool? isPublic,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'auto_delete_after_end') final bool? autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') final int? autoDeleteHours,
      @JsonKey(name: 'save_recording') final bool? saveRecording,
      @JsonKey(name: 'enable_comments') final bool? enableComments,
      @JsonKey(name: 'enable_bidding') final bool? enableBidding,
      @JsonKey(
          name: 'minimum_bid_increment',
          fromJson: _stringToDouble,
          toJson: _doubleToString)
      final double? minimumBidIncrement,
      @JsonKey(name: 'bid_duration_seconds') final int? bidDurationSeconds,
      @JsonKey(name: 'stream_settings')
      final StreamSettingsModel? streamSettings,
      @JsonKey(name: 'is_mine') final bool? isMine,
      final StreamUserModel? user,
      @JsonKey(name: 'stream_products')
      final List<StreamProductModel>? streamProducts,
      @JsonKey(name: 'categories') final List<StreamCategoryModel>? categories,
      @JsonKey(name: 'record_url')
      final String? recordUrl}) = _$StreamDataModelImpl;

  factory _StreamDataModel.fromJson(Map<String, dynamic> json) =
      _$StreamDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get title;
  @override
  String? get description; // Still present
  @override
  @JsonKey(name: 'channel_name')
  String? get channelName; // --- Mux fields ---
  @override
  @JsonKey(name: 'mux_live_stream_id')
  String? get muxLiveStreamId;
  @override
  @JsonKey(name: 'mux_stream_key')
  String? get muxStreamKey;
  @override
  @JsonKey(name: 'mux_playback_id')
  String? get muxPlaybackId; // --- New LiveKit fields ---
  @override
  @JsonKey(name: 'livekit_room_name')
  String? get livekitRoomName;
  @override
  @JsonKey(name: 'livekit_server_url')
  String? get livekitServerUrl;
  @override
  @JsonKey(name: 'livekit_config')
  LivekitConfigModel? get livekitConfig;
  @override
  @JsonKey(name: 'livekit_room_created_at')
  DateTime? get livekitRoomCreatedAt;
  @override
  String? get status;
  @override
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  bool? get isRecordingEnabled; // Optional recording fields
  @override
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId;
  @override
  @JsonKey(name: 'recording_sid')
  String? get recordingSid;
  @override
  @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get recordingFiles; // Optional/derived UI fields
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'latest_thumbnail_url')
  String? get latestThumbnailUrl;
  @override
  @JsonKey(name: 'latest_gif_url')
  String? get latestGifUrl;
  @override
  @JsonKey(
      name: 'thumbnail_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get thumbnailHistory;
  @override
  @JsonKey(
      name: 'gif_history',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get gifHistory;
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'last_thumbnail_generated_at')
  DateTime? get lastThumbnailGeneratedAt;
  @override
  @JsonKey(name: 'last_gif_generated_at')
  DateTime? get lastGifGeneratedAt;
  @override
  @JsonKey(name: 'latest_thumbnail')
  String? get latestThumbnail;
  @override
  @JsonKey(name: 'latest_gif')
  String? get latestGif;
  @override
  @JsonKey(name: 'viewer_count')
  int? get viewerCount;
  @override
  @JsonKey(name: 'max_viewers')
  int? get maxViewers;
  @override
  @JsonKey(name: 'is_public')
  bool? get isPublic;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'auto_delete_after_end')
  bool? get autoDeleteAfterEnd;
  @override
  @JsonKey(name: 'auto_delete_hours')
  int? get autoDeleteHours;
  @override
  @JsonKey(name: 'save_recording')
  bool? get saveRecording;
  @override
  @JsonKey(name: 'enable_comments')
  bool? get enableComments;
  @override
  @JsonKey(name: 'enable_bidding')
  bool? get enableBidding;
  @override
  @JsonKey(
      name: 'minimum_bid_increment',
      fromJson: _stringToDouble,
      toJson: _doubleToString)
  double? get minimumBidIncrement;
  @override
  @JsonKey(name: 'bid_duration_seconds')
  int? get bidDurationSeconds;
  @override
  @JsonKey(name: 'stream_settings')
  StreamSettingsModel? get streamSettings;
  @override
  @JsonKey(name: 'is_mine')
  bool? get isMine;
  @override
  StreamUserModel? get user;
  @override
  @JsonKey(name: 'stream_products')
  List<StreamProductModel>? get streamProducts;
  @override
  @JsonKey(name: 'categories')
  List<StreamCategoryModel>? get categories;
  @override
  @JsonKey(name: 'record_url')
  String? get recordUrl;

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamDataModelImplCopyWith<_$StreamDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivekitConfigModel _$LivekitConfigModelFromJson(Map<String, dynamic> json) {
  return _LivekitConfigModel.fromJson(json);
}

/// @nodoc
mixin _$LivekitConfigModel {
  @JsonKey(name: 'max_participants')
  int? get maxParticipants => throw _privateConstructorUsedError;
  @JsonKey(name: 'empty_timeout')
  int? get emptyTimeout => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_quality')
  String? get videoQuality => throw _privateConstructorUsedError;

  /// Serializes this LivekitConfigModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LivekitConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LivekitConfigModelCopyWith<LivekitConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivekitConfigModelCopyWith<$Res> {
  factory $LivekitConfigModelCopyWith(
          LivekitConfigModel value, $Res Function(LivekitConfigModel) then) =
      _$LivekitConfigModelCopyWithImpl<$Res, LivekitConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'max_participants') int? maxParticipants,
      @JsonKey(name: 'empty_timeout') int? emptyTimeout,
      @JsonKey(name: 'video_quality') String? videoQuality});
}

/// @nodoc
class _$LivekitConfigModelCopyWithImpl<$Res, $Val extends LivekitConfigModel>
    implements $LivekitConfigModelCopyWith<$Res> {
  _$LivekitConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivekitConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxParticipants = freezed,
    Object? emptyTimeout = freezed,
    Object? videoQuality = freezed,
  }) {
    return _then(_value.copyWith(
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      emptyTimeout: freezed == emptyTimeout
          ? _value.emptyTimeout
          : emptyTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      videoQuality: freezed == videoQuality
          ? _value.videoQuality
          : videoQuality // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivekitConfigModelImplCopyWith<$Res>
    implements $LivekitConfigModelCopyWith<$Res> {
  factory _$$LivekitConfigModelImplCopyWith(_$LivekitConfigModelImpl value,
          $Res Function(_$LivekitConfigModelImpl) then) =
      __$$LivekitConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'max_participants') int? maxParticipants,
      @JsonKey(name: 'empty_timeout') int? emptyTimeout,
      @JsonKey(name: 'video_quality') String? videoQuality});
}

/// @nodoc
class __$$LivekitConfigModelImplCopyWithImpl<$Res>
    extends _$LivekitConfigModelCopyWithImpl<$Res, _$LivekitConfigModelImpl>
    implements _$$LivekitConfigModelImplCopyWith<$Res> {
  __$$LivekitConfigModelImplCopyWithImpl(_$LivekitConfigModelImpl _value,
      $Res Function(_$LivekitConfigModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivekitConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxParticipants = freezed,
    Object? emptyTimeout = freezed,
    Object? videoQuality = freezed,
  }) {
    return _then(_$LivekitConfigModelImpl(
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      emptyTimeout: freezed == emptyTimeout
          ? _value.emptyTimeout
          : emptyTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      videoQuality: freezed == videoQuality
          ? _value.videoQuality
          : videoQuality // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivekitConfigModelImpl implements _LivekitConfigModel {
  const _$LivekitConfigModelImpl(
      {@JsonKey(name: 'max_participants') this.maxParticipants,
      @JsonKey(name: 'empty_timeout') this.emptyTimeout,
      @JsonKey(name: 'video_quality') this.videoQuality});

  factory _$LivekitConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivekitConfigModelImplFromJson(json);

  @override
  @JsonKey(name: 'max_participants')
  final int? maxParticipants;
  @override
  @JsonKey(name: 'empty_timeout')
  final int? emptyTimeout;
  @override
  @JsonKey(name: 'video_quality')
  final String? videoQuality;

  @override
  String toString() {
    return 'LivekitConfigModel(maxParticipants: $maxParticipants, emptyTimeout: $emptyTimeout, videoQuality: $videoQuality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivekitConfigModelImpl &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.emptyTimeout, emptyTimeout) ||
                other.emptyTimeout == emptyTimeout) &&
            (identical(other.videoQuality, videoQuality) ||
                other.videoQuality == videoQuality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxParticipants, emptyTimeout, videoQuality);

  /// Create a copy of LivekitConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivekitConfigModelImplCopyWith<_$LivekitConfigModelImpl> get copyWith =>
      __$$LivekitConfigModelImplCopyWithImpl<_$LivekitConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivekitConfigModelImplToJson(
      this,
    );
  }
}

abstract class _LivekitConfigModel implements LivekitConfigModel {
  const factory _LivekitConfigModel(
          {@JsonKey(name: 'max_participants') final int? maxParticipants,
          @JsonKey(name: 'empty_timeout') final int? emptyTimeout,
          @JsonKey(name: 'video_quality') final String? videoQuality}) =
      _$LivekitConfigModelImpl;

  factory _LivekitConfigModel.fromJson(Map<String, dynamic> json) =
      _$LivekitConfigModelImpl.fromJson;

  @override
  @JsonKey(name: 'max_participants')
  int? get maxParticipants;
  @override
  @JsonKey(name: 'empty_timeout')
  int? get emptyTimeout;
  @override
  @JsonKey(name: 'video_quality')
  String? get videoQuality;

  /// Create a copy of LivekitConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivekitConfigModelImplCopyWith<_$LivekitConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivekitInfoModel _$LivekitInfoModelFromJson(Map<String, dynamic> json) {
  return _LivekitInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LivekitInfoModel {
  @JsonKey(name: 'room_name')
  String? get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_url')
  String? get serverUrl => throw _privateConstructorUsedError;

  /// Serializes this LivekitInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LivekitInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LivekitInfoModelCopyWith<LivekitInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivekitInfoModelCopyWith<$Res> {
  factory $LivekitInfoModelCopyWith(
          LivekitInfoModel value, $Res Function(LivekitInfoModel) then) =
      _$LivekitInfoModelCopyWithImpl<$Res, LivekitInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room_name') String? roomName,
      @JsonKey(name: 'server_url') String? serverUrl});
}

/// @nodoc
class _$LivekitInfoModelCopyWithImpl<$Res, $Val extends LivekitInfoModel>
    implements $LivekitInfoModelCopyWith<$Res> {
  _$LivekitInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivekitInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? serverUrl = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      serverUrl: freezed == serverUrl
          ? _value.serverUrl
          : serverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivekitInfoModelImplCopyWith<$Res>
    implements $LivekitInfoModelCopyWith<$Res> {
  factory _$$LivekitInfoModelImplCopyWith(_$LivekitInfoModelImpl value,
          $Res Function(_$LivekitInfoModelImpl) then) =
      __$$LivekitInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'room_name') String? roomName,
      @JsonKey(name: 'server_url') String? serverUrl});
}

/// @nodoc
class __$$LivekitInfoModelImplCopyWithImpl<$Res>
    extends _$LivekitInfoModelCopyWithImpl<$Res, _$LivekitInfoModelImpl>
    implements _$$LivekitInfoModelImplCopyWith<$Res> {
  __$$LivekitInfoModelImplCopyWithImpl(_$LivekitInfoModelImpl _value,
      $Res Function(_$LivekitInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivekitInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? serverUrl = freezed,
  }) {
    return _then(_$LivekitInfoModelImpl(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      serverUrl: freezed == serverUrl
          ? _value.serverUrl
          : serverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivekitInfoModelImpl implements _LivekitInfoModel {
  const _$LivekitInfoModelImpl(
      {@JsonKey(name: 'room_name') this.roomName,
      @JsonKey(name: 'server_url') this.serverUrl});

  factory _$LivekitInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivekitInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'room_name')
  final String? roomName;
  @override
  @JsonKey(name: 'server_url')
  final String? serverUrl;

  @override
  String toString() {
    return 'LivekitInfoModel(roomName: $roomName, serverUrl: $serverUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivekitInfoModelImpl &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.serverUrl, serverUrl) ||
                other.serverUrl == serverUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roomName, serverUrl);

  /// Create a copy of LivekitInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivekitInfoModelImplCopyWith<_$LivekitInfoModelImpl> get copyWith =>
      __$$LivekitInfoModelImplCopyWithImpl<_$LivekitInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivekitInfoModelImplToJson(
      this,
    );
  }
}

abstract class _LivekitInfoModel implements LivekitInfoModel {
  const factory _LivekitInfoModel(
          {@JsonKey(name: 'room_name') final String? roomName,
          @JsonKey(name: 'server_url') final String? serverUrl}) =
      _$LivekitInfoModelImpl;

  factory _LivekitInfoModel.fromJson(Map<String, dynamic> json) =
      _$LivekitInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'room_name')
  String? get roomName;
  @override
  @JsonKey(name: 'server_url')
  String? get serverUrl;

  /// Create a copy of LivekitInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivekitInfoModelImplCopyWith<_$LivekitInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamUserModel _$StreamUserModelFromJson(Map<String, dynamic> json) {
  return _StreamUserModel.fromJson(json);
}

/// @nodoc
mixin _$StreamUserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  double? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

  /// Serializes this StreamUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamUserModelCopyWith<StreamUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamUserModelCopyWith<$Res> {
  factory $StreamUserModelCopyWith(
          StreamUserModel value, $Res Function(StreamUserModel) then) =
      _$StreamUserModelCopyWithImpl<$Res, StreamUserModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? image,
      @JsonKey(name: 'personal_rating') double? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class _$StreamUserModelCopyWithImpl<$Res, $Val extends StreamUserModel>
    implements $StreamUserModelCopyWith<$Res> {
  _$StreamUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as double?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamUserModelImplCopyWith<$Res>
    implements $StreamUserModelCopyWith<$Res> {
  factory _$$StreamUserModelImplCopyWith(_$StreamUserModelImpl value,
          $Res Function(_$StreamUserModelImpl) then) =
      __$$StreamUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? image,
      @JsonKey(name: 'personal_rating') double? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class __$$StreamUserModelImplCopyWithImpl<$Res>
    extends _$StreamUserModelCopyWithImpl<$Res, _$StreamUserModelImpl>
    implements _$$StreamUserModelImplCopyWith<$Res> {
  __$$StreamUserModelImplCopyWithImpl(
      _$StreamUserModelImpl _value, $Res Function(_$StreamUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_$StreamUserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as double?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamUserModelImpl implements _StreamUserModel {
  const _$StreamUserModelImpl(
      {this.id,
      this.name,
      this.email,
      this.image,
      @JsonKey(name: 'personal_rating') this.personalRating,
      @JsonKey(name: 'personal_rating_count') this.personalRatingCount,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'favorites_count') this.favoritesCount});

  factory _$StreamUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamUserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? image;
  @override
  @JsonKey(name: 'personal_rating')
  final double? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @override
  String toString() {
    return 'StreamUserModel(id: $id, name: $name, email: $email, image: $image, personalRating: $personalRating, personalRatingCount: $personalRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, image,
      personalRating, personalRatingCount, isFavorited, favoritesCount);

  /// Create a copy of StreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamUserModelImplCopyWith<_$StreamUserModelImpl> get copyWith =>
      __$$StreamUserModelImplCopyWithImpl<_$StreamUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamUserModelImplToJson(
      this,
    );
  }
}

abstract class _StreamUserModel implements StreamUserModel {
  const factory _StreamUserModel(
      {final int? id,
      final String? name,
      final String? email,
      final String? image,
      @JsonKey(name: 'personal_rating') final double? personalRating,
      @JsonKey(name: 'personal_rating_count') final int? personalRatingCount,
      @JsonKey(name: 'is_favorited') final bool? isFavorited,
      @JsonKey(name: 'favorites_count')
      final int? favoritesCount}) = _$StreamUserModelImpl;

  factory _StreamUserModel.fromJson(Map<String, dynamic> json) =
      _$StreamUserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get image;
  @override
  @JsonKey(name: 'personal_rating')
  double? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of StreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamUserModelImplCopyWith<_$StreamUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamProductModel _$StreamProductModelFromJson(Map<String, dynamic> json) {
  return _StreamProductModel.fromJson(json);
}

/// @nodoc
mixin _$StreamProductModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_id')
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'starting_price')
  String? get startingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_bid')
  String? get currentBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_duration_seconds')
  int? get bidDurationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'bidding_enabled')
  bool? get biddingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  int? get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_session')
  ToggleBiddingSessionModel? get bidSession =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  StreamEmbeddedProductModel? get product => throw _privateConstructorUsedError;

  /// Serializes this StreamProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamProductModelCopyWith<StreamProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamProductModelCopyWith<$Res> {
  factory $StreamProductModelCopyWith(
          StreamProductModel value, $Res Function(StreamProductModel) then) =
      _$StreamProductModelCopyWithImpl<$Res, StreamProductModel>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'product') StreamEmbeddedProductModel? product});

  $ToggleBiddingSessionModelCopyWith<$Res>? get bidSession;
  $StreamEmbeddedProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$StreamProductModelCopyWithImpl<$Res, $Val extends StreamProductModel>
    implements $StreamProductModelCopyWith<$Res> {
  _$StreamProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? productId = freezed,
    Object? startingPrice = freezed,
    Object? currentBid = freezed,
    Object? bidDurationSeconds = freezed,
    Object? biddingEnabled = freezed,
    Object? isActive = freezed,
    Object? displayOrder = freezed,
    Object? remainingSeconds = freezed,
    Object? bidSession = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      startingPrice: freezed == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBid: freezed == currentBid
          ? _value.currentBid
          : currentBid // ignore: cast_nullable_to_non_nullable
              as String?,
      bidDurationSeconds: freezed == bidDurationSeconds
          ? _value.bidDurationSeconds
          : bidDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      biddingEnabled: freezed == biddingEnabled
          ? _value.biddingEnabled
          : biddingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingSeconds: freezed == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as ToggleBiddingSessionModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as StreamEmbeddedProductModel?,
    ) as $Val);
  }

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToggleBiddingSessionModelCopyWith<$Res>? get bidSession {
    if (_value.bidSession == null) {
      return null;
    }

    return $ToggleBiddingSessionModelCopyWith<$Res>(_value.bidSession!,
        (value) {
      return _then(_value.copyWith(bidSession: value) as $Val);
    });
  }

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamEmbeddedProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $StreamEmbeddedProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamProductModelImplCopyWith<$Res>
    implements $StreamProductModelCopyWith<$Res> {
  factory _$$StreamProductModelImplCopyWith(_$StreamProductModelImpl value,
          $Res Function(_$StreamProductModelImpl) then) =
      __$$StreamProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'product') StreamEmbeddedProductModel? product});

  @override
  $ToggleBiddingSessionModelCopyWith<$Res>? get bidSession;
  @override
  $StreamEmbeddedProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$StreamProductModelImplCopyWithImpl<$Res>
    extends _$StreamProductModelCopyWithImpl<$Res, _$StreamProductModelImpl>
    implements _$$StreamProductModelImplCopyWith<$Res> {
  __$$StreamProductModelImplCopyWithImpl(_$StreamProductModelImpl _value,
      $Res Function(_$StreamProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? productId = freezed,
    Object? startingPrice = freezed,
    Object? currentBid = freezed,
    Object? bidDurationSeconds = freezed,
    Object? biddingEnabled = freezed,
    Object? isActive = freezed,
    Object? displayOrder = freezed,
    Object? remainingSeconds = freezed,
    Object? bidSession = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(_$StreamProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      startingPrice: freezed == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBid: freezed == currentBid
          ? _value.currentBid
          : currentBid // ignore: cast_nullable_to_non_nullable
              as String?,
      bidDurationSeconds: freezed == bidDurationSeconds
          ? _value.bidDurationSeconds
          : bidDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      biddingEnabled: freezed == biddingEnabled
          ? _value.biddingEnabled
          : biddingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingSeconds: freezed == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as ToggleBiddingSessionModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as StreamEmbeddedProductModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamProductModelImpl implements _StreamProductModel {
  const _$StreamProductModelImpl(
      {this.id,
      @JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'starting_price') this.startingPrice,
      @JsonKey(name: 'current_bid') this.currentBid,
      @JsonKey(name: 'bid_duration_seconds') this.bidDurationSeconds,
      @JsonKey(name: 'bidding_enabled') this.biddingEnabled,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'display_order') this.displayOrder,
      @JsonKey(name: 'remaining_seconds') this.remainingSeconds,
      @JsonKey(name: 'bid_session') this.bidSession,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'product') this.product});

  factory _$StreamProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'stream_id')
  final int? streamId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'starting_price')
  final String? startingPrice;
  @override
  @JsonKey(name: 'current_bid')
  final String? currentBid;
  @override
  @JsonKey(name: 'bid_duration_seconds')
  final int? bidDurationSeconds;
  @override
  @JsonKey(name: 'bidding_enabled')
  final bool? biddingEnabled;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'display_order')
  final int? displayOrder;
  @override
  @JsonKey(name: 'remaining_seconds')
  final int? remainingSeconds;
  @override
  @JsonKey(name: 'bid_session')
  final ToggleBiddingSessionModel? bidSession;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'product')
  final StreamEmbeddedProductModel? product;

  @override
  String toString() {
    return 'StreamProductModel(id: $id, streamId: $streamId, productId: $productId, startingPrice: $startingPrice, currentBid: $currentBid, bidDurationSeconds: $bidDurationSeconds, biddingEnabled: $biddingEnabled, isActive: $isActive, displayOrder: $displayOrder, remainingSeconds: $remainingSeconds, bidSession: $bidSession, createdAt: $createdAt, updatedAt: $updatedAt, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.currentBid, currentBid) ||
                other.currentBid == currentBid) &&
            (identical(other.bidDurationSeconds, bidDurationSeconds) ||
                other.bidDurationSeconds == bidDurationSeconds) &&
            (identical(other.biddingEnabled, biddingEnabled) ||
                other.biddingEnabled == biddingEnabled) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.bidSession, bidSession) ||
                other.bidSession == bidSession) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streamId,
      productId,
      startingPrice,
      currentBid,
      bidDurationSeconds,
      biddingEnabled,
      isActive,
      displayOrder,
      remainingSeconds,
      bidSession,
      createdAt,
      updatedAt,
      product);

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamProductModelImplCopyWith<_$StreamProductModelImpl> get copyWith =>
      __$$StreamProductModelImplCopyWithImpl<_$StreamProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamProductModelImplToJson(
      this,
    );
  }
}

abstract class _StreamProductModel implements StreamProductModel {
  const factory _StreamProductModel(
      {final int? id,
      @JsonKey(name: 'stream_id') final int? streamId,
      @JsonKey(name: 'product_id') final int? productId,
      @JsonKey(name: 'starting_price') final String? startingPrice,
      @JsonKey(name: 'current_bid') final String? currentBid,
      @JsonKey(name: 'bid_duration_seconds') final int? bidDurationSeconds,
      @JsonKey(name: 'bidding_enabled') final bool? biddingEnabled,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'display_order') final int? displayOrder,
      @JsonKey(name: 'remaining_seconds') final int? remainingSeconds,
      @JsonKey(name: 'bid_session') final ToggleBiddingSessionModel? bidSession,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'product')
      final StreamEmbeddedProductModel? product}) = _$StreamProductModelImpl;

  factory _StreamProductModel.fromJson(Map<String, dynamic> json) =
      _$StreamProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'stream_id')
  int? get streamId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'starting_price')
  String? get startingPrice;
  @override
  @JsonKey(name: 'current_bid')
  String? get currentBid;
  @override
  @JsonKey(name: 'bid_duration_seconds')
  int? get bidDurationSeconds;
  @override
  @JsonKey(name: 'bidding_enabled')
  bool? get biddingEnabled;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'display_order')
  int? get displayOrder;
  @override
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds;
  @override
  @JsonKey(name: 'bid_session')
  ToggleBiddingSessionModel? get bidSession;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'product')
  StreamEmbeddedProductModel? get product;

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamProductModelImplCopyWith<_$StreamProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamEmbeddedProductModel _$StreamEmbeddedProductModelFromJson(
    Map<String, dynamic> json) {
  return _StreamEmbeddedProductModel.fromJson(json);
}

/// @nodoc
mixin _$StreamEmbeddedProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_pickup')
  int? get selfPickup => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude', fromJson: _stringToDouble, toJson: _doubleToString)
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'longitude', fromJson: _stringToDouble, toJson: _doubleToString)
  double? get longitude => throw _privateConstructorUsedError;

  /// Serializes this StreamEmbeddedProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamEmbeddedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamEmbeddedProductModelCopyWith<StreamEmbeddedProductModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamEmbeddedProductModelCopyWith<$Res> {
  factory $StreamEmbeddedProductModelCopyWith(StreamEmbeddedProductModel value,
          $Res Function(StreamEmbeddedProductModel) then) =
      _$StreamEmbeddedProductModelCopyWithImpl<$Res,
          StreamEmbeddedProductModel>;
  @useResult
  $Res call(
      {int? id,
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
      double? longitude});
}

/// @nodoc
class _$StreamEmbeddedProductModelCopyWithImpl<$Res,
        $Val extends StreamEmbeddedProductModel>
    implements $StreamEmbeddedProductModelCopyWith<$Res> {
  _$StreamEmbeddedProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamEmbeddedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? selfPickup = freezed,
    Object? location = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamEmbeddedProductModelImplCopyWith<$Res>
    implements $StreamEmbeddedProductModelCopyWith<$Res> {
  factory _$$StreamEmbeddedProductModelImplCopyWith(
          _$StreamEmbeddedProductModelImpl value,
          $Res Function(_$StreamEmbeddedProductModelImpl) then) =
      __$$StreamEmbeddedProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      double? longitude});
}

/// @nodoc
class __$$StreamEmbeddedProductModelImplCopyWithImpl<$Res>
    extends _$StreamEmbeddedProductModelCopyWithImpl<$Res,
        _$StreamEmbeddedProductModelImpl>
    implements _$$StreamEmbeddedProductModelImplCopyWith<$Res> {
  __$$StreamEmbeddedProductModelImplCopyWithImpl(
      _$StreamEmbeddedProductModelImpl _value,
      $Res Function(_$StreamEmbeddedProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamEmbeddedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? selfPickup = freezed,
    Object? location = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$StreamEmbeddedProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamEmbeddedProductModelImpl implements _StreamEmbeddedProductModel {
  const _$StreamEmbeddedProductModelImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'self_pickup') this.selfPickup,
      this.location,
      @JsonKey(
          name: 'latitude', fromJson: _stringToDouble, toJson: _doubleToString)
      this.latitude,
      @JsonKey(
          name: 'longitude', fromJson: _stringToDouble, toJson: _doubleToString)
      this.longitude});

  factory _$StreamEmbeddedProductModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StreamEmbeddedProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'self_pickup')
  final int? selfPickup;
  @override
  final String? location;
  @override
  @JsonKey(name: 'latitude', fromJson: _stringToDouble, toJson: _doubleToString)
  final double? latitude;
  @override
  @JsonKey(
      name: 'longitude', fromJson: _stringToDouble, toJson: _doubleToString)
  final double? longitude;

  @override
  String toString() {
    return 'StreamEmbeddedProductModel(id: $id, name: $name, description: $description, userId: $userId, categoryId: $categoryId, selfPickup: $selfPickup, location: $location, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamEmbeddedProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.selfPickup, selfPickup) ||
                other.selfPickup == selfPickup) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, userId,
      categoryId, selfPickup, location, latitude, longitude);

  /// Create a copy of StreamEmbeddedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamEmbeddedProductModelImplCopyWith<_$StreamEmbeddedProductModelImpl>
      get copyWith => __$$StreamEmbeddedProductModelImplCopyWithImpl<
          _$StreamEmbeddedProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamEmbeddedProductModelImplToJson(
      this,
    );
  }
}

abstract class _StreamEmbeddedProductModel
    implements StreamEmbeddedProductModel {
  const factory _StreamEmbeddedProductModel(
      {final int? id,
      final String? name,
      final String? description,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'self_pickup') final int? selfPickup,
      final String? location,
      @JsonKey(
          name: 'latitude', fromJson: _stringToDouble, toJson: _doubleToString)
      final double? latitude,
      @JsonKey(
          name: 'longitude', fromJson: _stringToDouble, toJson: _doubleToString)
      final double? longitude}) = _$StreamEmbeddedProductModelImpl;

  factory _StreamEmbeddedProductModel.fromJson(Map<String, dynamic> json) =
      _$StreamEmbeddedProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'self_pickup')
  int? get selfPickup;
  @override
  String? get location;
  @override
  @JsonKey(name: 'latitude', fromJson: _stringToDouble, toJson: _doubleToString)
  double? get latitude;
  @override
  @JsonKey(
      name: 'longitude', fromJson: _stringToDouble, toJson: _doubleToString)
  double? get longitude;

  /// Create a copy of StreamEmbeddedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamEmbeddedProductModelImplCopyWith<_$StreamEmbeddedProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamCategoryModel _$StreamCategoryModelFromJson(Map<String, dynamic> json) {
  return _StreamCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$StreamCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pivot')
  StreamCategoryPivotModel? get pivot => throw _privateConstructorUsedError;

  /// Serializes this StreamCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamCategoryModelCopyWith<StreamCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamCategoryModelCopyWith<$Res> {
  factory $StreamCategoryModelCopyWith(
          StreamCategoryModel value, $Res Function(StreamCategoryModel) then) =
      _$StreamCategoryModelCopyWithImpl<$Res, StreamCategoryModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'pivot') StreamCategoryPivotModel? pivot});

  $StreamCategoryPivotModelCopyWith<$Res>? get pivot;
}

/// @nodoc
class _$StreamCategoryModelCopyWithImpl<$Res, $Val extends StreamCategoryModel>
    implements $StreamCategoryModelCopyWith<$Res> {
  _$StreamCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as StreamCategoryPivotModel?,
    ) as $Val);
  }

  /// Create a copy of StreamCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamCategoryPivotModelCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $StreamCategoryPivotModelCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamCategoryModelImplCopyWith<$Res>
    implements $StreamCategoryModelCopyWith<$Res> {
  factory _$$StreamCategoryModelImplCopyWith(_$StreamCategoryModelImpl value,
          $Res Function(_$StreamCategoryModelImpl) then) =
      __$$StreamCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'pivot') StreamCategoryPivotModel? pivot});

  @override
  $StreamCategoryPivotModelCopyWith<$Res>? get pivot;
}

/// @nodoc
class __$$StreamCategoryModelImplCopyWithImpl<$Res>
    extends _$StreamCategoryModelCopyWithImpl<$Res, _$StreamCategoryModelImpl>
    implements _$$StreamCategoryModelImplCopyWith<$Res> {
  __$$StreamCategoryModelImplCopyWithImpl(_$StreamCategoryModelImpl _value,
      $Res Function(_$StreamCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_$StreamCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as StreamCategoryPivotModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamCategoryModelImpl implements _StreamCategoryModel {
  const _$StreamCategoryModelImpl(
      {this.id, this.name, @JsonKey(name: 'pivot') this.pivot});

  factory _$StreamCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamCategoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'pivot')
  final StreamCategoryPivotModel? pivot;

  @override
  String toString() {
    return 'StreamCategoryModel(id: $id, name: $name, pivot: $pivot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pivot, pivot) || other.pivot == pivot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, pivot);

  /// Create a copy of StreamCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCategoryModelImplCopyWith<_$StreamCategoryModelImpl> get copyWith =>
      __$$StreamCategoryModelImplCopyWithImpl<_$StreamCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _StreamCategoryModel implements StreamCategoryModel {
  const factory _StreamCategoryModel(
          {final int? id,
          final String? name,
          @JsonKey(name: 'pivot') final StreamCategoryPivotModel? pivot}) =
      _$StreamCategoryModelImpl;

  factory _StreamCategoryModel.fromJson(Map<String, dynamic> json) =
      _$StreamCategoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'pivot')
  StreamCategoryPivotModel? get pivot;

  /// Create a copy of StreamCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamCategoryModelImplCopyWith<_$StreamCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamCategoryPivotModel _$StreamCategoryPivotModelFromJson(
    Map<String, dynamic> json) {
  return _StreamCategoryPivotModel.fromJson(json);
}

/// @nodoc
mixin _$StreamCategoryPivotModel {
  @JsonKey(name: 'stream_id')
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StreamCategoryPivotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamCategoryPivotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamCategoryPivotModelCopyWith<StreamCategoryPivotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamCategoryPivotModelCopyWith<$Res> {
  factory $StreamCategoryPivotModelCopyWith(StreamCategoryPivotModel value,
          $Res Function(StreamCategoryPivotModel) then) =
      _$StreamCategoryPivotModelCopyWithImpl<$Res, StreamCategoryPivotModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StreamCategoryPivotModelCopyWithImpl<$Res,
        $Val extends StreamCategoryPivotModel>
    implements $StreamCategoryPivotModelCopyWith<$Res> {
  _$StreamCategoryPivotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamCategoryPivotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? categoryId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamCategoryPivotModelImplCopyWith<$Res>
    implements $StreamCategoryPivotModelCopyWith<$Res> {
  factory _$$StreamCategoryPivotModelImplCopyWith(
          _$StreamCategoryPivotModelImpl value,
          $Res Function(_$StreamCategoryPivotModelImpl) then) =
      __$$StreamCategoryPivotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StreamCategoryPivotModelImplCopyWithImpl<$Res>
    extends _$StreamCategoryPivotModelCopyWithImpl<$Res,
        _$StreamCategoryPivotModelImpl>
    implements _$$StreamCategoryPivotModelImplCopyWith<$Res> {
  __$$StreamCategoryPivotModelImplCopyWithImpl(
      _$StreamCategoryPivotModelImpl _value,
      $Res Function(_$StreamCategoryPivotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamCategoryPivotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? categoryId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StreamCategoryPivotModelImpl(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamCategoryPivotModelImpl implements _StreamCategoryPivotModel {
  const _$StreamCategoryPivotModelImpl(
      {@JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StreamCategoryPivotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamCategoryPivotModelImplFromJson(json);

  @override
  @JsonKey(name: 'stream_id')
  final int? streamId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StreamCategoryPivotModel(streamId: $streamId, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCategoryPivotModelImpl &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, streamId, categoryId, createdAt, updatedAt);

  /// Create a copy of StreamCategoryPivotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCategoryPivotModelImplCopyWith<_$StreamCategoryPivotModelImpl>
      get copyWith => __$$StreamCategoryPivotModelImplCopyWithImpl<
          _$StreamCategoryPivotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamCategoryPivotModelImplToJson(
      this,
    );
  }
}

abstract class _StreamCategoryPivotModel implements StreamCategoryPivotModel {
  const factory _StreamCategoryPivotModel(
          {@JsonKey(name: 'stream_id') final int? streamId,
          @JsonKey(name: 'category_id') final int? categoryId,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$StreamCategoryPivotModelImpl;

  factory _StreamCategoryPivotModel.fromJson(Map<String, dynamic> json) =
      _$StreamCategoryPivotModelImpl.fromJson;

  @override
  @JsonKey(name: 'stream_id')
  int? get streamId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of StreamCategoryPivotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamCategoryPivotModelImplCopyWith<_$StreamCategoryPivotModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamListResponseModel _$StreamListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _StreamListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$StreamListResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<StreamDataModel>? get data => throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;

  /// Serializes this StreamListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamListResponseModelCopyWith<StreamListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamListResponseModelCopyWith<$Res> {
  factory $StreamListResponseModelCopyWith(StreamListResponseModel value,
          $Res Function(StreamListResponseModel) then) =
      _$StreamListResponseModelCopyWithImpl<$Res, StreamListResponseModel>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<StreamDataModel>? data,
      PaginationModel? pagination});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$StreamListResponseModelCopyWithImpl<$Res,
        $Val extends StreamListResponseModel>
    implements $StreamListResponseModelCopyWith<$Res> {
  _$StreamListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ) as $Val);
  }

  /// Create a copy of StreamListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamListResponseModelImplCopyWith<$Res>
    implements $StreamListResponseModelCopyWith<$Res> {
  factory _$$StreamListResponseModelImplCopyWith(
          _$StreamListResponseModelImpl value,
          $Res Function(_$StreamListResponseModelImpl) then) =
      __$$StreamListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<StreamDataModel>? data,
      PaginationModel? pagination});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$StreamListResponseModelImplCopyWithImpl<$Res>
    extends _$StreamListResponseModelCopyWithImpl<$Res,
        _$StreamListResponseModelImpl>
    implements _$$StreamListResponseModelImplCopyWith<$Res> {
  __$$StreamListResponseModelImplCopyWithImpl(
      _$StreamListResponseModelImpl _value,
      $Res Function(_$StreamListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$StreamListResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamListResponseModelImpl implements _StreamListResponseModel {
  const _$StreamListResponseModelImpl(
      {this.success,
      this.message,
      final List<StreamDataModel>? data,
      this.pagination})
      : _data = data;

  factory _$StreamListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamListResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<StreamDataModel>? _data;
  @override
  List<StreamDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationModel? pagination;

  @override
  String toString() {
    return 'StreamListResponseModel(success: $success, message: $message, data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamListResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data), pagination);

  /// Create a copy of StreamListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamListResponseModelImplCopyWith<_$StreamListResponseModelImpl>
      get copyWith => __$$StreamListResponseModelImplCopyWithImpl<
          _$StreamListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _StreamListResponseModel implements StreamListResponseModel {
  const factory _StreamListResponseModel(
      {final bool? success,
      final String? message,
      final List<StreamDataModel>? data,
      final PaginationModel? pagination}) = _$StreamListResponseModelImpl;

  factory _StreamListResponseModel.fromJson(Map<String, dynamic> json) =
      _$StreamListResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<StreamDataModel>? get data;
  @override
  PaginationModel? get pagination;

  /// Create a copy of StreamListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamListResponseModelImplCopyWith<_$StreamListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  @JsonKey(name: 'current_page')
  String? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  String? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') String? currentPage,
      @JsonKey(name: 'per_page') String? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationModelImplCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$PaginationModelImplCopyWith(_$PaginationModelImpl value,
          $Res Function(_$PaginationModelImpl) then) =
      __$$PaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') String? currentPage,
      @JsonKey(name: 'per_page') String? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$PaginationModelImplCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$PaginationModelImpl>
    implements _$$PaginationModelImplCopyWith<$Res> {
  __$$PaginationModelImplCopyWithImpl(
      _$PaginationModelImpl _value, $Res Function(_$PaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$PaginationModelImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationModelImpl implements _PaginationModel {
  const _$PaginationModelImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'per_page') this.perPage,
      this.total,
      @JsonKey(name: 'last_page') this.lastPage});

  factory _$PaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationModelImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final String? currentPage;
  @override
  @JsonKey(name: 'per_page')
  final String? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;

  @override
  String toString() {
    return 'PaginationModel(currentPage: $currentPage, perPage: $perPage, total: $total, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, perPage, total, lastPage);

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      __$$PaginationModelImplCopyWithImpl<_$PaginationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationModelImplToJson(
      this,
    );
  }
}

abstract class _PaginationModel implements PaginationModel {
  const factory _PaginationModel(
      {@JsonKey(name: 'current_page') final String? currentPage,
      @JsonKey(name: 'per_page') final String? perPage,
      final int? total,
      @JsonKey(name: 'last_page') final int? lastPage}) = _$PaginationModelImpl;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$PaginationModelImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  String? get currentPage;
  @override
  @JsonKey(name: 'per_page')
  String? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamSettingsModel _$StreamSettingsModelFromJson(Map<String, dynamic> json) {
  return _StreamSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$StreamSettingsModel {
  LivekitSettingsModel? get livekit => throw _privateConstructorUsedError;

  /// Serializes this StreamSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamSettingsModelCopyWith<StreamSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamSettingsModelCopyWith<$Res> {
  factory $StreamSettingsModelCopyWith(
          StreamSettingsModel value, $Res Function(StreamSettingsModel) then) =
      _$StreamSettingsModelCopyWithImpl<$Res, StreamSettingsModel>;
  @useResult
  $Res call({LivekitSettingsModel? livekit});

  $LivekitSettingsModelCopyWith<$Res>? get livekit;
}

/// @nodoc
class _$StreamSettingsModelCopyWithImpl<$Res, $Val extends StreamSettingsModel>
    implements $StreamSettingsModelCopyWith<$Res> {
  _$StreamSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? livekit = freezed,
  }) {
    return _then(_value.copyWith(
      livekit: freezed == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as LivekitSettingsModel?,
    ) as $Val);
  }

  /// Create a copy of StreamSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivekitSettingsModelCopyWith<$Res>? get livekit {
    if (_value.livekit == null) {
      return null;
    }

    return $LivekitSettingsModelCopyWith<$Res>(_value.livekit!, (value) {
      return _then(_value.copyWith(livekit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamSettingsModelImplCopyWith<$Res>
    implements $StreamSettingsModelCopyWith<$Res> {
  factory _$$StreamSettingsModelImplCopyWith(_$StreamSettingsModelImpl value,
          $Res Function(_$StreamSettingsModelImpl) then) =
      __$$StreamSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LivekitSettingsModel? livekit});

  @override
  $LivekitSettingsModelCopyWith<$Res>? get livekit;
}

/// @nodoc
class __$$StreamSettingsModelImplCopyWithImpl<$Res>
    extends _$StreamSettingsModelCopyWithImpl<$Res, _$StreamSettingsModelImpl>
    implements _$$StreamSettingsModelImplCopyWith<$Res> {
  __$$StreamSettingsModelImplCopyWithImpl(_$StreamSettingsModelImpl _value,
      $Res Function(_$StreamSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? livekit = freezed,
  }) {
    return _then(_$StreamSettingsModelImpl(
      livekit: freezed == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as LivekitSettingsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamSettingsModelImpl implements _StreamSettingsModel {
  const _$StreamSettingsModelImpl({this.livekit});

  factory _$StreamSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamSettingsModelImplFromJson(json);

  @override
  final LivekitSettingsModel? livekit;

  @override
  String toString() {
    return 'StreamSettingsModel(livekit: $livekit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamSettingsModelImpl &&
            (identical(other.livekit, livekit) || other.livekit == livekit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, livekit);

  /// Create a copy of StreamSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamSettingsModelImplCopyWith<_$StreamSettingsModelImpl> get copyWith =>
      __$$StreamSettingsModelImplCopyWithImpl<_$StreamSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _StreamSettingsModel implements StreamSettingsModel {
  const factory _StreamSettingsModel({final LivekitSettingsModel? livekit}) =
      _$StreamSettingsModelImpl;

  factory _StreamSettingsModel.fromJson(Map<String, dynamic> json) =
      _$StreamSettingsModelImpl.fromJson;

  @override
  LivekitSettingsModel? get livekit;

  /// Create a copy of StreamSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamSettingsModelImplCopyWith<_$StreamSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivekitSettingsModel _$LivekitSettingsModelFromJson(Map<String, dynamic> json) {
  return _LivekitSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$LivekitSettingsModel {
  String? get room => throw _privateConstructorUsedError;
  EgressModel? get egress => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
  String? get recordingPlaylist => throw _privateConstructorUsedError;

  /// Serializes this LivekitSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LivekitSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LivekitSettingsModelCopyWith<LivekitSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivekitSettingsModelCopyWith<$Res> {
  factory $LivekitSettingsModelCopyWith(LivekitSettingsModel value,
          $Res Function(LivekitSettingsModel) then) =
      _$LivekitSettingsModelCopyWithImpl<$Res, LivekitSettingsModel>;
  @useResult
  $Res call(
      {String? room,
      EgressModel? egress,
      @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
      String? recordingPlaylist});

  $EgressModelCopyWith<$Res>? get egress;
}

/// @nodoc
class _$LivekitSettingsModelCopyWithImpl<$Res,
        $Val extends LivekitSettingsModel>
    implements $LivekitSettingsModelCopyWith<$Res> {
  _$LivekitSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivekitSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? egress = freezed,
    Object? recordingPlaylist = freezed,
  }) {
    return _then(_value.copyWith(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      egress: freezed == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as EgressModel?,
      recordingPlaylist: freezed == recordingPlaylist
          ? _value.recordingPlaylist
          : recordingPlaylist // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of LivekitSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EgressModelCopyWith<$Res>? get egress {
    if (_value.egress == null) {
      return null;
    }

    return $EgressModelCopyWith<$Res>(_value.egress!, (value) {
      return _then(_value.copyWith(egress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LivekitSettingsModelImplCopyWith<$Res>
    implements $LivekitSettingsModelCopyWith<$Res> {
  factory _$$LivekitSettingsModelImplCopyWith(_$LivekitSettingsModelImpl value,
          $Res Function(_$LivekitSettingsModelImpl) then) =
      __$$LivekitSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? room,
      EgressModel? egress,
      @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
      String? recordingPlaylist});

  @override
  $EgressModelCopyWith<$Res>? get egress;
}

/// @nodoc
class __$$LivekitSettingsModelImplCopyWithImpl<$Res>
    extends _$LivekitSettingsModelCopyWithImpl<$Res, _$LivekitSettingsModelImpl>
    implements _$$LivekitSettingsModelImplCopyWith<$Res> {
  __$$LivekitSettingsModelImplCopyWithImpl(_$LivekitSettingsModelImpl _value,
      $Res Function(_$LivekitSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivekitSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? egress = freezed,
    Object? recordingPlaylist = freezed,
  }) {
    return _then(_$LivekitSettingsModelImpl(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      egress: freezed == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as EgressModel?,
      recordingPlaylist: freezed == recordingPlaylist
          ? _value.recordingPlaylist
          : recordingPlaylist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivekitSettingsModelImpl implements _LivekitSettingsModel {
  const _$LivekitSettingsModelImpl(
      {this.room,
      this.egress,
      @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
      this.recordingPlaylist});

  factory _$LivekitSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivekitSettingsModelImplFromJson(json);

  @override
  final String? room;
  @override
  final EgressModel? egress;
  @override
  @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
  final String? recordingPlaylist;

  @override
  String toString() {
    return 'LivekitSettingsModel(room: $room, egress: $egress, recordingPlaylist: $recordingPlaylist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivekitSettingsModelImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.egress, egress) || other.egress == egress) &&
            (identical(other.recordingPlaylist, recordingPlaylist) ||
                other.recordingPlaylist == recordingPlaylist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, room, egress, recordingPlaylist);

  /// Create a copy of LivekitSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivekitSettingsModelImplCopyWith<_$LivekitSettingsModelImpl>
      get copyWith =>
          __$$LivekitSettingsModelImplCopyWithImpl<_$LivekitSettingsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivekitSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _LivekitSettingsModel implements LivekitSettingsModel {
  const factory _LivekitSettingsModel(
      {final String? room,
      final EgressModel? egress,
      @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
      final String? recordingPlaylist}) = _$LivekitSettingsModelImpl;

  factory _LivekitSettingsModel.fromJson(Map<String, dynamic> json) =
      _$LivekitSettingsModelImpl.fromJson;

  @override
  String? get room;
  @override
  EgressModel? get egress;
  @override
  @JsonKey(name: 'recording_playlist', fromJson: _stringFromJson)
  String? get recordingPlaylist;

  /// Create a copy of LivekitSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivekitSettingsModelImplCopyWith<_$LivekitSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EgressModel _$EgressModelFromJson(Map<String, dynamic> json) {
  return _EgressModel.fromJson(json);
}

/// @nodoc
mixin _$EgressModel {
  EgressFileModel? get file => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String? get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'egress_id')
  String? get egressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_name')
  String? get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_code')
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_type')
  String? get sourceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_results')
  List<EgressFileModel>? get fileResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_composite')
  RoomCompositeModel? get roomComposite => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_results')
  List<dynamic>? get streamResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'segment_results')
  List<dynamic>? get segmentResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'manifest_location')
  String? get manifestLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'backup_storage_used')
  bool? get backupStorageUsed => throw _privateConstructorUsedError;

  /// Serializes this EgressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EgressModelCopyWith<EgressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EgressModelCopyWith<$Res> {
  factory $EgressModelCopyWith(
          EgressModel value, $Res Function(EgressModel) then) =
      _$EgressModelCopyWithImpl<$Res, EgressModel>;
  @useResult
  $Res call(
      {EgressFileModel? file,
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
      @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed});

  $EgressFileModelCopyWith<$Res>? get file;
  $RoomCompositeModelCopyWith<$Res>? get roomComposite;
}

/// @nodoc
class _$EgressModelCopyWithImpl<$Res, $Val extends EgressModel>
    implements $EgressModelCopyWith<$Res> {
  _$EgressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? details = freezed,
    Object? roomId = freezed,
    Object? endedAt = freezed,
    Object? egressId = freezed,
    Object? roomName = freezed,
    Object? errorCode = freezed,
    Object? startedAt = freezed,
    Object? updatedAt = freezed,
    Object? sourceType = freezed,
    Object? fileResults = freezed,
    Object? imageResults = freezed,
    Object? roomComposite = freezed,
    Object? streamResults = freezed,
    Object? segmentResults = freezed,
    Object? manifestLocation = freezed,
    Object? backupStorageUsed = freezed,
  }) {
    return _then(_value.copyWith(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as EgressFileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      egressId: freezed == egressId
          ? _value.egressId
          : egressId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: freezed == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileResults: freezed == fileResults
          ? _value.fileResults
          : fileResults // ignore: cast_nullable_to_non_nullable
              as List<EgressFileModel>?,
      imageResults: freezed == imageResults
          ? _value.imageResults
          : imageResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomComposite: freezed == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as RoomCompositeModel?,
      streamResults: freezed == streamResults
          ? _value.streamResults
          : streamResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      segmentResults: freezed == segmentResults
          ? _value.segmentResults
          : segmentResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      manifestLocation: freezed == manifestLocation
          ? _value.manifestLocation
          : manifestLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      backupStorageUsed: freezed == backupStorageUsed
          ? _value.backupStorageUsed
          : backupStorageUsed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EgressFileModelCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $EgressFileModelCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCompositeModelCopyWith<$Res>? get roomComposite {
    if (_value.roomComposite == null) {
      return null;
    }

    return $RoomCompositeModelCopyWith<$Res>(_value.roomComposite!, (value) {
      return _then(_value.copyWith(roomComposite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EgressModelImplCopyWith<$Res>
    implements $EgressModelCopyWith<$Res> {
  factory _$$EgressModelImplCopyWith(
          _$EgressModelImpl value, $Res Function(_$EgressModelImpl) then) =
      __$$EgressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EgressFileModel? file,
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
      @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed});

  @override
  $EgressFileModelCopyWith<$Res>? get file;
  @override
  $RoomCompositeModelCopyWith<$Res>? get roomComposite;
}

/// @nodoc
class __$$EgressModelImplCopyWithImpl<$Res>
    extends _$EgressModelCopyWithImpl<$Res, _$EgressModelImpl>
    implements _$$EgressModelImplCopyWith<$Res> {
  __$$EgressModelImplCopyWithImpl(
      _$EgressModelImpl _value, $Res Function(_$EgressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? details = freezed,
    Object? roomId = freezed,
    Object? endedAt = freezed,
    Object? egressId = freezed,
    Object? roomName = freezed,
    Object? errorCode = freezed,
    Object? startedAt = freezed,
    Object? updatedAt = freezed,
    Object? sourceType = freezed,
    Object? fileResults = freezed,
    Object? imageResults = freezed,
    Object? roomComposite = freezed,
    Object? streamResults = freezed,
    Object? segmentResults = freezed,
    Object? manifestLocation = freezed,
    Object? backupStorageUsed = freezed,
  }) {
    return _then(_$EgressModelImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as EgressFileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      egressId: freezed == egressId
          ? _value.egressId
          : egressId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: freezed == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileResults: freezed == fileResults
          ? _value._fileResults
          : fileResults // ignore: cast_nullable_to_non_nullable
              as List<EgressFileModel>?,
      imageResults: freezed == imageResults
          ? _value._imageResults
          : imageResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomComposite: freezed == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as RoomCompositeModel?,
      streamResults: freezed == streamResults
          ? _value._streamResults
          : streamResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      segmentResults: freezed == segmentResults
          ? _value._segmentResults
          : segmentResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      manifestLocation: freezed == manifestLocation
          ? _value.manifestLocation
          : manifestLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      backupStorageUsed: freezed == backupStorageUsed
          ? _value.backupStorageUsed
          : backupStorageUsed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EgressModelImpl implements _EgressModel {
  const _$EgressModelImpl(
      {this.file,
      this.error,
      this.status,
      this.details,
      @JsonKey(name: 'room_id') this.roomId,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'egress_id') this.egressId,
      @JsonKey(name: 'room_name') this.roomName,
      @JsonKey(name: 'error_code') this.errorCode,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'source_type') this.sourceType,
      @JsonKey(name: 'file_results') final List<EgressFileModel>? fileResults,
      @JsonKey(name: 'image_results') final List<dynamic>? imageResults,
      @JsonKey(name: 'room_composite') this.roomComposite,
      @JsonKey(name: 'stream_results') final List<dynamic>? streamResults,
      @JsonKey(name: 'segment_results') final List<dynamic>? segmentResults,
      @JsonKey(name: 'manifest_location') this.manifestLocation,
      @JsonKey(name: 'backup_storage_used') this.backupStorageUsed})
      : _fileResults = fileResults,
        _imageResults = imageResults,
        _streamResults = streamResults,
        _segmentResults = segmentResults;

  factory _$EgressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EgressModelImplFromJson(json);

  @override
  final EgressFileModel? file;
  @override
  final String? error;
  @override
  final String? status;
  @override
  final String? details;
  @override
  @JsonKey(name: 'room_id')
  final String? roomId;
  @override
  @JsonKey(name: 'ended_at')
  final String? endedAt;
  @override
  @JsonKey(name: 'egress_id')
  final String? egressId;
  @override
  @JsonKey(name: 'room_name')
  final String? roomName;
  @override
  @JsonKey(name: 'error_code')
  final int? errorCode;
  @override
  @JsonKey(name: 'started_at')
  final String? startedAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'source_type')
  final String? sourceType;
  final List<EgressFileModel>? _fileResults;
  @override
  @JsonKey(name: 'file_results')
  List<EgressFileModel>? get fileResults {
    final value = _fileResults;
    if (value == null) return null;
    if (_fileResults is EqualUnmodifiableListView) return _fileResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _imageResults;
  @override
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults {
    final value = _imageResults;
    if (value == null) return null;
    if (_imageResults is EqualUnmodifiableListView) return _imageResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'room_composite')
  final RoomCompositeModel? roomComposite;
  final List<dynamic>? _streamResults;
  @override
  @JsonKey(name: 'stream_results')
  List<dynamic>? get streamResults {
    final value = _streamResults;
    if (value == null) return null;
    if (_streamResults is EqualUnmodifiableListView) return _streamResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _segmentResults;
  @override
  @JsonKey(name: 'segment_results')
  List<dynamic>? get segmentResults {
    final value = _segmentResults;
    if (value == null) return null;
    if (_segmentResults is EqualUnmodifiableListView) return _segmentResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'manifest_location')
  final String? manifestLocation;
  @override
  @JsonKey(name: 'backup_storage_used')
  final bool? backupStorageUsed;

  @override
  String toString() {
    return 'EgressModel(file: $file, error: $error, status: $status, details: $details, roomId: $roomId, endedAt: $endedAt, egressId: $egressId, roomName: $roomName, errorCode: $errorCode, startedAt: $startedAt, updatedAt: $updatedAt, sourceType: $sourceType, fileResults: $fileResults, imageResults: $imageResults, roomComposite: $roomComposite, streamResults: $streamResults, segmentResults: $segmentResults, manifestLocation: $manifestLocation, backupStorageUsed: $backupStorageUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EgressModelImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.egressId, egressId) ||
                other.egressId == egressId) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            const DeepCollectionEquality()
                .equals(other._fileResults, _fileResults) &&
            const DeepCollectionEquality()
                .equals(other._imageResults, _imageResults) &&
            (identical(other.roomComposite, roomComposite) ||
                other.roomComposite == roomComposite) &&
            const DeepCollectionEquality()
                .equals(other._streamResults, _streamResults) &&
            const DeepCollectionEquality()
                .equals(other._segmentResults, _segmentResults) &&
            (identical(other.manifestLocation, manifestLocation) ||
                other.manifestLocation == manifestLocation) &&
            (identical(other.backupStorageUsed, backupStorageUsed) ||
                other.backupStorageUsed == backupStorageUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        file,
        error,
        status,
        details,
        roomId,
        endedAt,
        egressId,
        roomName,
        errorCode,
        startedAt,
        updatedAt,
        sourceType,
        const DeepCollectionEquality().hash(_fileResults),
        const DeepCollectionEquality().hash(_imageResults),
        roomComposite,
        const DeepCollectionEquality().hash(_streamResults),
        const DeepCollectionEquality().hash(_segmentResults),
        manifestLocation,
        backupStorageUsed
      ]);

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EgressModelImplCopyWith<_$EgressModelImpl> get copyWith =>
      __$$EgressModelImplCopyWithImpl<_$EgressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EgressModelImplToJson(
      this,
    );
  }
}

abstract class _EgressModel implements EgressModel {
  const factory _EgressModel(
      {final EgressFileModel? file,
      final String? error,
      final String? status,
      final String? details,
      @JsonKey(name: 'room_id') final String? roomId,
      @JsonKey(name: 'ended_at') final String? endedAt,
      @JsonKey(name: 'egress_id') final String? egressId,
      @JsonKey(name: 'room_name') final String? roomName,
      @JsonKey(name: 'error_code') final int? errorCode,
      @JsonKey(name: 'started_at') final String? startedAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'source_type') final String? sourceType,
      @JsonKey(name: 'file_results') final List<EgressFileModel>? fileResults,
      @JsonKey(name: 'image_results') final List<dynamic>? imageResults,
      @JsonKey(name: 'room_composite') final RoomCompositeModel? roomComposite,
      @JsonKey(name: 'stream_results') final List<dynamic>? streamResults,
      @JsonKey(name: 'segment_results') final List<dynamic>? segmentResults,
      @JsonKey(name: 'manifest_location') final String? manifestLocation,
      @JsonKey(name: 'backup_storage_used')
      final bool? backupStorageUsed}) = _$EgressModelImpl;

  factory _EgressModel.fromJson(Map<String, dynamic> json) =
      _$EgressModelImpl.fromJson;

  @override
  EgressFileModel? get file;
  @override
  String? get error;
  @override
  String? get status;
  @override
  String? get details;
  @override
  @JsonKey(name: 'room_id')
  String? get roomId;
  @override
  @JsonKey(name: 'ended_at')
  String? get endedAt;
  @override
  @JsonKey(name: 'egress_id')
  String? get egressId;
  @override
  @JsonKey(name: 'room_name')
  String? get roomName;
  @override
  @JsonKey(name: 'error_code')
  int? get errorCode;
  @override
  @JsonKey(name: 'started_at')
  String? get startedAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'source_type')
  String? get sourceType;
  @override
  @JsonKey(name: 'file_results')
  List<EgressFileModel>? get fileResults;
  @override
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults;
  @override
  @JsonKey(name: 'room_composite')
  RoomCompositeModel? get roomComposite;
  @override
  @JsonKey(name: 'stream_results')
  List<dynamic>? get streamResults;
  @override
  @JsonKey(name: 'segment_results')
  List<dynamic>? get segmentResults;
  @override
  @JsonKey(name: 'manifest_location')
  String? get manifestLocation;
  @override
  @JsonKey(name: 'backup_storage_used')
  bool? get backupStorageUsed;

  /// Create a copy of EgressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EgressModelImplCopyWith<_$EgressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EgressFileModel _$EgressFileModelFromJson(Map<String, dynamic> json) {
  return _EgressFileModel.fromJson(json);
}

/// @nodoc
mixin _$EgressFileModel {
  String? get size => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startedAt => throw _privateConstructorUsedError;

  /// Serializes this EgressFileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EgressFileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EgressFileModelCopyWith<EgressFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EgressFileModelCopyWith<$Res> {
  factory $EgressFileModelCopyWith(
          EgressFileModel value, $Res Function(EgressFileModel) then) =
      _$EgressFileModelCopyWithImpl<$Res, EgressFileModel>;
  @useResult
  $Res call(
      {String? size,
      String? duration,
      @JsonKey(name: 'ended_at') String? endedAt,
      String? filename,
      String? location,
      @JsonKey(name: 'started_at') String? startedAt});
}

/// @nodoc
class _$EgressFileModelCopyWithImpl<$Res, $Val extends EgressFileModel>
    implements $EgressFileModelCopyWith<$Res> {
  _$EgressFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EgressFileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? duration = freezed,
    Object? endedAt = freezed,
    Object? filename = freezed,
    Object? location = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EgressFileModelImplCopyWith<$Res>
    implements $EgressFileModelCopyWith<$Res> {
  factory _$$EgressFileModelImplCopyWith(_$EgressFileModelImpl value,
          $Res Function(_$EgressFileModelImpl) then) =
      __$$EgressFileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? size,
      String? duration,
      @JsonKey(name: 'ended_at') String? endedAt,
      String? filename,
      String? location,
      @JsonKey(name: 'started_at') String? startedAt});
}

/// @nodoc
class __$$EgressFileModelImplCopyWithImpl<$Res>
    extends _$EgressFileModelCopyWithImpl<$Res, _$EgressFileModelImpl>
    implements _$$EgressFileModelImplCopyWith<$Res> {
  __$$EgressFileModelImplCopyWithImpl(
      _$EgressFileModelImpl _value, $Res Function(_$EgressFileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EgressFileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? duration = freezed,
    Object? endedAt = freezed,
    Object? filename = freezed,
    Object? location = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_$EgressFileModelImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EgressFileModelImpl implements _EgressFileModel {
  const _$EgressFileModelImpl(
      {this.size,
      this.duration,
      @JsonKey(name: 'ended_at') this.endedAt,
      this.filename,
      this.location,
      @JsonKey(name: 'started_at') this.startedAt});

  factory _$EgressFileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EgressFileModelImplFromJson(json);

  @override
  final String? size;
  @override
  final String? duration;
  @override
  @JsonKey(name: 'ended_at')
  final String? endedAt;
  @override
  final String? filename;
  @override
  final String? location;
  @override
  @JsonKey(name: 'started_at')
  final String? startedAt;

  @override
  String toString() {
    return 'EgressFileModel(size: $size, duration: $duration, endedAt: $endedAt, filename: $filename, location: $location, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EgressFileModelImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, size, duration, endedAt, filename, location, startedAt);

  /// Create a copy of EgressFileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EgressFileModelImplCopyWith<_$EgressFileModelImpl> get copyWith =>
      __$$EgressFileModelImplCopyWithImpl<_$EgressFileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EgressFileModelImplToJson(
      this,
    );
  }
}

abstract class _EgressFileModel implements EgressFileModel {
  const factory _EgressFileModel(
          {final String? size,
          final String? duration,
          @JsonKey(name: 'ended_at') final String? endedAt,
          final String? filename,
          final String? location,
          @JsonKey(name: 'started_at') final String? startedAt}) =
      _$EgressFileModelImpl;

  factory _EgressFileModel.fromJson(Map<String, dynamic> json) =
      _$EgressFileModelImpl.fromJson;

  @override
  String? get size;
  @override
  String? get duration;
  @override
  @JsonKey(name: 'ended_at')
  String? get endedAt;
  @override
  String? get filename;
  @override
  String? get location;
  @override
  @JsonKey(name: 'started_at')
  String? get startedAt;

  /// Create a copy of EgressFileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EgressFileModelImplCopyWith<_$EgressFileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomCompositeModel _$RoomCompositeModelFromJson(Map<String, dynamic> json) {
  return _RoomCompositeModel.fromJson(json);
}

/// @nodoc
mixin _$RoomCompositeModel {
  RoomCompositeFileModel? get file => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  RoomCompositeAdvancedModel? get advanced =>
      throw _privateConstructorUsedError;
  List<dynamic>? get webhooks => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_name')
  String? get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_only')
  bool? get audioOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_only')
  bool? get videoOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_mixing')
  String? get audioMixing => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_outputs')
  List<dynamic>? get fileOutputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_outputs')
  List<dynamic>? get imageOutputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_outputs')
  List<dynamic>? get streamOutputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_base_url')
  String? get customBaseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'segment_outputs')
  List<dynamic>? get segmentOutputs => throw _privateConstructorUsedError;

  /// Serializes this RoomCompositeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCompositeModelCopyWith<RoomCompositeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCompositeModelCopyWith<$Res> {
  factory $RoomCompositeModelCopyWith(
          RoomCompositeModel value, $Res Function(RoomCompositeModel) then) =
      _$RoomCompositeModelCopyWithImpl<$Res, RoomCompositeModel>;
  @useResult
  $Res call(
      {RoomCompositeFileModel? file,
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
      @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs});

  $RoomCompositeFileModelCopyWith<$Res>? get file;
  $RoomCompositeAdvancedModelCopyWith<$Res>? get advanced;
}

/// @nodoc
class _$RoomCompositeModelCopyWithImpl<$Res, $Val extends RoomCompositeModel>
    implements $RoomCompositeModelCopyWith<$Res> {
  _$RoomCompositeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? layout = freezed,
    Object? advanced = freezed,
    Object? webhooks = freezed,
    Object? roomName = freezed,
    Object? audioOnly = freezed,
    Object? videoOnly = freezed,
    Object? audioMixing = freezed,
    Object? fileOutputs = freezed,
    Object? imageOutputs = freezed,
    Object? streamOutputs = freezed,
    Object? customBaseUrl = freezed,
    Object? segmentOutputs = freezed,
  }) {
    return _then(_value.copyWith(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as RoomCompositeFileModel?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      advanced: freezed == advanced
          ? _value.advanced
          : advanced // ignore: cast_nullable_to_non_nullable
              as RoomCompositeAdvancedModel?,
      webhooks: freezed == webhooks
          ? _value.webhooks
          : webhooks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      audioOnly: freezed == audioOnly
          ? _value.audioOnly
          : audioOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoOnly: freezed == videoOnly
          ? _value.videoOnly
          : videoOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      audioMixing: freezed == audioMixing
          ? _value.audioMixing
          : audioMixing // ignore: cast_nullable_to_non_nullable
              as String?,
      fileOutputs: freezed == fileOutputs
          ? _value.fileOutputs
          : fileOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      imageOutputs: freezed == imageOutputs
          ? _value.imageOutputs
          : imageOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      streamOutputs: freezed == streamOutputs
          ? _value.streamOutputs
          : streamOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      customBaseUrl: freezed == customBaseUrl
          ? _value.customBaseUrl
          : customBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentOutputs: freezed == segmentOutputs
          ? _value.segmentOutputs
          : segmentOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCompositeFileModelCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $RoomCompositeFileModelCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCompositeAdvancedModelCopyWith<$Res>? get advanced {
    if (_value.advanced == null) {
      return null;
    }

    return $RoomCompositeAdvancedModelCopyWith<$Res>(_value.advanced!, (value) {
      return _then(_value.copyWith(advanced: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomCompositeModelImplCopyWith<$Res>
    implements $RoomCompositeModelCopyWith<$Res> {
  factory _$$RoomCompositeModelImplCopyWith(_$RoomCompositeModelImpl value,
          $Res Function(_$RoomCompositeModelImpl) then) =
      __$$RoomCompositeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoomCompositeFileModel? file,
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
      @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs});

  @override
  $RoomCompositeFileModelCopyWith<$Res>? get file;
  @override
  $RoomCompositeAdvancedModelCopyWith<$Res>? get advanced;
}

/// @nodoc
class __$$RoomCompositeModelImplCopyWithImpl<$Res>
    extends _$RoomCompositeModelCopyWithImpl<$Res, _$RoomCompositeModelImpl>
    implements _$$RoomCompositeModelImplCopyWith<$Res> {
  __$$RoomCompositeModelImplCopyWithImpl(_$RoomCompositeModelImpl _value,
      $Res Function(_$RoomCompositeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? layout = freezed,
    Object? advanced = freezed,
    Object? webhooks = freezed,
    Object? roomName = freezed,
    Object? audioOnly = freezed,
    Object? videoOnly = freezed,
    Object? audioMixing = freezed,
    Object? fileOutputs = freezed,
    Object? imageOutputs = freezed,
    Object? streamOutputs = freezed,
    Object? customBaseUrl = freezed,
    Object? segmentOutputs = freezed,
  }) {
    return _then(_$RoomCompositeModelImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as RoomCompositeFileModel?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      advanced: freezed == advanced
          ? _value.advanced
          : advanced // ignore: cast_nullable_to_non_nullable
              as RoomCompositeAdvancedModel?,
      webhooks: freezed == webhooks
          ? _value._webhooks
          : webhooks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      audioOnly: freezed == audioOnly
          ? _value.audioOnly
          : audioOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoOnly: freezed == videoOnly
          ? _value.videoOnly
          : videoOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      audioMixing: freezed == audioMixing
          ? _value.audioMixing
          : audioMixing // ignore: cast_nullable_to_non_nullable
              as String?,
      fileOutputs: freezed == fileOutputs
          ? _value._fileOutputs
          : fileOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      imageOutputs: freezed == imageOutputs
          ? _value._imageOutputs
          : imageOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      streamOutputs: freezed == streamOutputs
          ? _value._streamOutputs
          : streamOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      customBaseUrl: freezed == customBaseUrl
          ? _value.customBaseUrl
          : customBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentOutputs: freezed == segmentOutputs
          ? _value._segmentOutputs
          : segmentOutputs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomCompositeModelImpl implements _RoomCompositeModel {
  const _$RoomCompositeModelImpl(
      {this.file,
      this.layout,
      this.advanced,
      final List<dynamic>? webhooks,
      @JsonKey(name: 'room_name') this.roomName,
      @JsonKey(name: 'audio_only') this.audioOnly,
      @JsonKey(name: 'video_only') this.videoOnly,
      @JsonKey(name: 'audio_mixing') this.audioMixing,
      @JsonKey(name: 'file_outputs') final List<dynamic>? fileOutputs,
      @JsonKey(name: 'image_outputs') final List<dynamic>? imageOutputs,
      @JsonKey(name: 'stream_outputs') final List<dynamic>? streamOutputs,
      @JsonKey(name: 'custom_base_url') this.customBaseUrl,
      @JsonKey(name: 'segment_outputs') final List<dynamic>? segmentOutputs})
      : _webhooks = webhooks,
        _fileOutputs = fileOutputs,
        _imageOutputs = imageOutputs,
        _streamOutputs = streamOutputs,
        _segmentOutputs = segmentOutputs;

  factory _$RoomCompositeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomCompositeModelImplFromJson(json);

  @override
  final RoomCompositeFileModel? file;
  @override
  final String? layout;
  @override
  final RoomCompositeAdvancedModel? advanced;
  final List<dynamic>? _webhooks;
  @override
  List<dynamic>? get webhooks {
    final value = _webhooks;
    if (value == null) return null;
    if (_webhooks is EqualUnmodifiableListView) return _webhooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'room_name')
  final String? roomName;
  @override
  @JsonKey(name: 'audio_only')
  final bool? audioOnly;
  @override
  @JsonKey(name: 'video_only')
  final bool? videoOnly;
  @override
  @JsonKey(name: 'audio_mixing')
  final String? audioMixing;
  final List<dynamic>? _fileOutputs;
  @override
  @JsonKey(name: 'file_outputs')
  List<dynamic>? get fileOutputs {
    final value = _fileOutputs;
    if (value == null) return null;
    if (_fileOutputs is EqualUnmodifiableListView) return _fileOutputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _imageOutputs;
  @override
  @JsonKey(name: 'image_outputs')
  List<dynamic>? get imageOutputs {
    final value = _imageOutputs;
    if (value == null) return null;
    if (_imageOutputs is EqualUnmodifiableListView) return _imageOutputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _streamOutputs;
  @override
  @JsonKey(name: 'stream_outputs')
  List<dynamic>? get streamOutputs {
    final value = _streamOutputs;
    if (value == null) return null;
    if (_streamOutputs is EqualUnmodifiableListView) return _streamOutputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'custom_base_url')
  final String? customBaseUrl;
  final List<dynamic>? _segmentOutputs;
  @override
  @JsonKey(name: 'segment_outputs')
  List<dynamic>? get segmentOutputs {
    final value = _segmentOutputs;
    if (value == null) return null;
    if (_segmentOutputs is EqualUnmodifiableListView) return _segmentOutputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomCompositeModel(file: $file, layout: $layout, advanced: $advanced, webhooks: $webhooks, roomName: $roomName, audioOnly: $audioOnly, videoOnly: $videoOnly, audioMixing: $audioMixing, fileOutputs: $fileOutputs, imageOutputs: $imageOutputs, streamOutputs: $streamOutputs, customBaseUrl: $customBaseUrl, segmentOutputs: $segmentOutputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomCompositeModelImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.advanced, advanced) ||
                other.advanced == advanced) &&
            const DeepCollectionEquality().equals(other._webhooks, _webhooks) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.audioOnly, audioOnly) ||
                other.audioOnly == audioOnly) &&
            (identical(other.videoOnly, videoOnly) ||
                other.videoOnly == videoOnly) &&
            (identical(other.audioMixing, audioMixing) ||
                other.audioMixing == audioMixing) &&
            const DeepCollectionEquality()
                .equals(other._fileOutputs, _fileOutputs) &&
            const DeepCollectionEquality()
                .equals(other._imageOutputs, _imageOutputs) &&
            const DeepCollectionEquality()
                .equals(other._streamOutputs, _streamOutputs) &&
            (identical(other.customBaseUrl, customBaseUrl) ||
                other.customBaseUrl == customBaseUrl) &&
            const DeepCollectionEquality()
                .equals(other._segmentOutputs, _segmentOutputs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      file,
      layout,
      advanced,
      const DeepCollectionEquality().hash(_webhooks),
      roomName,
      audioOnly,
      videoOnly,
      audioMixing,
      const DeepCollectionEquality().hash(_fileOutputs),
      const DeepCollectionEquality().hash(_imageOutputs),
      const DeepCollectionEquality().hash(_streamOutputs),
      customBaseUrl,
      const DeepCollectionEquality().hash(_segmentOutputs));

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomCompositeModelImplCopyWith<_$RoomCompositeModelImpl> get copyWith =>
      __$$RoomCompositeModelImplCopyWithImpl<_$RoomCompositeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomCompositeModelImplToJson(
      this,
    );
  }
}

abstract class _RoomCompositeModel implements RoomCompositeModel {
  const factory _RoomCompositeModel(
      {final RoomCompositeFileModel? file,
      final String? layout,
      final RoomCompositeAdvancedModel? advanced,
      final List<dynamic>? webhooks,
      @JsonKey(name: 'room_name') final String? roomName,
      @JsonKey(name: 'audio_only') final bool? audioOnly,
      @JsonKey(name: 'video_only') final bool? videoOnly,
      @JsonKey(name: 'audio_mixing') final String? audioMixing,
      @JsonKey(name: 'file_outputs') final List<dynamic>? fileOutputs,
      @JsonKey(name: 'image_outputs') final List<dynamic>? imageOutputs,
      @JsonKey(name: 'stream_outputs') final List<dynamic>? streamOutputs,
      @JsonKey(name: 'custom_base_url') final String? customBaseUrl,
      @JsonKey(name: 'segment_outputs')
      final List<dynamic>? segmentOutputs}) = _$RoomCompositeModelImpl;

  factory _RoomCompositeModel.fromJson(Map<String, dynamic> json) =
      _$RoomCompositeModelImpl.fromJson;

  @override
  RoomCompositeFileModel? get file;
  @override
  String? get layout;
  @override
  RoomCompositeAdvancedModel? get advanced;
  @override
  List<dynamic>? get webhooks;
  @override
  @JsonKey(name: 'room_name')
  String? get roomName;
  @override
  @JsonKey(name: 'audio_only')
  bool? get audioOnly;
  @override
  @JsonKey(name: 'video_only')
  bool? get videoOnly;
  @override
  @JsonKey(name: 'audio_mixing')
  String? get audioMixing;
  @override
  @JsonKey(name: 'file_outputs')
  List<dynamic>? get fileOutputs;
  @override
  @JsonKey(name: 'image_outputs')
  List<dynamic>? get imageOutputs;
  @override
  @JsonKey(name: 'stream_outputs')
  List<dynamic>? get streamOutputs;
  @override
  @JsonKey(name: 'custom_base_url')
  String? get customBaseUrl;
  @override
  @JsonKey(name: 'segment_outputs')
  List<dynamic>? get segmentOutputs;

  /// Create a copy of RoomCompositeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomCompositeModelImplCopyWith<_$RoomCompositeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomCompositeFileModel _$RoomCompositeFileModelFromJson(
    Map<String, dynamic> json) {
  return _RoomCompositeFileModel.fromJson(json);
}

/// @nodoc
mixin _$RoomCompositeFileModel {
  String? get filepath => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type')
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'disable_manifest')
  bool? get disableManifest => throw _privateConstructorUsedError;

  /// Serializes this RoomCompositeFileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomCompositeFileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCompositeFileModelCopyWith<RoomCompositeFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCompositeFileModelCopyWith<$Res> {
  factory $RoomCompositeFileModelCopyWith(RoomCompositeFileModel value,
          $Res Function(RoomCompositeFileModel) then) =
      _$RoomCompositeFileModelCopyWithImpl<$Res, RoomCompositeFileModel>;
  @useResult
  $Res call(
      {String? filepath,
      @JsonKey(name: 'file_type') String? fileType,
      @JsonKey(name: 'disable_manifest') bool? disableManifest});
}

/// @nodoc
class _$RoomCompositeFileModelCopyWithImpl<$Res,
        $Val extends RoomCompositeFileModel>
    implements $RoomCompositeFileModelCopyWith<$Res> {
  _$RoomCompositeFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomCompositeFileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filepath = freezed,
    Object? fileType = freezed,
    Object? disableManifest = freezed,
  }) {
    return _then(_value.copyWith(
      filepath: freezed == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      disableManifest: freezed == disableManifest
          ? _value.disableManifest
          : disableManifest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomCompositeFileModelImplCopyWith<$Res>
    implements $RoomCompositeFileModelCopyWith<$Res> {
  factory _$$RoomCompositeFileModelImplCopyWith(
          _$RoomCompositeFileModelImpl value,
          $Res Function(_$RoomCompositeFileModelImpl) then) =
      __$$RoomCompositeFileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? filepath,
      @JsonKey(name: 'file_type') String? fileType,
      @JsonKey(name: 'disable_manifest') bool? disableManifest});
}

/// @nodoc
class __$$RoomCompositeFileModelImplCopyWithImpl<$Res>
    extends _$RoomCompositeFileModelCopyWithImpl<$Res,
        _$RoomCompositeFileModelImpl>
    implements _$$RoomCompositeFileModelImplCopyWith<$Res> {
  __$$RoomCompositeFileModelImplCopyWithImpl(
      _$RoomCompositeFileModelImpl _value,
      $Res Function(_$RoomCompositeFileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomCompositeFileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filepath = freezed,
    Object? fileType = freezed,
    Object? disableManifest = freezed,
  }) {
    return _then(_$RoomCompositeFileModelImpl(
      filepath: freezed == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      disableManifest: freezed == disableManifest
          ? _value.disableManifest
          : disableManifest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomCompositeFileModelImpl implements _RoomCompositeFileModel {
  const _$RoomCompositeFileModelImpl(
      {this.filepath,
      @JsonKey(name: 'file_type') this.fileType,
      @JsonKey(name: 'disable_manifest') this.disableManifest});

  factory _$RoomCompositeFileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomCompositeFileModelImplFromJson(json);

  @override
  final String? filepath;
  @override
  @JsonKey(name: 'file_type')
  final String? fileType;
  @override
  @JsonKey(name: 'disable_manifest')
  final bool? disableManifest;

  @override
  String toString() {
    return 'RoomCompositeFileModel(filepath: $filepath, fileType: $fileType, disableManifest: $disableManifest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomCompositeFileModelImpl &&
            (identical(other.filepath, filepath) ||
                other.filepath == filepath) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.disableManifest, disableManifest) ||
                other.disableManifest == disableManifest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filepath, fileType, disableManifest);

  /// Create a copy of RoomCompositeFileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomCompositeFileModelImplCopyWith<_$RoomCompositeFileModelImpl>
      get copyWith => __$$RoomCompositeFileModelImplCopyWithImpl<
          _$RoomCompositeFileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomCompositeFileModelImplToJson(
      this,
    );
  }
}

abstract class _RoomCompositeFileModel implements RoomCompositeFileModel {
  const factory _RoomCompositeFileModel(
          {final String? filepath,
          @JsonKey(name: 'file_type') final String? fileType,
          @JsonKey(name: 'disable_manifest') final bool? disableManifest}) =
      _$RoomCompositeFileModelImpl;

  factory _RoomCompositeFileModel.fromJson(Map<String, dynamic> json) =
      _$RoomCompositeFileModelImpl.fromJson;

  @override
  String? get filepath;
  @override
  @JsonKey(name: 'file_type')
  String? get fileType;
  @override
  @JsonKey(name: 'disable_manifest')
  bool? get disableManifest;

  /// Create a copy of RoomCompositeFileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomCompositeFileModelImplCopyWith<_$RoomCompositeFileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RoomCompositeAdvancedModel _$RoomCompositeAdvancedModelFromJson(
    Map<String, dynamic> json) {
  return _RoomCompositeAdvancedModel.fromJson(json);
}

/// @nodoc
mixin _$RoomCompositeAdvancedModel {
  int? get depth => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get framerate => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_codec')
  String? get audioCodec => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_codec')
  String? get videoCodec => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_bitrate')
  int? get audioBitrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_quality')
  int? get audioQuality => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_bitrate')
  int? get videoBitrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_quality')
  int? get videoQuality => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_frequency')
  int? get audioFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_frame_interval')
  int? get keyFrameInterval => throw _privateConstructorUsedError;

  /// Serializes this RoomCompositeAdvancedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomCompositeAdvancedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCompositeAdvancedModelCopyWith<RoomCompositeAdvancedModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCompositeAdvancedModelCopyWith<$Res> {
  factory $RoomCompositeAdvancedModelCopyWith(RoomCompositeAdvancedModel value,
          $Res Function(RoomCompositeAdvancedModel) then) =
      _$RoomCompositeAdvancedModelCopyWithImpl<$Res,
          RoomCompositeAdvancedModel>;
  @useResult
  $Res call(
      {int? depth,
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
      @JsonKey(name: 'key_frame_interval') int? keyFrameInterval});
}

/// @nodoc
class _$RoomCompositeAdvancedModelCopyWithImpl<$Res,
        $Val extends RoomCompositeAdvancedModel>
    implements $RoomCompositeAdvancedModelCopyWith<$Res> {
  _$RoomCompositeAdvancedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomCompositeAdvancedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depth = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? framerate = freezed,
    Object? audioCodec = freezed,
    Object? videoCodec = freezed,
    Object? audioBitrate = freezed,
    Object? audioQuality = freezed,
    Object? videoBitrate = freezed,
    Object? videoQuality = freezed,
    Object? audioFrequency = freezed,
    Object? keyFrameInterval = freezed,
  }) {
    return _then(_value.copyWith(
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      framerate: freezed == framerate
          ? _value.framerate
          : framerate // ignore: cast_nullable_to_non_nullable
              as int?,
      audioCodec: freezed == audioCodec
          ? _value.audioCodec
          : audioCodec // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCodec: freezed == videoCodec
          ? _value.videoCodec
          : videoCodec // ignore: cast_nullable_to_non_nullable
              as String?,
      audioBitrate: freezed == audioBitrate
          ? _value.audioBitrate
          : audioBitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      audioQuality: freezed == audioQuality
          ? _value.audioQuality
          : audioQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      videoBitrate: freezed == videoBitrate
          ? _value.videoBitrate
          : videoBitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      videoQuality: freezed == videoQuality
          ? _value.videoQuality
          : videoQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      audioFrequency: freezed == audioFrequency
          ? _value.audioFrequency
          : audioFrequency // ignore: cast_nullable_to_non_nullable
              as int?,
      keyFrameInterval: freezed == keyFrameInterval
          ? _value.keyFrameInterval
          : keyFrameInterval // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomCompositeAdvancedModelImplCopyWith<$Res>
    implements $RoomCompositeAdvancedModelCopyWith<$Res> {
  factory _$$RoomCompositeAdvancedModelImplCopyWith(
          _$RoomCompositeAdvancedModelImpl value,
          $Res Function(_$RoomCompositeAdvancedModelImpl) then) =
      __$$RoomCompositeAdvancedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? depth,
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
      @JsonKey(name: 'key_frame_interval') int? keyFrameInterval});
}

/// @nodoc
class __$$RoomCompositeAdvancedModelImplCopyWithImpl<$Res>
    extends _$RoomCompositeAdvancedModelCopyWithImpl<$Res,
        _$RoomCompositeAdvancedModelImpl>
    implements _$$RoomCompositeAdvancedModelImplCopyWith<$Res> {
  __$$RoomCompositeAdvancedModelImplCopyWithImpl(
      _$RoomCompositeAdvancedModelImpl _value,
      $Res Function(_$RoomCompositeAdvancedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomCompositeAdvancedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depth = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? framerate = freezed,
    Object? audioCodec = freezed,
    Object? videoCodec = freezed,
    Object? audioBitrate = freezed,
    Object? audioQuality = freezed,
    Object? videoBitrate = freezed,
    Object? videoQuality = freezed,
    Object? audioFrequency = freezed,
    Object? keyFrameInterval = freezed,
  }) {
    return _then(_$RoomCompositeAdvancedModelImpl(
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      framerate: freezed == framerate
          ? _value.framerate
          : framerate // ignore: cast_nullable_to_non_nullable
              as int?,
      audioCodec: freezed == audioCodec
          ? _value.audioCodec
          : audioCodec // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCodec: freezed == videoCodec
          ? _value.videoCodec
          : videoCodec // ignore: cast_nullable_to_non_nullable
              as String?,
      audioBitrate: freezed == audioBitrate
          ? _value.audioBitrate
          : audioBitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      audioQuality: freezed == audioQuality
          ? _value.audioQuality
          : audioQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      videoBitrate: freezed == videoBitrate
          ? _value.videoBitrate
          : videoBitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      videoQuality: freezed == videoQuality
          ? _value.videoQuality
          : videoQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      audioFrequency: freezed == audioFrequency
          ? _value.audioFrequency
          : audioFrequency // ignore: cast_nullable_to_non_nullable
              as int?,
      keyFrameInterval: freezed == keyFrameInterval
          ? _value.keyFrameInterval
          : keyFrameInterval // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomCompositeAdvancedModelImpl implements _RoomCompositeAdvancedModel {
  const _$RoomCompositeAdvancedModelImpl(
      {this.depth,
      this.width,
      this.height,
      this.framerate,
      @JsonKey(name: 'audio_codec') this.audioCodec,
      @JsonKey(name: 'video_codec') this.videoCodec,
      @JsonKey(name: 'audio_bitrate') this.audioBitrate,
      @JsonKey(name: 'audio_quality') this.audioQuality,
      @JsonKey(name: 'video_bitrate') this.videoBitrate,
      @JsonKey(name: 'video_quality') this.videoQuality,
      @JsonKey(name: 'audio_frequency') this.audioFrequency,
      @JsonKey(name: 'key_frame_interval') this.keyFrameInterval});

  factory _$RoomCompositeAdvancedModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RoomCompositeAdvancedModelImplFromJson(json);

  @override
  final int? depth;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? framerate;
  @override
  @JsonKey(name: 'audio_codec')
  final String? audioCodec;
  @override
  @JsonKey(name: 'video_codec')
  final String? videoCodec;
  @override
  @JsonKey(name: 'audio_bitrate')
  final int? audioBitrate;
  @override
  @JsonKey(name: 'audio_quality')
  final int? audioQuality;
  @override
  @JsonKey(name: 'video_bitrate')
  final int? videoBitrate;
  @override
  @JsonKey(name: 'video_quality')
  final int? videoQuality;
  @override
  @JsonKey(name: 'audio_frequency')
  final int? audioFrequency;
  @override
  @JsonKey(name: 'key_frame_interval')
  final int? keyFrameInterval;

  @override
  String toString() {
    return 'RoomCompositeAdvancedModel(depth: $depth, width: $width, height: $height, framerate: $framerate, audioCodec: $audioCodec, videoCodec: $videoCodec, audioBitrate: $audioBitrate, audioQuality: $audioQuality, videoBitrate: $videoBitrate, videoQuality: $videoQuality, audioFrequency: $audioFrequency, keyFrameInterval: $keyFrameInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomCompositeAdvancedModelImpl &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.framerate, framerate) ||
                other.framerate == framerate) &&
            (identical(other.audioCodec, audioCodec) ||
                other.audioCodec == audioCodec) &&
            (identical(other.videoCodec, videoCodec) ||
                other.videoCodec == videoCodec) &&
            (identical(other.audioBitrate, audioBitrate) ||
                other.audioBitrate == audioBitrate) &&
            (identical(other.audioQuality, audioQuality) ||
                other.audioQuality == audioQuality) &&
            (identical(other.videoBitrate, videoBitrate) ||
                other.videoBitrate == videoBitrate) &&
            (identical(other.videoQuality, videoQuality) ||
                other.videoQuality == videoQuality) &&
            (identical(other.audioFrequency, audioFrequency) ||
                other.audioFrequency == audioFrequency) &&
            (identical(other.keyFrameInterval, keyFrameInterval) ||
                other.keyFrameInterval == keyFrameInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      depth,
      width,
      height,
      framerate,
      audioCodec,
      videoCodec,
      audioBitrate,
      audioQuality,
      videoBitrate,
      videoQuality,
      audioFrequency,
      keyFrameInterval);

  /// Create a copy of RoomCompositeAdvancedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomCompositeAdvancedModelImplCopyWith<_$RoomCompositeAdvancedModelImpl>
      get copyWith => __$$RoomCompositeAdvancedModelImplCopyWithImpl<
          _$RoomCompositeAdvancedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomCompositeAdvancedModelImplToJson(
      this,
    );
  }
}

abstract class _RoomCompositeAdvancedModel
    implements RoomCompositeAdvancedModel {
  const factory _RoomCompositeAdvancedModel(
          {final int? depth,
          final int? width,
          final int? height,
          final int? framerate,
          @JsonKey(name: 'audio_codec') final String? audioCodec,
          @JsonKey(name: 'video_codec') final String? videoCodec,
          @JsonKey(name: 'audio_bitrate') final int? audioBitrate,
          @JsonKey(name: 'audio_quality') final int? audioQuality,
          @JsonKey(name: 'video_bitrate') final int? videoBitrate,
          @JsonKey(name: 'video_quality') final int? videoQuality,
          @JsonKey(name: 'audio_frequency') final int? audioFrequency,
          @JsonKey(name: 'key_frame_interval') final int? keyFrameInterval}) =
      _$RoomCompositeAdvancedModelImpl;

  factory _RoomCompositeAdvancedModel.fromJson(Map<String, dynamic> json) =
      _$RoomCompositeAdvancedModelImpl.fromJson;

  @override
  int? get depth;
  @override
  int? get width;
  @override
  int? get height;
  @override
  int? get framerate;
  @override
  @JsonKey(name: 'audio_codec')
  String? get audioCodec;
  @override
  @JsonKey(name: 'video_codec')
  String? get videoCodec;
  @override
  @JsonKey(name: 'audio_bitrate')
  int? get audioBitrate;
  @override
  @JsonKey(name: 'audio_quality')
  int? get audioQuality;
  @override
  @JsonKey(name: 'video_bitrate')
  int? get videoBitrate;
  @override
  @JsonKey(name: 'video_quality')
  int? get videoQuality;
  @override
  @JsonKey(name: 'audio_frequency')
  int? get audioFrequency;
  @override
  @JsonKey(name: 'key_frame_interval')
  int? get keyFrameInterval;

  /// Create a copy of RoomCompositeAdvancedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomCompositeAdvancedModelImplCopyWith<_$RoomCompositeAdvancedModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
