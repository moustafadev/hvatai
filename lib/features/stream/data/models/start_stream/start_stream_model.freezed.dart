// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_stream_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartStreamModel _$StartStreamModelFromJson(Map<String, dynamic> json) {
  return _StartStreamModel.fromJson(json);
}

/// @nodoc
mixin _$StartStreamModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StreamData get data => throw _privateConstructorUsedError;
  String? get room => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_url')
  String? get livekitUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_publisher')
  bool? get isPublisher => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gif_url')
  String? get gifUrl => throw _privateConstructorUsedError;

  /// Serializes this StartStreamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartStreamModelCopyWith<StartStreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartStreamModelCopyWith<$Res> {
  factory $StartStreamModelCopyWith(
          StartStreamModel value, $Res Function(StartStreamModel) then) =
      _$StartStreamModelCopyWithImpl<$Res, StartStreamModel>;
  @useResult
  $Res call(
      {bool success,
      String message,
      StreamData data,
      String? room,
      String? token,
      @JsonKey(name: 'livekit_url') String? livekitUrl,
      @JsonKey(name: 'is_publisher') bool? isPublisher,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'gif_url') String? gifUrl});

  $StreamDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StartStreamModelCopyWithImpl<$Res, $Val extends StartStreamModel>
    implements $StartStreamModelCopyWith<$Res> {
  _$StartStreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? room = freezed,
    Object? token = freezed,
    Object? livekitUrl = freezed,
    Object? isPublisher = freezed,
    Object? thumbnailUrl = freezed,
    Object? gifUrl = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamData,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitUrl: freezed == livekitUrl
          ? _value.livekitUrl
          : livekitUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublisher: freezed == isPublisher
          ? _value.isPublisher
          : isPublisher // ignore: cast_nullable_to_non_nullable
              as bool?,
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

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamDataCopyWith<$Res> get data {
    return $StreamDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartStreamModelImplCopyWith<$Res>
    implements $StartStreamModelCopyWith<$Res> {
  factory _$$StartStreamModelImplCopyWith(_$StartStreamModelImpl value,
          $Res Function(_$StartStreamModelImpl) then) =
      __$$StartStreamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      StreamData data,
      String? room,
      String? token,
      @JsonKey(name: 'livekit_url') String? livekitUrl,
      @JsonKey(name: 'is_publisher') bool? isPublisher,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'gif_url') String? gifUrl});

  @override
  $StreamDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StartStreamModelImplCopyWithImpl<$Res>
    extends _$StartStreamModelCopyWithImpl<$Res, _$StartStreamModelImpl>
    implements _$$StartStreamModelImplCopyWith<$Res> {
  __$$StartStreamModelImplCopyWithImpl(_$StartStreamModelImpl _value,
      $Res Function(_$StartStreamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? room = freezed,
    Object? token = freezed,
    Object? livekitUrl = freezed,
    Object? isPublisher = freezed,
    Object? thumbnailUrl = freezed,
    Object? gifUrl = freezed,
  }) {
    return _then(_$StartStreamModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamData,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      livekitUrl: freezed == livekitUrl
          ? _value.livekitUrl
          : livekitUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublisher: freezed == isPublisher
          ? _value.isPublisher
          : isPublisher // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$StartStreamModelImpl implements _StartStreamModel {
  const _$StartStreamModelImpl(
      {required this.success,
      required this.message,
      required this.data,
      this.room,
      this.token,
      @JsonKey(name: 'livekit_url') this.livekitUrl,
      @JsonKey(name: 'is_publisher') this.isPublisher,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'gif_url') this.gifUrl});

  factory _$StartStreamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartStreamModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final StreamData data;
  @override
  final String? room;
  @override
  final String? token;
  @override
  @JsonKey(name: 'livekit_url')
  final String? livekitUrl;
  @override
  @JsonKey(name: 'is_publisher')
  final bool? isPublisher;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'gif_url')
  final String? gifUrl;

  @override
  String toString() {
    return 'StartStreamModel(success: $success, message: $message, data: $data, room: $room, token: $token, livekitUrl: $livekitUrl, isPublisher: $isPublisher, thumbnailUrl: $thumbnailUrl, gifUrl: $gifUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartStreamModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.livekitUrl, livekitUrl) ||
                other.livekitUrl == livekitUrl) &&
            (identical(other.isPublisher, isPublisher) ||
                other.isPublisher == isPublisher) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.gifUrl, gifUrl) || other.gifUrl == gifUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data, room,
      token, livekitUrl, isPublisher, thumbnailUrl, gifUrl);

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartStreamModelImplCopyWith<_$StartStreamModelImpl> get copyWith =>
      __$$StartStreamModelImplCopyWithImpl<_$StartStreamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartStreamModelImplToJson(
      this,
    );
  }
}

abstract class _StartStreamModel implements StartStreamModel {
  const factory _StartStreamModel(
      {required final bool success,
      required final String message,
      required final StreamData data,
      final String? room,
      final String? token,
      @JsonKey(name: 'livekit_url') final String? livekitUrl,
      @JsonKey(name: 'is_publisher') final bool? isPublisher,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'gif_url') final String? gifUrl}) = _$StartStreamModelImpl;

  factory _StartStreamModel.fromJson(Map<String, dynamic> json) =
      _$StartStreamModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  StreamData get data;
  @override
  String? get room;
  @override
  String? get token;
  @override
  @JsonKey(name: 'livekit_url')
  String? get livekitUrl;
  @override
  @JsonKey(name: 'is_publisher')
  bool? get isPublisher;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'gif_url')
  String? get gifUrl;

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartStreamModelImplCopyWith<_$StartStreamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamData _$StreamDataFromJson(Map<String, dynamic> json) {
  return _StreamData.fromJson(json);
}

/// @nodoc
mixin _$StreamData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_name')
  String get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_live_stream_id')
  String? get muxLiveStreamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_playback_id')
  String? get muxPlaybackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_stream_key')
  String? get muxStreamKey => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_recording_enabled')
  bool? get isRecordingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_sid')
  String? get recordingSid => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_files')
  String? get recordingFiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_thumbnail_url')
  String? get latestThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_gif_url')
  String? get latestGifUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_history')
  List<dynamic>? get thumbnailHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'gif_history')
  List<dynamic>? get gifHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_thumbnail_generated_at')
  DateTime? get lastThumbnailGeneratedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_gif_generated_at')
  DateTime? get lastGifGeneratedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int? get viewerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_viewers')
  int? get maxViewers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool? get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'minimum_bid_increment')
  String? get minimumBidIncrement => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_settings')
  StreamSettings? get streamSettings => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_url')
  String? get recordUrl => throw _privateConstructorUsedError;

  /// Serializes this StreamData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamDataCopyWith<StreamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamDataCopyWith<$Res> {
  factory $StreamDataCopyWith(
          StreamData value, $Res Function(StreamData) then) =
      _$StreamDataCopyWithImpl<$Res, StreamData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String? title,
      String? description,
      @JsonKey(name: 'channel_name') String channelName,
      @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
      String status,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
      @JsonKey(name: 'started_at') DateTime startedAt,
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
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'auto_delete_after_end') bool? autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') int? autoDeleteHours,
      @JsonKey(name: 'save_recording') bool? saveRecording,
      @JsonKey(name: 'enable_comments') bool? enableComments,
      @JsonKey(name: 'enable_bidding') bool? enableBidding,
      @JsonKey(name: 'minimum_bid_increment') String? minimumBidIncrement,
      @JsonKey(name: 'stream_settings') StreamSettings? streamSettings,
      @JsonKey(name: 'record_url') String? recordUrl});

  $StreamSettingsCopyWith<$Res>? get streamSettings;
}

/// @nodoc
class _$StreamDataCopyWithImpl<$Res, $Val extends StreamData>
    implements $StreamDataCopyWith<$Res> {
  _$StreamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelName = null,
    Object? muxLiveStreamId = freezed,
    Object? muxPlaybackId = freezed,
    Object? muxStreamKey = freezed,
    Object? status = null,
    Object? scheduledAt = freezed,
    Object? startedAt = null,
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
    Object? lastThumbnailGeneratedAt = freezed,
    Object? lastGifGeneratedAt = freezed,
    Object? viewerCount = freezed,
    Object? maxViewers = freezed,
    Object? isPublic = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? autoDeleteAfterEnd = freezed,
    Object? autoDeleteHours = freezed,
    Object? saveRecording = freezed,
    Object? enableComments = freezed,
    Object? enableBidding = freezed,
    Object? minimumBidIncrement = freezed,
    Object? streamSettings = freezed,
    Object? recordUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      muxLiveStreamId: freezed == muxLiveStreamId
          ? _value.muxLiveStreamId
          : muxLiveStreamId // ignore: cast_nullable_to_non_nullable
              as String?,
      muxPlaybackId: freezed == muxPlaybackId
          ? _value.muxPlaybackId
          : muxPlaybackId // ignore: cast_nullable_to_non_nullable
              as String?,
      muxStreamKey: freezed == muxStreamKey
          ? _value.muxStreamKey
          : muxStreamKey // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as String?,
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
              as List<dynamic>?,
      gifHistory: freezed == gifHistory
          ? _value.gifHistory
          : gifHistory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      lastThumbnailGeneratedAt: freezed == lastThumbnailGeneratedAt
          ? _value.lastThumbnailGeneratedAt
          : lastThumbnailGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastGifGeneratedAt: freezed == lastGifGeneratedAt
          ? _value.lastGifGeneratedAt
          : lastGifGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as String?,
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as StreamSettings?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamSettingsCopyWith<$Res>? get streamSettings {
    if (_value.streamSettings == null) {
      return null;
    }

    return $StreamSettingsCopyWith<$Res>(_value.streamSettings!, (value) {
      return _then(_value.copyWith(streamSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamDataImplCopyWith<$Res>
    implements $StreamDataCopyWith<$Res> {
  factory _$$StreamDataImplCopyWith(
          _$StreamDataImpl value, $Res Function(_$StreamDataImpl) then) =
      __$$StreamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String? title,
      String? description,
      @JsonKey(name: 'channel_name') String channelName,
      @JsonKey(name: 'mux_live_stream_id') String? muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') String? muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') String? muxStreamKey,
      String status,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
      @JsonKey(name: 'started_at') DateTime startedAt,
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
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'auto_delete_after_end') bool? autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') int? autoDeleteHours,
      @JsonKey(name: 'save_recording') bool? saveRecording,
      @JsonKey(name: 'enable_comments') bool? enableComments,
      @JsonKey(name: 'enable_bidding') bool? enableBidding,
      @JsonKey(name: 'minimum_bid_increment') String? minimumBidIncrement,
      @JsonKey(name: 'stream_settings') StreamSettings? streamSettings,
      @JsonKey(name: 'record_url') String? recordUrl});

  @override
  $StreamSettingsCopyWith<$Res>? get streamSettings;
}

/// @nodoc
class __$$StreamDataImplCopyWithImpl<$Res>
    extends _$StreamDataCopyWithImpl<$Res, _$StreamDataImpl>
    implements _$$StreamDataImplCopyWith<$Res> {
  __$$StreamDataImplCopyWithImpl(
      _$StreamDataImpl _value, $Res Function(_$StreamDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelName = null,
    Object? muxLiveStreamId = freezed,
    Object? muxPlaybackId = freezed,
    Object? muxStreamKey = freezed,
    Object? status = null,
    Object? scheduledAt = freezed,
    Object? startedAt = null,
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
    Object? lastThumbnailGeneratedAt = freezed,
    Object? lastGifGeneratedAt = freezed,
    Object? viewerCount = freezed,
    Object? maxViewers = freezed,
    Object? isPublic = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? autoDeleteAfterEnd = freezed,
    Object? autoDeleteHours = freezed,
    Object? saveRecording = freezed,
    Object? enableComments = freezed,
    Object? enableBidding = freezed,
    Object? minimumBidIncrement = freezed,
    Object? streamSettings = freezed,
    Object? recordUrl = freezed,
  }) {
    return _then(_$StreamDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      muxLiveStreamId: freezed == muxLiveStreamId
          ? _value.muxLiveStreamId
          : muxLiveStreamId // ignore: cast_nullable_to_non_nullable
              as String?,
      muxPlaybackId: freezed == muxPlaybackId
          ? _value.muxPlaybackId
          : muxPlaybackId // ignore: cast_nullable_to_non_nullable
              as String?,
      muxStreamKey: freezed == muxStreamKey
          ? _value.muxStreamKey
          : muxStreamKey // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as String?,
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
              as List<dynamic>?,
      gifHistory: freezed == gifHistory
          ? _value._gifHistory
          : gifHistory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      lastThumbnailGeneratedAt: freezed == lastThumbnailGeneratedAt
          ? _value.lastThumbnailGeneratedAt
          : lastThumbnailGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastGifGeneratedAt: freezed == lastGifGeneratedAt
          ? _value.lastGifGeneratedAt
          : lastGifGeneratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as String?,
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as StreamSettings?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamDataImpl implements _StreamData {
  const _$StreamDataImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      this.title,
      this.description,
      @JsonKey(name: 'channel_name') required this.channelName,
      @JsonKey(name: 'mux_live_stream_id') this.muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') this.muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') this.muxStreamKey,
      required this.status,
      @JsonKey(name: 'scheduled_at') this.scheduledAt,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'is_recording_enabled') this.isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') this.recordingResourceId,
      @JsonKey(name: 'recording_sid') this.recordingSid,
      @JsonKey(name: 'recording_files') this.recordingFiles,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') this.latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') this.latestGifUrl,
      @JsonKey(name: 'thumbnail_history') final List<dynamic>? thumbnailHistory,
      @JsonKey(name: 'gif_history') final List<dynamic>? gifHistory,
      @JsonKey(name: 'last_thumbnail_generated_at')
      this.lastThumbnailGeneratedAt,
      @JsonKey(name: 'last_gif_generated_at') this.lastGifGeneratedAt,
      @JsonKey(name: 'viewer_count') this.viewerCount,
      @JsonKey(name: 'max_viewers') this.maxViewers,
      @JsonKey(name: 'is_public') this.isPublic,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'auto_delete_after_end') this.autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') this.autoDeleteHours,
      @JsonKey(name: 'save_recording') this.saveRecording,
      @JsonKey(name: 'enable_comments') this.enableComments,
      @JsonKey(name: 'enable_bidding') this.enableBidding,
      @JsonKey(name: 'minimum_bid_increment') this.minimumBidIncrement,
      @JsonKey(name: 'stream_settings') this.streamSettings,
      @JsonKey(name: 'record_url') this.recordUrl})
      : _thumbnailHistory = thumbnailHistory,
        _gifHistory = gifHistory;

  factory _$StreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'channel_name')
  final String channelName;
  @override
  @JsonKey(name: 'mux_live_stream_id')
  final String? muxLiveStreamId;
  @override
  @JsonKey(name: 'mux_playback_id')
  final String? muxPlaybackId;
  @override
  @JsonKey(name: 'mux_stream_key')
  final String? muxStreamKey;
  @override
  final String status;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: 'started_at')
  final DateTime startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  final bool? isRecordingEnabled;
  @override
  @JsonKey(name: 'recording_resource_id')
  final String? recordingResourceId;
  @override
  @JsonKey(name: 'recording_sid')
  final String? recordingSid;
  @override
  @JsonKey(name: 'recording_files')
  final String? recordingFiles;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'latest_thumbnail_url')
  final String? latestThumbnailUrl;
  @override
  @JsonKey(name: 'latest_gif_url')
  final String? latestGifUrl;
  final List<dynamic>? _thumbnailHistory;
  @override
  @JsonKey(name: 'thumbnail_history')
  List<dynamic>? get thumbnailHistory {
    final value = _thumbnailHistory;
    if (value == null) return null;
    if (_thumbnailHistory is EqualUnmodifiableListView)
      return _thumbnailHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _gifHistory;
  @override
  @JsonKey(name: 'gif_history')
  List<dynamic>? get gifHistory {
    final value = _gifHistory;
    if (value == null) return null;
    if (_gifHistory is EqualUnmodifiableListView) return _gifHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'last_thumbnail_generated_at')
  final DateTime? lastThumbnailGeneratedAt;
  @override
  @JsonKey(name: 'last_gif_generated_at')
  final DateTime? lastGifGeneratedAt;
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
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
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
  @JsonKey(name: 'minimum_bid_increment')
  final String? minimumBidIncrement;
  @override
  @JsonKey(name: 'stream_settings')
  final StreamSettings? streamSettings;
  @override
  @JsonKey(name: 'record_url')
  final String? recordUrl;

  @override
  String toString() {
    return 'StreamData(id: $id, userId: $userId, title: $title, description: $description, channelName: $channelName, muxLiveStreamId: $muxLiveStreamId, muxPlaybackId: $muxPlaybackId, muxStreamKey: $muxStreamKey, status: $status, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, isRecordingEnabled: $isRecordingEnabled, recordingResourceId: $recordingResourceId, recordingSid: $recordingSid, recordingFiles: $recordingFiles, thumbnailUrl: $thumbnailUrl, latestThumbnailUrl: $latestThumbnailUrl, latestGifUrl: $latestGifUrl, thumbnailHistory: $thumbnailHistory, gifHistory: $gifHistory, lastThumbnailGeneratedAt: $lastThumbnailGeneratedAt, lastGifGeneratedAt: $lastGifGeneratedAt, viewerCount: $viewerCount, maxViewers: $maxViewers, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt, autoDeleteAfterEnd: $autoDeleteAfterEnd, autoDeleteHours: $autoDeleteHours, saveRecording: $saveRecording, enableComments: $enableComments, enableBidding: $enableBidding, minimumBidIncrement: $minimumBidIncrement, streamSettings: $streamSettings, recordUrl: $recordUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.muxLiveStreamId, muxLiveStreamId) ||
                other.muxLiveStreamId == muxLiveStreamId) &&
            (identical(other.muxPlaybackId, muxPlaybackId) ||
                other.muxPlaybackId == muxPlaybackId) &&
            (identical(other.muxStreamKey, muxStreamKey) ||
                other.muxStreamKey == muxStreamKey) &&
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
            (identical(other.recordingFiles, recordingFiles) ||
                other.recordingFiles == recordingFiles) &&
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
            (identical(
                    other.lastThumbnailGeneratedAt, lastThumbnailGeneratedAt) ||
                other.lastThumbnailGeneratedAt == lastThumbnailGeneratedAt) &&
            (identical(other.lastGifGeneratedAt, lastGifGeneratedAt) ||
                other.lastGifGeneratedAt == lastGifGeneratedAt) &&
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
            (identical(other.streamSettings, streamSettings) ||
                other.streamSettings == streamSettings) &&
            (identical(other.recordUrl, recordUrl) ||
                other.recordUrl == recordUrl));
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
        muxPlaybackId,
        muxStreamKey,
        status,
        scheduledAt,
        startedAt,
        endedAt,
        isRecordingEnabled,
        recordingResourceId,
        recordingSid,
        recordingFiles,
        thumbnailUrl,
        latestThumbnailUrl,
        latestGifUrl,
        const DeepCollectionEquality().hash(_thumbnailHistory),
        const DeepCollectionEquality().hash(_gifHistory),
        lastThumbnailGeneratedAt,
        lastGifGeneratedAt,
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
        streamSettings,
        recordUrl
      ]);

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamDataImplCopyWith<_$StreamDataImpl> get copyWith =>
      __$$StreamDataImplCopyWithImpl<_$StreamDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamDataImplToJson(
      this,
    );
  }
}

abstract class _StreamData implements StreamData {
  const factory _StreamData(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      final String? title,
      final String? description,
      @JsonKey(name: 'channel_name') required final String channelName,
      @JsonKey(name: 'mux_live_stream_id') final String? muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') final String? muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') final String? muxStreamKey,
      required final String status,
      @JsonKey(name: 'scheduled_at') final DateTime? scheduledAt,
      @JsonKey(name: 'started_at') required final DateTime startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled') final bool? isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') final String? recordingResourceId,
      @JsonKey(name: 'recording_sid') final String? recordingSid,
      @JsonKey(name: 'recording_files') final String? recordingFiles,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') final String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') final String? latestGifUrl,
      @JsonKey(name: 'thumbnail_history') final List<dynamic>? thumbnailHistory,
      @JsonKey(name: 'gif_history') final List<dynamic>? gifHistory,
      @JsonKey(name: 'last_thumbnail_generated_at')
      final DateTime? lastThumbnailGeneratedAt,
      @JsonKey(name: 'last_gif_generated_at')
      final DateTime? lastGifGeneratedAt,
      @JsonKey(name: 'viewer_count') final int? viewerCount,
      @JsonKey(name: 'max_viewers') final int? maxViewers,
      @JsonKey(name: 'is_public') final bool? isPublic,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'auto_delete_after_end') final bool? autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') final int? autoDeleteHours,
      @JsonKey(name: 'save_recording') final bool? saveRecording,
      @JsonKey(name: 'enable_comments') final bool? enableComments,
      @JsonKey(name: 'enable_bidding') final bool? enableBidding,
      @JsonKey(name: 'minimum_bid_increment') final String? minimumBidIncrement,
      @JsonKey(name: 'stream_settings') final StreamSettings? streamSettings,
      @JsonKey(name: 'record_url') final String? recordUrl}) = _$StreamDataImpl;

  factory _StreamData.fromJson(Map<String, dynamic> json) =
      _$StreamDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'channel_name')
  String get channelName;
  @override
  @JsonKey(name: 'mux_live_stream_id')
  String? get muxLiveStreamId;
  @override
  @JsonKey(name: 'mux_playback_id')
  String? get muxPlaybackId;
  @override
  @JsonKey(name: 'mux_stream_key')
  String? get muxStreamKey;
  @override
  String get status;
  @override
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt;
  @override
  @JsonKey(name: 'started_at')
  DateTime get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  bool? get isRecordingEnabled;
  @override
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId;
  @override
  @JsonKey(name: 'recording_sid')
  String? get recordingSid;
  @override
  @JsonKey(name: 'recording_files')
  String? get recordingFiles;
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
  @JsonKey(name: 'thumbnail_history')
  List<dynamic>? get thumbnailHistory;
  @override
  @JsonKey(name: 'gif_history')
  List<dynamic>? get gifHistory;
  @override
  @JsonKey(name: 'last_thumbnail_generated_at')
  DateTime? get lastThumbnailGeneratedAt;
  @override
  @JsonKey(name: 'last_gif_generated_at')
  DateTime? get lastGifGeneratedAt;
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
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
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
  @JsonKey(name: 'minimum_bid_increment')
  String? get minimumBidIncrement;
  @override
  @JsonKey(name: 'stream_settings')
  StreamSettings? get streamSettings;
  @override
  @JsonKey(name: 'record_url')
  String? get recordUrl;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamDataImplCopyWith<_$StreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamSettings _$StreamSettingsFromJson(Map<String, dynamic> json) {
  return _StreamSettings.fromJson(json);
}

/// @nodoc
mixin _$StreamSettings {
  LivekitStreamSettings? get livekit => throw _privateConstructorUsedError;

  /// Serializes this StreamSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamSettingsCopyWith<StreamSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamSettingsCopyWith<$Res> {
  factory $StreamSettingsCopyWith(
          StreamSettings value, $Res Function(StreamSettings) then) =
      _$StreamSettingsCopyWithImpl<$Res, StreamSettings>;
  @useResult
  $Res call({LivekitStreamSettings? livekit});

  $LivekitStreamSettingsCopyWith<$Res>? get livekit;
}

/// @nodoc
class _$StreamSettingsCopyWithImpl<$Res, $Val extends StreamSettings>
    implements $StreamSettingsCopyWith<$Res> {
  _$StreamSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamSettings
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
              as LivekitStreamSettings?,
    ) as $Val);
  }

  /// Create a copy of StreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivekitStreamSettingsCopyWith<$Res>? get livekit {
    if (_value.livekit == null) {
      return null;
    }

    return $LivekitStreamSettingsCopyWith<$Res>(_value.livekit!, (value) {
      return _then(_value.copyWith(livekit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamSettingsImplCopyWith<$Res>
    implements $StreamSettingsCopyWith<$Res> {
  factory _$$StreamSettingsImplCopyWith(_$StreamSettingsImpl value,
          $Res Function(_$StreamSettingsImpl) then) =
      __$$StreamSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LivekitStreamSettings? livekit});

  @override
  $LivekitStreamSettingsCopyWith<$Res>? get livekit;
}

/// @nodoc
class __$$StreamSettingsImplCopyWithImpl<$Res>
    extends _$StreamSettingsCopyWithImpl<$Res, _$StreamSettingsImpl>
    implements _$$StreamSettingsImplCopyWith<$Res> {
  __$$StreamSettingsImplCopyWithImpl(
      _$StreamSettingsImpl _value, $Res Function(_$StreamSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? livekit = freezed,
  }) {
    return _then(_$StreamSettingsImpl(
      livekit: freezed == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as LivekitStreamSettings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamSettingsImpl implements _StreamSettings {
  const _$StreamSettingsImpl({this.livekit});

  factory _$StreamSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamSettingsImplFromJson(json);

  @override
  final LivekitStreamSettings? livekit;

  @override
  String toString() {
    return 'StreamSettings(livekit: $livekit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamSettingsImpl &&
            (identical(other.livekit, livekit) || other.livekit == livekit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, livekit);

  /// Create a copy of StreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamSettingsImplCopyWith<_$StreamSettingsImpl> get copyWith =>
      __$$StreamSettingsImplCopyWithImpl<_$StreamSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamSettingsImplToJson(
      this,
    );
  }
}

abstract class _StreamSettings implements StreamSettings {
  const factory _StreamSettings({final LivekitStreamSettings? livekit}) =
      _$StreamSettingsImpl;

  factory _StreamSettings.fromJson(Map<String, dynamic> json) =
      _$StreamSettingsImpl.fromJson;

  @override
  LivekitStreamSettings? get livekit;

  /// Create a copy of StreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamSettingsImplCopyWith<_$StreamSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivekitStreamSettings _$LivekitStreamSettingsFromJson(
    Map<String, dynamic> json) {
  return _LivekitStreamSettings.fromJson(json);
}

/// @nodoc
mixin _$LivekitStreamSettings {
  String? get room => throw _privateConstructorUsedError;
  EgressInfo? get egress => throw _privateConstructorUsedError;

  /// Serializes this LivekitStreamSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LivekitStreamSettingsCopyWith<LivekitStreamSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivekitStreamSettingsCopyWith<$Res> {
  factory $LivekitStreamSettingsCopyWith(LivekitStreamSettings value,
          $Res Function(LivekitStreamSettings) then) =
      _$LivekitStreamSettingsCopyWithImpl<$Res, LivekitStreamSettings>;
  @useResult
  $Res call({String? room, EgressInfo? egress});

  $EgressInfoCopyWith<$Res>? get egress;
}

/// @nodoc
class _$LivekitStreamSettingsCopyWithImpl<$Res,
        $Val extends LivekitStreamSettings>
    implements $LivekitStreamSettingsCopyWith<$Res> {
  _$LivekitStreamSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? egress = freezed,
  }) {
    return _then(_value.copyWith(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      egress: freezed == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as EgressInfo?,
    ) as $Val);
  }

  /// Create a copy of LivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EgressInfoCopyWith<$Res>? get egress {
    if (_value.egress == null) {
      return null;
    }

    return $EgressInfoCopyWith<$Res>(_value.egress!, (value) {
      return _then(_value.copyWith(egress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LivekitStreamSettingsImplCopyWith<$Res>
    implements $LivekitStreamSettingsCopyWith<$Res> {
  factory _$$LivekitStreamSettingsImplCopyWith(
          _$LivekitStreamSettingsImpl value,
          $Res Function(_$LivekitStreamSettingsImpl) then) =
      __$$LivekitStreamSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? room, EgressInfo? egress});

  @override
  $EgressInfoCopyWith<$Res>? get egress;
}

/// @nodoc
class __$$LivekitStreamSettingsImplCopyWithImpl<$Res>
    extends _$LivekitStreamSettingsCopyWithImpl<$Res,
        _$LivekitStreamSettingsImpl>
    implements _$$LivekitStreamSettingsImplCopyWith<$Res> {
  __$$LivekitStreamSettingsImplCopyWithImpl(_$LivekitStreamSettingsImpl _value,
      $Res Function(_$LivekitStreamSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? egress = freezed,
  }) {
    return _then(_$LivekitStreamSettingsImpl(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      egress: freezed == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as EgressInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivekitStreamSettingsImpl implements _LivekitStreamSettings {
  const _$LivekitStreamSettingsImpl({this.room, this.egress});

  factory _$LivekitStreamSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivekitStreamSettingsImplFromJson(json);

  @override
  final String? room;
  @override
  final EgressInfo? egress;

  @override
  String toString() {
    return 'LivekitStreamSettings(room: $room, egress: $egress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivekitStreamSettingsImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.egress, egress) || other.egress == egress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, room, egress);

  /// Create a copy of LivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivekitStreamSettingsImplCopyWith<_$LivekitStreamSettingsImpl>
      get copyWith => __$$LivekitStreamSettingsImplCopyWithImpl<
          _$LivekitStreamSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivekitStreamSettingsImplToJson(
      this,
    );
  }
}

abstract class _LivekitStreamSettings implements LivekitStreamSettings {
  const factory _LivekitStreamSettings(
      {final String? room,
      final EgressInfo? egress}) = _$LivekitStreamSettingsImpl;

  factory _LivekitStreamSettings.fromJson(Map<String, dynamic> json) =
      _$LivekitStreamSettingsImpl.fromJson;

  @override
  String? get room;
  @override
  EgressInfo? get egress;

  /// Create a copy of LivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivekitStreamSettingsImplCopyWith<_$LivekitStreamSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EgressInfo _$EgressInfoFromJson(Map<String, dynamic> json) {
  return _EgressInfo.fromJson(json);
}

/// @nodoc
mixin _$EgressInfo {
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
  List<FileResult>? get fileResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_composite')
  RoomCompositeInfo? get roomComposite => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_results')
  List<dynamic>? get streamResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'segment_results')
  List<dynamic>? get segmentResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'manifest_location')
  String? get manifestLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'backup_storage_used')
  bool? get backupStorageUsed => throw _privateConstructorUsedError;
  FileInfo? get file => throw _privateConstructorUsedError;

  /// Serializes this EgressInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EgressInfoCopyWith<EgressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EgressInfoCopyWith<$Res> {
  factory $EgressInfoCopyWith(
          EgressInfo value, $Res Function(EgressInfo) then) =
      _$EgressInfoCopyWithImpl<$Res, EgressInfo>;
  @useResult
  $Res call(
      {String? error,
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
      FileInfo? file});

  $RoomCompositeInfoCopyWith<$Res>? get roomComposite;
  $FileInfoCopyWith<$Res>? get file;
}

/// @nodoc
class _$EgressInfoCopyWithImpl<$Res, $Val extends EgressInfo>
    implements $EgressInfoCopyWith<$Res> {
  _$EgressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
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
              as List<FileResult>?,
      imageResults: freezed == imageResults
          ? _value.imageResults
          : imageResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomComposite: freezed == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as RoomCompositeInfo?,
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
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileInfo?,
    ) as $Val);
  }

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCompositeInfoCopyWith<$Res>? get roomComposite {
    if (_value.roomComposite == null) {
      return null;
    }

    return $RoomCompositeInfoCopyWith<$Res>(_value.roomComposite!, (value) {
      return _then(_value.copyWith(roomComposite: value) as $Val);
    });
  }

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileInfoCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $FileInfoCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EgressInfoImplCopyWith<$Res>
    implements $EgressInfoCopyWith<$Res> {
  factory _$$EgressInfoImplCopyWith(
          _$EgressInfoImpl value, $Res Function(_$EgressInfoImpl) then) =
      __$$EgressInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
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
      FileInfo? file});

  @override
  $RoomCompositeInfoCopyWith<$Res>? get roomComposite;
  @override
  $FileInfoCopyWith<$Res>? get file;
}

/// @nodoc
class __$$EgressInfoImplCopyWithImpl<$Res>
    extends _$EgressInfoCopyWithImpl<$Res, _$EgressInfoImpl>
    implements _$$EgressInfoImplCopyWith<$Res> {
  __$$EgressInfoImplCopyWithImpl(
      _$EgressInfoImpl _value, $Res Function(_$EgressInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? file = freezed,
  }) {
    return _then(_$EgressInfoImpl(
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
              as List<FileResult>?,
      imageResults: freezed == imageResults
          ? _value._imageResults
          : imageResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomComposite: freezed == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as RoomCompositeInfo?,
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
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EgressInfoImpl implements _EgressInfo {
  const _$EgressInfoImpl(
      {this.error,
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
      @JsonKey(name: 'file_results') final List<FileResult>? fileResults,
      @JsonKey(name: 'image_results') final List<dynamic>? imageResults,
      @JsonKey(name: 'room_composite') this.roomComposite,
      @JsonKey(name: 'stream_results') final List<dynamic>? streamResults,
      @JsonKey(name: 'segment_results') final List<dynamic>? segmentResults,
      @JsonKey(name: 'manifest_location') this.manifestLocation,
      @JsonKey(name: 'backup_storage_used') this.backupStorageUsed,
      this.file})
      : _fileResults = fileResults,
        _imageResults = imageResults,
        _streamResults = streamResults,
        _segmentResults = segmentResults;

  factory _$EgressInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EgressInfoImplFromJson(json);

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
  final List<FileResult>? _fileResults;
  @override
  @JsonKey(name: 'file_results')
  List<FileResult>? get fileResults {
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
  final RoomCompositeInfo? roomComposite;
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
  final FileInfo? file;

  @override
  String toString() {
    return 'EgressInfo(error: $error, status: $status, details: $details, roomId: $roomId, endedAt: $endedAt, egressId: $egressId, roomName: $roomName, errorCode: $errorCode, startedAt: $startedAt, updatedAt: $updatedAt, sourceType: $sourceType, fileResults: $fileResults, imageResults: $imageResults, roomComposite: $roomComposite, streamResults: $streamResults, segmentResults: $segmentResults, manifestLocation: $manifestLocation, backupStorageUsed: $backupStorageUsed, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EgressInfoImpl &&
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
                other.backupStorageUsed == backupStorageUsed) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        backupStorageUsed,
        file
      ]);

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EgressInfoImplCopyWith<_$EgressInfoImpl> get copyWith =>
      __$$EgressInfoImplCopyWithImpl<_$EgressInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EgressInfoImplToJson(
      this,
    );
  }
}

abstract class _EgressInfo implements EgressInfo {
  const factory _EgressInfo(
      {final String? error,
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
      @JsonKey(name: 'file_results') final List<FileResult>? fileResults,
      @JsonKey(name: 'image_results') final List<dynamic>? imageResults,
      @JsonKey(name: 'room_composite') final RoomCompositeInfo? roomComposite,
      @JsonKey(name: 'stream_results') final List<dynamic>? streamResults,
      @JsonKey(name: 'segment_results') final List<dynamic>? segmentResults,
      @JsonKey(name: 'manifest_location') final String? manifestLocation,
      @JsonKey(name: 'backup_storage_used') final bool? backupStorageUsed,
      final FileInfo? file}) = _$EgressInfoImpl;

  factory _EgressInfo.fromJson(Map<String, dynamic> json) =
      _$EgressInfoImpl.fromJson;

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
  List<FileResult>? get fileResults;
  @override
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults;
  @override
  @JsonKey(name: 'room_composite')
  RoomCompositeInfo? get roomComposite;
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
  @override
  FileInfo? get file;

  /// Create a copy of EgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EgressInfoImplCopyWith<_$EgressInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileInfo _$FileInfoFromJson(Map<String, dynamic> json) {
  return _FileInfo.fromJson(json);
}

/// @nodoc
mixin _$FileInfo {
  String? get size => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startedAt => throw _privateConstructorUsedError;

  /// Serializes this FileInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileInfoCopyWith<FileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) then) =
      _$FileInfoCopyWithImpl<$Res, FileInfo>;
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
class _$FileInfoCopyWithImpl<$Res, $Val extends FileInfo>
    implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileInfo
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
abstract class _$$FileInfoImplCopyWith<$Res>
    implements $FileInfoCopyWith<$Res> {
  factory _$$FileInfoImplCopyWith(
          _$FileInfoImpl value, $Res Function(_$FileInfoImpl) then) =
      __$$FileInfoImplCopyWithImpl<$Res>;
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
class __$$FileInfoImplCopyWithImpl<$Res>
    extends _$FileInfoCopyWithImpl<$Res, _$FileInfoImpl>
    implements _$$FileInfoImplCopyWith<$Res> {
  __$$FileInfoImplCopyWithImpl(
      _$FileInfoImpl _value, $Res Function(_$FileInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileInfo
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
    return _then(_$FileInfoImpl(
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
class _$FileInfoImpl implements _FileInfo {
  const _$FileInfoImpl(
      {this.size,
      this.duration,
      @JsonKey(name: 'ended_at') this.endedAt,
      this.filename,
      this.location,
      @JsonKey(name: 'started_at') this.startedAt});

  factory _$FileInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileInfoImplFromJson(json);

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
    return 'FileInfo(size: $size, duration: $duration, endedAt: $endedAt, filename: $filename, location: $location, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileInfoImpl &&
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

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileInfoImplCopyWith<_$FileInfoImpl> get copyWith =>
      __$$FileInfoImplCopyWithImpl<_$FileInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileInfoImplToJson(
      this,
    );
  }
}

abstract class _FileInfo implements FileInfo {
  const factory _FileInfo(
      {final String? size,
      final String? duration,
      @JsonKey(name: 'ended_at') final String? endedAt,
      final String? filename,
      final String? location,
      @JsonKey(name: 'started_at') final String? startedAt}) = _$FileInfoImpl;

  factory _FileInfo.fromJson(Map<String, dynamic> json) =
      _$FileInfoImpl.fromJson;

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

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileInfoImplCopyWith<_$FileInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileResult _$FileResultFromJson(Map<String, dynamic> json) {
  return _FileResult.fromJson(json);
}

/// @nodoc
mixin _$FileResult {
  String? get size => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startedAt => throw _privateConstructorUsedError;

  /// Serializes this FileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileResultCopyWith<FileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileResultCopyWith<$Res> {
  factory $FileResultCopyWith(
          FileResult value, $Res Function(FileResult) then) =
      _$FileResultCopyWithImpl<$Res, FileResult>;
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
class _$FileResultCopyWithImpl<$Res, $Val extends FileResult>
    implements $FileResultCopyWith<$Res> {
  _$FileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileResult
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
abstract class _$$FileResultImplCopyWith<$Res>
    implements $FileResultCopyWith<$Res> {
  factory _$$FileResultImplCopyWith(
          _$FileResultImpl value, $Res Function(_$FileResultImpl) then) =
      __$$FileResultImplCopyWithImpl<$Res>;
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
class __$$FileResultImplCopyWithImpl<$Res>
    extends _$FileResultCopyWithImpl<$Res, _$FileResultImpl>
    implements _$$FileResultImplCopyWith<$Res> {
  __$$FileResultImplCopyWithImpl(
      _$FileResultImpl _value, $Res Function(_$FileResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileResult
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
    return _then(_$FileResultImpl(
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
class _$FileResultImpl implements _FileResult {
  const _$FileResultImpl(
      {this.size,
      this.duration,
      @JsonKey(name: 'ended_at') this.endedAt,
      this.filename,
      this.location,
      @JsonKey(name: 'started_at') this.startedAt});

  factory _$FileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileResultImplFromJson(json);

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
    return 'FileResult(size: $size, duration: $duration, endedAt: $endedAt, filename: $filename, location: $location, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileResultImpl &&
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

  /// Create a copy of FileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileResultImplCopyWith<_$FileResultImpl> get copyWith =>
      __$$FileResultImplCopyWithImpl<_$FileResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileResultImplToJson(
      this,
    );
  }
}

abstract class _FileResult implements FileResult {
  const factory _FileResult(
      {final String? size,
      final String? duration,
      @JsonKey(name: 'ended_at') final String? endedAt,
      final String? filename,
      final String? location,
      @JsonKey(name: 'started_at') final String? startedAt}) = _$FileResultImpl;

  factory _FileResult.fromJson(Map<String, dynamic> json) =
      _$FileResultImpl.fromJson;

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

  /// Create a copy of FileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileResultImplCopyWith<_$FileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomCompositeInfo _$RoomCompositeInfoFromJson(Map<String, dynamic> json) {
  return _RoomCompositeInfo.fromJson(json);
}

/// @nodoc
mixin _$RoomCompositeInfo {
  RoomCompositeFile? get file => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  Advanced? get advanced => throw _privateConstructorUsedError;
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

  /// Serializes this RoomCompositeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCompositeInfoCopyWith<RoomCompositeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCompositeInfoCopyWith<$Res> {
  factory $RoomCompositeInfoCopyWith(
          RoomCompositeInfo value, $Res Function(RoomCompositeInfo) then) =
      _$RoomCompositeInfoCopyWithImpl<$Res, RoomCompositeInfo>;
  @useResult
  $Res call(
      {RoomCompositeFile? file,
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
      @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs});

  $RoomCompositeFileCopyWith<$Res>? get file;
  $AdvancedCopyWith<$Res>? get advanced;
}

/// @nodoc
class _$RoomCompositeInfoCopyWithImpl<$Res, $Val extends RoomCompositeInfo>
    implements $RoomCompositeInfoCopyWith<$Res> {
  _$RoomCompositeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomCompositeInfo
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
              as RoomCompositeFile?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      advanced: freezed == advanced
          ? _value.advanced
          : advanced // ignore: cast_nullable_to_non_nullable
              as Advanced?,
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

  /// Create a copy of RoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCompositeFileCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $RoomCompositeFileCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }

  /// Create a copy of RoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvancedCopyWith<$Res>? get advanced {
    if (_value.advanced == null) {
      return null;
    }

    return $AdvancedCopyWith<$Res>(_value.advanced!, (value) {
      return _then(_value.copyWith(advanced: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomCompositeInfoImplCopyWith<$Res>
    implements $RoomCompositeInfoCopyWith<$Res> {
  factory _$$RoomCompositeInfoImplCopyWith(_$RoomCompositeInfoImpl value,
          $Res Function(_$RoomCompositeInfoImpl) then) =
      __$$RoomCompositeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoomCompositeFile? file,
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
      @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs});

  @override
  $RoomCompositeFileCopyWith<$Res>? get file;
  @override
  $AdvancedCopyWith<$Res>? get advanced;
}

/// @nodoc
class __$$RoomCompositeInfoImplCopyWithImpl<$Res>
    extends _$RoomCompositeInfoCopyWithImpl<$Res, _$RoomCompositeInfoImpl>
    implements _$$RoomCompositeInfoImplCopyWith<$Res> {
  __$$RoomCompositeInfoImplCopyWithImpl(_$RoomCompositeInfoImpl _value,
      $Res Function(_$RoomCompositeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomCompositeInfo
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
    return _then(_$RoomCompositeInfoImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as RoomCompositeFile?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      advanced: freezed == advanced
          ? _value.advanced
          : advanced // ignore: cast_nullable_to_non_nullable
              as Advanced?,
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
class _$RoomCompositeInfoImpl implements _RoomCompositeInfo {
  const _$RoomCompositeInfoImpl(
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

  factory _$RoomCompositeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomCompositeInfoImplFromJson(json);

  @override
  final RoomCompositeFile? file;
  @override
  final String? layout;
  @override
  final Advanced? advanced;
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
    return 'RoomCompositeInfo(file: $file, layout: $layout, advanced: $advanced, webhooks: $webhooks, roomName: $roomName, audioOnly: $audioOnly, videoOnly: $videoOnly, audioMixing: $audioMixing, fileOutputs: $fileOutputs, imageOutputs: $imageOutputs, streamOutputs: $streamOutputs, customBaseUrl: $customBaseUrl, segmentOutputs: $segmentOutputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomCompositeInfoImpl &&
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

  /// Create a copy of RoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomCompositeInfoImplCopyWith<_$RoomCompositeInfoImpl> get copyWith =>
      __$$RoomCompositeInfoImplCopyWithImpl<_$RoomCompositeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomCompositeInfoImplToJson(
      this,
    );
  }
}

abstract class _RoomCompositeInfo implements RoomCompositeInfo {
  const factory _RoomCompositeInfo(
      {final RoomCompositeFile? file,
      final String? layout,
      final Advanced? advanced,
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
      final List<dynamic>? segmentOutputs}) = _$RoomCompositeInfoImpl;

  factory _RoomCompositeInfo.fromJson(Map<String, dynamic> json) =
      _$RoomCompositeInfoImpl.fromJson;

  @override
  RoomCompositeFile? get file;
  @override
  String? get layout;
  @override
  Advanced? get advanced;
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

  /// Create a copy of RoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomCompositeInfoImplCopyWith<_$RoomCompositeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomCompositeFile _$RoomCompositeFileFromJson(Map<String, dynamic> json) {
  return _RoomCompositeFile.fromJson(json);
}

/// @nodoc
mixin _$RoomCompositeFile {
  String? get filepath => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type')
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'disable_manifest')
  bool? get disableManifest => throw _privateConstructorUsedError;

  /// Serializes this RoomCompositeFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCompositeFileCopyWith<RoomCompositeFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCompositeFileCopyWith<$Res> {
  factory $RoomCompositeFileCopyWith(
          RoomCompositeFile value, $Res Function(RoomCompositeFile) then) =
      _$RoomCompositeFileCopyWithImpl<$Res, RoomCompositeFile>;
  @useResult
  $Res call(
      {String? filepath,
      @JsonKey(name: 'file_type') String? fileType,
      @JsonKey(name: 'disable_manifest') bool? disableManifest});
}

/// @nodoc
class _$RoomCompositeFileCopyWithImpl<$Res, $Val extends RoomCompositeFile>
    implements $RoomCompositeFileCopyWith<$Res> {
  _$RoomCompositeFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomCompositeFile
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
abstract class _$$RoomCompositeFileImplCopyWith<$Res>
    implements $RoomCompositeFileCopyWith<$Res> {
  factory _$$RoomCompositeFileImplCopyWith(_$RoomCompositeFileImpl value,
          $Res Function(_$RoomCompositeFileImpl) then) =
      __$$RoomCompositeFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? filepath,
      @JsonKey(name: 'file_type') String? fileType,
      @JsonKey(name: 'disable_manifest') bool? disableManifest});
}

/// @nodoc
class __$$RoomCompositeFileImplCopyWithImpl<$Res>
    extends _$RoomCompositeFileCopyWithImpl<$Res, _$RoomCompositeFileImpl>
    implements _$$RoomCompositeFileImplCopyWith<$Res> {
  __$$RoomCompositeFileImplCopyWithImpl(_$RoomCompositeFileImpl _value,
      $Res Function(_$RoomCompositeFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filepath = freezed,
    Object? fileType = freezed,
    Object? disableManifest = freezed,
  }) {
    return _then(_$RoomCompositeFileImpl(
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
class _$RoomCompositeFileImpl implements _RoomCompositeFile {
  const _$RoomCompositeFileImpl(
      {this.filepath,
      @JsonKey(name: 'file_type') this.fileType,
      @JsonKey(name: 'disable_manifest') this.disableManifest});

  factory _$RoomCompositeFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomCompositeFileImplFromJson(json);

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
    return 'RoomCompositeFile(filepath: $filepath, fileType: $fileType, disableManifest: $disableManifest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomCompositeFileImpl &&
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

  /// Create a copy of RoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomCompositeFileImplCopyWith<_$RoomCompositeFileImpl> get copyWith =>
      __$$RoomCompositeFileImplCopyWithImpl<_$RoomCompositeFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomCompositeFileImplToJson(
      this,
    );
  }
}

abstract class _RoomCompositeFile implements RoomCompositeFile {
  const factory _RoomCompositeFile(
          {final String? filepath,
          @JsonKey(name: 'file_type') final String? fileType,
          @JsonKey(name: 'disable_manifest') final bool? disableManifest}) =
      _$RoomCompositeFileImpl;

  factory _RoomCompositeFile.fromJson(Map<String, dynamic> json) =
      _$RoomCompositeFileImpl.fromJson;

  @override
  String? get filepath;
  @override
  @JsonKey(name: 'file_type')
  String? get fileType;
  @override
  @JsonKey(name: 'disable_manifest')
  bool? get disableManifest;

  /// Create a copy of RoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomCompositeFileImplCopyWith<_$RoomCompositeFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Advanced _$AdvancedFromJson(Map<String, dynamic> json) {
  return _Advanced.fromJson(json);
}

/// @nodoc
mixin _$Advanced {
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

  /// Serializes this Advanced to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Advanced
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvancedCopyWith<Advanced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedCopyWith<$Res> {
  factory $AdvancedCopyWith(Advanced value, $Res Function(Advanced) then) =
      _$AdvancedCopyWithImpl<$Res, Advanced>;
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
class _$AdvancedCopyWithImpl<$Res, $Val extends Advanced>
    implements $AdvancedCopyWith<$Res> {
  _$AdvancedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Advanced
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
abstract class _$$AdvancedImplCopyWith<$Res>
    implements $AdvancedCopyWith<$Res> {
  factory _$$AdvancedImplCopyWith(
          _$AdvancedImpl value, $Res Function(_$AdvancedImpl) then) =
      __$$AdvancedImplCopyWithImpl<$Res>;
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
class __$$AdvancedImplCopyWithImpl<$Res>
    extends _$AdvancedCopyWithImpl<$Res, _$AdvancedImpl>
    implements _$$AdvancedImplCopyWith<$Res> {
  __$$AdvancedImplCopyWithImpl(
      _$AdvancedImpl _value, $Res Function(_$AdvancedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Advanced
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
    return _then(_$AdvancedImpl(
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
class _$AdvancedImpl implements _Advanced {
  const _$AdvancedImpl(
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

  factory _$AdvancedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedImplFromJson(json);

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
    return 'Advanced(depth: $depth, width: $width, height: $height, framerate: $framerate, audioCodec: $audioCodec, videoCodec: $videoCodec, audioBitrate: $audioBitrate, audioQuality: $audioQuality, videoBitrate: $videoBitrate, videoQuality: $videoQuality, audioFrequency: $audioFrequency, keyFrameInterval: $keyFrameInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedImpl &&
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

  /// Create a copy of Advanced
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedImplCopyWith<_$AdvancedImpl> get copyWith =>
      __$$AdvancedImplCopyWithImpl<_$AdvancedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedImplToJson(
      this,
    );
  }
}

abstract class _Advanced implements Advanced {
  const factory _Advanced(
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
      _$AdvancedImpl;

  factory _Advanced.fromJson(Map<String, dynamic> json) =
      _$AdvancedImpl.fromJson;

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

  /// Create a copy of Advanced
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvancedImplCopyWith<_$AdvancedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Livekit _$LivekitFromJson(Map<String, dynamic> json) {
  return _Livekit.fromJson(json);
}

/// @nodoc
mixin _$Livekit {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_name')
  String get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_url')
  String get serverUrl => throw _privateConstructorUsedError;
  Permissions get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_identity')
  String get participantIdentity => throw _privateConstructorUsedError;

  /// Serializes this Livekit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Livekit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LivekitCopyWith<Livekit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivekitCopyWith<$Res> {
  factory $LivekitCopyWith(Livekit value, $Res Function(Livekit) then) =
      _$LivekitCopyWithImpl<$Res, Livekit>;
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'room_name') String roomName,
      @JsonKey(name: 'server_url') String serverUrl,
      Permissions permissions,
      @JsonKey(name: 'participant_identity') String participantIdentity});

  $PermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class _$LivekitCopyWithImpl<$Res, $Val extends Livekit>
    implements $LivekitCopyWith<$Res> {
  _$LivekitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Livekit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? roomName = null,
    Object? serverUrl = null,
    Object? permissions = null,
    Object? participantIdentity = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      serverUrl: null == serverUrl
          ? _value.serverUrl
          : serverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions,
      participantIdentity: null == participantIdentity
          ? _value.participantIdentity
          : participantIdentity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Livekit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionsCopyWith<$Res> get permissions {
    return $PermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LivekitImplCopyWith<$Res> implements $LivekitCopyWith<$Res> {
  factory _$$LivekitImplCopyWith(
          _$LivekitImpl value, $Res Function(_$LivekitImpl) then) =
      __$$LivekitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'room_name') String roomName,
      @JsonKey(name: 'server_url') String serverUrl,
      Permissions permissions,
      @JsonKey(name: 'participant_identity') String participantIdentity});

  @override
  $PermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class __$$LivekitImplCopyWithImpl<$Res>
    extends _$LivekitCopyWithImpl<$Res, _$LivekitImpl>
    implements _$$LivekitImplCopyWith<$Res> {
  __$$LivekitImplCopyWithImpl(
      _$LivekitImpl _value, $Res Function(_$LivekitImpl) _then)
      : super(_value, _then);

  /// Create a copy of Livekit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? roomName = null,
    Object? serverUrl = null,
    Object? permissions = null,
    Object? participantIdentity = null,
  }) {
    return _then(_$LivekitImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      serverUrl: null == serverUrl
          ? _value.serverUrl
          : serverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions,
      participantIdentity: null == participantIdentity
          ? _value.participantIdentity
          : participantIdentity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivekitImpl implements _Livekit {
  const _$LivekitImpl(
      {required this.token,
      @JsonKey(name: 'room_name') required this.roomName,
      @JsonKey(name: 'server_url') required this.serverUrl,
      required this.permissions,
      @JsonKey(name: 'participant_identity')
      required this.participantIdentity});

  factory _$LivekitImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivekitImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'room_name')
  final String roomName;
  @override
  @JsonKey(name: 'server_url')
  final String serverUrl;
  @override
  final Permissions permissions;
  @override
  @JsonKey(name: 'participant_identity')
  final String participantIdentity;

  @override
  String toString() {
    return 'Livekit(token: $token, roomName: $roomName, serverUrl: $serverUrl, permissions: $permissions, participantIdentity: $participantIdentity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivekitImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.serverUrl, serverUrl) ||
                other.serverUrl == serverUrl) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.participantIdentity, participantIdentity) ||
                other.participantIdentity == participantIdentity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, roomName, serverUrl,
      permissions, participantIdentity);

  /// Create a copy of Livekit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivekitImplCopyWith<_$LivekitImpl> get copyWith =>
      __$$LivekitImplCopyWithImpl<_$LivekitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivekitImplToJson(
      this,
    );
  }
}

abstract class _Livekit implements Livekit {
  const factory _Livekit(
      {required final String token,
      @JsonKey(name: 'room_name') required final String roomName,
      @JsonKey(name: 'server_url') required final String serverUrl,
      required final Permissions permissions,
      @JsonKey(name: 'participant_identity')
      required final String participantIdentity}) = _$LivekitImpl;

  factory _Livekit.fromJson(Map<String, dynamic> json) = _$LivekitImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'room_name')
  String get roomName;
  @override
  @JsonKey(name: 'server_url')
  String get serverUrl;
  @override
  Permissions get permissions;
  @override
  @JsonKey(name: 'participant_identity')
  String get participantIdentity;

  /// Create a copy of Livekit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivekitImplCopyWith<_$LivekitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  bool get canPublish => throw _privateConstructorUsedError;
  bool get canSubscribe => throw _privateConstructorUsedError;
  bool get canPublishData => throw _privateConstructorUsedError;
  bool get canUpdateOwnMetadata => throw _privateConstructorUsedError;
  bool get roomJoin => throw _privateConstructorUsedError;
  bool get roomCreate => throw _privateConstructorUsedError;
  bool get roomAdmin => throw _privateConstructorUsedError;

  /// Serializes this Permissions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call(
      {bool canPublish,
      bool canSubscribe,
      bool canPublishData,
      bool canUpdateOwnMetadata,
      bool roomJoin,
      bool roomCreate,
      bool roomAdmin});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canPublish = null,
    Object? canSubscribe = null,
    Object? canPublishData = null,
    Object? canUpdateOwnMetadata = null,
    Object? roomJoin = null,
    Object? roomCreate = null,
    Object? roomAdmin = null,
  }) {
    return _then(_value.copyWith(
      canPublish: null == canPublish
          ? _value.canPublish
          : canPublish // ignore: cast_nullable_to_non_nullable
              as bool,
      canSubscribe: null == canSubscribe
          ? _value.canSubscribe
          : canSubscribe // ignore: cast_nullable_to_non_nullable
              as bool,
      canPublishData: null == canPublishData
          ? _value.canPublishData
          : canPublishData // ignore: cast_nullable_to_non_nullable
              as bool,
      canUpdateOwnMetadata: null == canUpdateOwnMetadata
          ? _value.canUpdateOwnMetadata
          : canUpdateOwnMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      roomJoin: null == roomJoin
          ? _value.roomJoin
          : roomJoin // ignore: cast_nullable_to_non_nullable
              as bool,
      roomCreate: null == roomCreate
          ? _value.roomCreate
          : roomCreate // ignore: cast_nullable_to_non_nullable
              as bool,
      roomAdmin: null == roomAdmin
          ? _value.roomAdmin
          : roomAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsImplCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$PermissionsImplCopyWith(
          _$PermissionsImpl value, $Res Function(_$PermissionsImpl) then) =
      __$$PermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool canPublish,
      bool canSubscribe,
      bool canPublishData,
      bool canUpdateOwnMetadata,
      bool roomJoin,
      bool roomCreate,
      bool roomAdmin});
}

/// @nodoc
class __$$PermissionsImplCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$PermissionsImpl>
    implements _$$PermissionsImplCopyWith<$Res> {
  __$$PermissionsImplCopyWithImpl(
      _$PermissionsImpl _value, $Res Function(_$PermissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canPublish = null,
    Object? canSubscribe = null,
    Object? canPublishData = null,
    Object? canUpdateOwnMetadata = null,
    Object? roomJoin = null,
    Object? roomCreate = null,
    Object? roomAdmin = null,
  }) {
    return _then(_$PermissionsImpl(
      canPublish: null == canPublish
          ? _value.canPublish
          : canPublish // ignore: cast_nullable_to_non_nullable
              as bool,
      canSubscribe: null == canSubscribe
          ? _value.canSubscribe
          : canSubscribe // ignore: cast_nullable_to_non_nullable
              as bool,
      canPublishData: null == canPublishData
          ? _value.canPublishData
          : canPublishData // ignore: cast_nullable_to_non_nullable
              as bool,
      canUpdateOwnMetadata: null == canUpdateOwnMetadata
          ? _value.canUpdateOwnMetadata
          : canUpdateOwnMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      roomJoin: null == roomJoin
          ? _value.roomJoin
          : roomJoin // ignore: cast_nullable_to_non_nullable
              as bool,
      roomCreate: null == roomCreate
          ? _value.roomCreate
          : roomCreate // ignore: cast_nullable_to_non_nullable
              as bool,
      roomAdmin: null == roomAdmin
          ? _value.roomAdmin
          : roomAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsImpl implements _Permissions {
  const _$PermissionsImpl(
      {required this.canPublish,
      required this.canSubscribe,
      required this.canPublishData,
      required this.canUpdateOwnMetadata,
      required this.roomJoin,
      required this.roomCreate,
      this.roomAdmin = false});

  factory _$PermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsImplFromJson(json);

  @override
  final bool canPublish;
  @override
  final bool canSubscribe;
  @override
  final bool canPublishData;
  @override
  final bool canUpdateOwnMetadata;
  @override
  final bool roomJoin;
  @override
  final bool roomCreate;
  @override
  @JsonKey()
  final bool roomAdmin;

  @override
  String toString() {
    return 'Permissions(canPublish: $canPublish, canSubscribe: $canSubscribe, canPublishData: $canPublishData, canUpdateOwnMetadata: $canUpdateOwnMetadata, roomJoin: $roomJoin, roomCreate: $roomCreate, roomAdmin: $roomAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsImpl &&
            (identical(other.canPublish, canPublish) ||
                other.canPublish == canPublish) &&
            (identical(other.canSubscribe, canSubscribe) ||
                other.canSubscribe == canSubscribe) &&
            (identical(other.canPublishData, canPublishData) ||
                other.canPublishData == canPublishData) &&
            (identical(other.canUpdateOwnMetadata, canUpdateOwnMetadata) ||
                other.canUpdateOwnMetadata == canUpdateOwnMetadata) &&
            (identical(other.roomJoin, roomJoin) ||
                other.roomJoin == roomJoin) &&
            (identical(other.roomCreate, roomCreate) ||
                other.roomCreate == roomCreate) &&
            (identical(other.roomAdmin, roomAdmin) ||
                other.roomAdmin == roomAdmin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, canPublish, canSubscribe,
      canPublishData, canUpdateOwnMetadata, roomJoin, roomCreate, roomAdmin);

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      __$$PermissionsImplCopyWithImpl<_$PermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsImplToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  const factory _Permissions(
      {required final bool canPublish,
      required final bool canSubscribe,
      required final bool canPublishData,
      required final bool canUpdateOwnMetadata,
      required final bool roomJoin,
      required final bool roomCreate,
      final bool roomAdmin}) = _$PermissionsImpl;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$PermissionsImpl.fromJson;

  @override
  bool get canPublish;
  @override
  bool get canSubscribe;
  @override
  bool get canPublishData;
  @override
  bool get canUpdateOwnMetadata;
  @override
  bool get roomJoin;
  @override
  bool get roomCreate;
  @override
  bool get roomAdmin;

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
