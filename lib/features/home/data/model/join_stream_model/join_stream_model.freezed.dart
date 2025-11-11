// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_stream_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinStreamResponse _$JoinStreamResponseFromJson(Map<String, dynamic> json) {
  return _JoinStreamResponse.fromJson(json);
}

/// @nodoc
mixin _$JoinStreamResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  JoinStreamData get data => throw _privateConstructorUsedError;

  /// Serializes this JoinStreamResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinStreamResponseCopyWith<JoinStreamResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinStreamResponseCopyWith<$Res> {
  factory $JoinStreamResponseCopyWith(
          JoinStreamResponse value, $Res Function(JoinStreamResponse) then) =
      _$JoinStreamResponseCopyWithImpl<$Res, JoinStreamResponse>;
  @useResult
  $Res call({bool success, String message, JoinStreamData data});

  $JoinStreamDataCopyWith<$Res> get data;
}

/// @nodoc
class _$JoinStreamResponseCopyWithImpl<$Res, $Val extends JoinStreamResponse>
    implements $JoinStreamResponseCopyWith<$Res> {
  _$JoinStreamResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
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
              as JoinStreamData,
    ) as $Val);
  }

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamDataCopyWith<$Res> get data {
    return $JoinStreamDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinStreamResponseImplCopyWith<$Res>
    implements $JoinStreamResponseCopyWith<$Res> {
  factory _$$JoinStreamResponseImplCopyWith(_$JoinStreamResponseImpl value,
          $Res Function(_$JoinStreamResponseImpl) then) =
      __$$JoinStreamResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, JoinStreamData data});

  @override
  $JoinStreamDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$JoinStreamResponseImplCopyWithImpl<$Res>
    extends _$JoinStreamResponseCopyWithImpl<$Res, _$JoinStreamResponseImpl>
    implements _$$JoinStreamResponseImplCopyWith<$Res> {
  __$$JoinStreamResponseImplCopyWithImpl(_$JoinStreamResponseImpl _value,
      $Res Function(_$JoinStreamResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$JoinStreamResponseImpl(
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
              as JoinStreamData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinStreamResponseImpl implements _JoinStreamResponse {
  const _$JoinStreamResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$JoinStreamResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinStreamResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final JoinStreamData data;

  @override
  String toString() {
    return 'JoinStreamResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinStreamResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinStreamResponseImplCopyWith<_$JoinStreamResponseImpl> get copyWith =>
      __$$JoinStreamResponseImplCopyWithImpl<_$JoinStreamResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinStreamResponseImplToJson(
      this,
    );
  }
}

abstract class _JoinStreamResponse implements JoinStreamResponse {
  const factory _JoinStreamResponse(
      {required final bool success,
      required final String message,
      required final JoinStreamData data}) = _$JoinStreamResponseImpl;

  factory _JoinStreamResponse.fromJson(Map<String, dynamic> json) =
      _$JoinStreamResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  JoinStreamData get data;

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinStreamResponseImplCopyWith<_$JoinStreamResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinStreamData _$JoinStreamDataFromJson(Map<String, dynamic> json) {
  return _JoinStreamData.fromJson(json);
}

/// @nodoc
mixin _$JoinStreamData {
  JoinStream get stream => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_url')
  String get livekitUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_publisher')
  bool get isPublisher => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool get isMine => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_url')
  String? get recordUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gif_url')
  String? get gifUrl => throw _privateConstructorUsedError;

  /// Serializes this JoinStreamData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinStreamDataCopyWith<JoinStreamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinStreamDataCopyWith<$Res> {
  factory $JoinStreamDataCopyWith(
          JoinStreamData value, $Res Function(JoinStreamData) then) =
      _$JoinStreamDataCopyWithImpl<$Res, JoinStreamData>;
  @useResult
  $Res call(
      {JoinStream stream,
      String room,
      String token,
      @JsonKey(name: 'livekit_url') String livekitUrl,
      @JsonKey(name: 'is_publisher') bool isPublisher,
      @JsonKey(name: 'is_mine') bool isMine,
      @JsonKey(name: 'record_url') String? recordUrl,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'gif_url') String? gifUrl});

  $JoinStreamCopyWith<$Res> get stream;
}

/// @nodoc
class _$JoinStreamDataCopyWithImpl<$Res, $Val extends JoinStreamData>
    implements $JoinStreamDataCopyWith<$Res> {
  _$JoinStreamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = null,
    Object? room = null,
    Object? token = null,
    Object? livekitUrl = null,
    Object? isPublisher = null,
    Object? isMine = null,
    Object? recordUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? gifUrl = freezed,
  }) {
    return _then(_value.copyWith(
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as JoinStream,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      livekitUrl: null == livekitUrl
          ? _value.livekitUrl
          : livekitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPublisher: null == isPublisher
          ? _value.isPublisher
          : isPublisher // ignore: cast_nullable_to_non_nullable
              as bool,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamCopyWith<$Res> get stream {
    return $JoinStreamCopyWith<$Res>(_value.stream, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinStreamDataImplCopyWith<$Res>
    implements $JoinStreamDataCopyWith<$Res> {
  factory _$$JoinStreamDataImplCopyWith(_$JoinStreamDataImpl value,
          $Res Function(_$JoinStreamDataImpl) then) =
      __$$JoinStreamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JoinStream stream,
      String room,
      String token,
      @JsonKey(name: 'livekit_url') String livekitUrl,
      @JsonKey(name: 'is_publisher') bool isPublisher,
      @JsonKey(name: 'is_mine') bool isMine,
      @JsonKey(name: 'record_url') String? recordUrl,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'gif_url') String? gifUrl});

  @override
  $JoinStreamCopyWith<$Res> get stream;
}

/// @nodoc
class __$$JoinStreamDataImplCopyWithImpl<$Res>
    extends _$JoinStreamDataCopyWithImpl<$Res, _$JoinStreamDataImpl>
    implements _$$JoinStreamDataImplCopyWith<$Res> {
  __$$JoinStreamDataImplCopyWithImpl(
      _$JoinStreamDataImpl _value, $Res Function(_$JoinStreamDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = null,
    Object? room = null,
    Object? token = null,
    Object? livekitUrl = null,
    Object? isPublisher = null,
    Object? isMine = null,
    Object? recordUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? gifUrl = freezed,
  }) {
    return _then(_$JoinStreamDataImpl(
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as JoinStream,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      livekitUrl: null == livekitUrl
          ? _value.livekitUrl
          : livekitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPublisher: null == isPublisher
          ? _value.isPublisher
          : isPublisher // ignore: cast_nullable_to_non_nullable
              as bool,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$JoinStreamDataImpl implements _JoinStreamData {
  const _$JoinStreamDataImpl(
      {required this.stream,
      required this.room,
      required this.token,
      @JsonKey(name: 'livekit_url') required this.livekitUrl,
      @JsonKey(name: 'is_publisher') required this.isPublisher,
      @JsonKey(name: 'is_mine') required this.isMine,
      @JsonKey(name: 'record_url') this.recordUrl,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'gif_url') this.gifUrl});

  factory _$JoinStreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinStreamDataImplFromJson(json);

  @override
  final JoinStream stream;
  @override
  final String room;
  @override
  final String token;
  @override
  @JsonKey(name: 'livekit_url')
  final String livekitUrl;
  @override
  @JsonKey(name: 'is_publisher')
  final bool isPublisher;
  @override
  @JsonKey(name: 'is_mine')
  final bool isMine;
  @override
  @JsonKey(name: 'record_url')
  final String? recordUrl;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'gif_url')
  final String? gifUrl;

  @override
  String toString() {
    return 'JoinStreamData(stream: $stream, room: $room, token: $token, livekitUrl: $livekitUrl, isPublisher: $isPublisher, isMine: $isMine, recordUrl: $recordUrl, thumbnailUrl: $thumbnailUrl, gifUrl: $gifUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinStreamDataImpl &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.livekitUrl, livekitUrl) ||
                other.livekitUrl == livekitUrl) &&
            (identical(other.isPublisher, isPublisher) ||
                other.isPublisher == isPublisher) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.recordUrl, recordUrl) ||
                other.recordUrl == recordUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.gifUrl, gifUrl) || other.gifUrl == gifUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stream, room, token, livekitUrl,
      isPublisher, isMine, recordUrl, thumbnailUrl, gifUrl);

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinStreamDataImplCopyWith<_$JoinStreamDataImpl> get copyWith =>
      __$$JoinStreamDataImplCopyWithImpl<_$JoinStreamDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinStreamDataImplToJson(
      this,
    );
  }
}

abstract class _JoinStreamData implements JoinStreamData {
  const factory _JoinStreamData(
      {required final JoinStream stream,
      required final String room,
      required final String token,
      @JsonKey(name: 'livekit_url') required final String livekitUrl,
      @JsonKey(name: 'is_publisher') required final bool isPublisher,
      @JsonKey(name: 'is_mine') required final bool isMine,
      @JsonKey(name: 'record_url') final String? recordUrl,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'gif_url') final String? gifUrl}) = _$JoinStreamDataImpl;

  factory _JoinStreamData.fromJson(Map<String, dynamic> json) =
      _$JoinStreamDataImpl.fromJson;

  @override
  JoinStream get stream;
  @override
  String get room;
  @override
  String get token;
  @override
  @JsonKey(name: 'livekit_url')
  String get livekitUrl;
  @override
  @JsonKey(name: 'is_publisher')
  bool get isPublisher;
  @override
  @JsonKey(name: 'is_mine')
  bool get isMine;
  @override
  @JsonKey(name: 'record_url')
  String? get recordUrl;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'gif_url')
  String? get gifUrl;

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinStreamDataImplCopyWith<_$JoinStreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinStream _$JoinStreamFromJson(Map<String, dynamic> json) {
  return _JoinStream.fromJson(json);
}

/// @nodoc
mixin _$JoinStream {
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
  String? get scheduledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_recording_enabled')
  bool get isRecordingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_sid')
  String? get recordingSid => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_files')
  dynamic get recordingFiles => throw _privateConstructorUsedError;
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
  String? get lastThumbnailGeneratedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_gif_generated_at')
  String? get lastGifGeneratedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int get viewerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_viewers')
  int get maxViewers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_delete_after_end')
  bool get autoDeleteAfterEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_delete_hours')
  int get autoDeleteHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'save_recording')
  bool get saveRecording => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_comments')
  bool get enableComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_bidding')
  bool get enableBidding => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_bid_increment')
  String get minimumBidIncrement => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_settings')
  JoinStreamSettings? get streamSettings => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool get isMine => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_thumbnail')
  String? get latestThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_gif')
  String? get latestGif => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_url')
  String? get recordUrl => throw _privateConstructorUsedError;

  /// Serializes this JoinStream to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinStream
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinStreamCopyWith<JoinStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinStreamCopyWith<$Res> {
  factory $JoinStreamCopyWith(
          JoinStream value, $Res Function(JoinStream) then) =
      _$JoinStreamCopyWithImpl<$Res, JoinStream>;
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
      @JsonKey(name: 'scheduled_at') String? scheduledAt,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'ended_at') String? endedAt,
      @JsonKey(name: 'is_recording_enabled') bool isRecordingEnabled,
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
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'max_viewers') int maxViewers,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'auto_delete_after_end') bool autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') int autoDeleteHours,
      @JsonKey(name: 'save_recording') bool saveRecording,
      @JsonKey(name: 'enable_comments') bool enableComments,
      @JsonKey(name: 'enable_bidding') bool enableBidding,
      @JsonKey(name: 'minimum_bid_increment') String minimumBidIncrement,
      @JsonKey(name: 'stream_settings') JoinStreamSettings? streamSettings,
      @JsonKey(name: 'is_mine') bool isMine,
      @JsonKey(name: 'latest_thumbnail') String? latestThumbnail,
      @JsonKey(name: 'latest_gif') String? latestGif,
      @JsonKey(name: 'record_url') String? recordUrl});

  $JoinStreamSettingsCopyWith<$Res>? get streamSettings;
}

/// @nodoc
class _$JoinStreamCopyWithImpl<$Res, $Val extends JoinStream>
    implements $JoinStreamCopyWith<$Res> {
  _$JoinStreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinStream
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
    Object? isRecordingEnabled = null,
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
    Object? viewerCount = null,
    Object? maxViewers = null,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? autoDeleteAfterEnd = null,
    Object? autoDeleteHours = null,
    Object? saveRecording = null,
    Object? enableComments = null,
    Object? enableBidding = null,
    Object? minimumBidIncrement = null,
    Object? streamSettings = freezed,
    Object? isMine = null,
    Object? latestThumbnail = freezed,
    Object? latestGif = freezed,
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
              as String?,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isRecordingEnabled: null == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as dynamic,
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
              as String?,
      lastGifGeneratedAt: freezed == lastGifGeneratedAt
          ? _value.lastGifGeneratedAt
          : lastGifGeneratedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxViewers: null == maxViewers
          ? _value.maxViewers
          : maxViewers // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      autoDeleteAfterEnd: null == autoDeleteAfterEnd
          ? _value.autoDeleteAfterEnd
          : autoDeleteAfterEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      autoDeleteHours: null == autoDeleteHours
          ? _value.autoDeleteHours
          : autoDeleteHours // ignore: cast_nullable_to_non_nullable
              as int,
      saveRecording: null == saveRecording
          ? _value.saveRecording
          : saveRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      enableComments: null == enableComments
          ? _value.enableComments
          : enableComments // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBidding: null == enableBidding
          ? _value.enableBidding
          : enableBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumBidIncrement: null == minimumBidIncrement
          ? _value.minimumBidIncrement
          : minimumBidIncrement // ignore: cast_nullable_to_non_nullable
              as String,
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as JoinStreamSettings?,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      latestThumbnail: freezed == latestThumbnail
          ? _value.latestThumbnail
          : latestThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGif: freezed == latestGif
          ? _value.latestGif
          : latestGif // ignore: cast_nullable_to_non_nullable
              as String?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of JoinStream
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamSettingsCopyWith<$Res>? get streamSettings {
    if (_value.streamSettings == null) {
      return null;
    }

    return $JoinStreamSettingsCopyWith<$Res>(_value.streamSettings!, (value) {
      return _then(_value.copyWith(streamSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinStreamImplCopyWith<$Res>
    implements $JoinStreamCopyWith<$Res> {
  factory _$$JoinStreamImplCopyWith(
          _$JoinStreamImpl value, $Res Function(_$JoinStreamImpl) then) =
      __$$JoinStreamImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'scheduled_at') String? scheduledAt,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'ended_at') String? endedAt,
      @JsonKey(name: 'is_recording_enabled') bool isRecordingEnabled,
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
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'max_viewers') int maxViewers,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'auto_delete_after_end') bool autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') int autoDeleteHours,
      @JsonKey(name: 'save_recording') bool saveRecording,
      @JsonKey(name: 'enable_comments') bool enableComments,
      @JsonKey(name: 'enable_bidding') bool enableBidding,
      @JsonKey(name: 'minimum_bid_increment') String minimumBidIncrement,
      @JsonKey(name: 'stream_settings') JoinStreamSettings? streamSettings,
      @JsonKey(name: 'is_mine') bool isMine,
      @JsonKey(name: 'latest_thumbnail') String? latestThumbnail,
      @JsonKey(name: 'latest_gif') String? latestGif,
      @JsonKey(name: 'record_url') String? recordUrl});

  @override
  $JoinStreamSettingsCopyWith<$Res>? get streamSettings;
}

/// @nodoc
class __$$JoinStreamImplCopyWithImpl<$Res>
    extends _$JoinStreamCopyWithImpl<$Res, _$JoinStreamImpl>
    implements _$$JoinStreamImplCopyWith<$Res> {
  __$$JoinStreamImplCopyWithImpl(
      _$JoinStreamImpl _value, $Res Function(_$JoinStreamImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinStream
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
    Object? isRecordingEnabled = null,
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
    Object? viewerCount = null,
    Object? maxViewers = null,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? autoDeleteAfterEnd = null,
    Object? autoDeleteHours = null,
    Object? saveRecording = null,
    Object? enableComments = null,
    Object? enableBidding = null,
    Object? minimumBidIncrement = null,
    Object? streamSettings = freezed,
    Object? isMine = null,
    Object? latestThumbnail = freezed,
    Object? latestGif = freezed,
    Object? recordUrl = freezed,
  }) {
    return _then(_$JoinStreamImpl(
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
              as String?,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isRecordingEnabled: null == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as dynamic,
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
              as String?,
      lastGifGeneratedAt: freezed == lastGifGeneratedAt
          ? _value.lastGifGeneratedAt
          : lastGifGeneratedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxViewers: null == maxViewers
          ? _value.maxViewers
          : maxViewers // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      autoDeleteAfterEnd: null == autoDeleteAfterEnd
          ? _value.autoDeleteAfterEnd
          : autoDeleteAfterEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      autoDeleteHours: null == autoDeleteHours
          ? _value.autoDeleteHours
          : autoDeleteHours // ignore: cast_nullable_to_non_nullable
              as int,
      saveRecording: null == saveRecording
          ? _value.saveRecording
          : saveRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      enableComments: null == enableComments
          ? _value.enableComments
          : enableComments // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBidding: null == enableBidding
          ? _value.enableBidding
          : enableBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumBidIncrement: null == minimumBidIncrement
          ? _value.minimumBidIncrement
          : minimumBidIncrement // ignore: cast_nullable_to_non_nullable
              as String,
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as JoinStreamSettings?,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      latestThumbnail: freezed == latestThumbnail
          ? _value.latestThumbnail
          : latestThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGif: freezed == latestGif
          ? _value.latestGif
          : latestGif // ignore: cast_nullable_to_non_nullable
              as String?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinStreamImpl implements _JoinStream {
  const _$JoinStreamImpl(
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
      @JsonKey(name: 'is_recording_enabled') required this.isRecordingEnabled,
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
      @JsonKey(name: 'viewer_count') required this.viewerCount,
      @JsonKey(name: 'max_viewers') required this.maxViewers,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'auto_delete_after_end') required this.autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') required this.autoDeleteHours,
      @JsonKey(name: 'save_recording') required this.saveRecording,
      @JsonKey(name: 'enable_comments') required this.enableComments,
      @JsonKey(name: 'enable_bidding') required this.enableBidding,
      @JsonKey(name: 'minimum_bid_increment') required this.minimumBidIncrement,
      @JsonKey(name: 'stream_settings') this.streamSettings,
      @JsonKey(name: 'is_mine') required this.isMine,
      @JsonKey(name: 'latest_thumbnail') this.latestThumbnail,
      @JsonKey(name: 'latest_gif') this.latestGif,
      @JsonKey(name: 'record_url') this.recordUrl})
      : _thumbnailHistory = thumbnailHistory,
        _gifHistory = gifHistory;

  factory _$JoinStreamImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinStreamImplFromJson(json);

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
  final String? scheduledAt;
  @override
  @JsonKey(name: 'started_at')
  final String startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final String? endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  final bool isRecordingEnabled;
  @override
  @JsonKey(name: 'recording_resource_id')
  final String? recordingResourceId;
  @override
  @JsonKey(name: 'recording_sid')
  final String? recordingSid;
  @override
  @JsonKey(name: 'recording_files')
  final dynamic recordingFiles;
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
  final String? lastThumbnailGeneratedAt;
  @override
  @JsonKey(name: 'last_gif_generated_at')
  final String? lastGifGeneratedAt;
  @override
  @JsonKey(name: 'viewer_count')
  final int viewerCount;
  @override
  @JsonKey(name: 'max_viewers')
  final int maxViewers;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'auto_delete_after_end')
  final bool autoDeleteAfterEnd;
  @override
  @JsonKey(name: 'auto_delete_hours')
  final int autoDeleteHours;
  @override
  @JsonKey(name: 'save_recording')
  final bool saveRecording;
  @override
  @JsonKey(name: 'enable_comments')
  final bool enableComments;
  @override
  @JsonKey(name: 'enable_bidding')
  final bool enableBidding;
  @override
  @JsonKey(name: 'minimum_bid_increment')
  final String minimumBidIncrement;
  @override
  @JsonKey(name: 'stream_settings')
  final JoinStreamSettings? streamSettings;
  @override
  @JsonKey(name: 'is_mine')
  final bool isMine;
  @override
  @JsonKey(name: 'latest_thumbnail')
  final String? latestThumbnail;
  @override
  @JsonKey(name: 'latest_gif')
  final String? latestGif;
  @override
  @JsonKey(name: 'record_url')
  final String? recordUrl;

  @override
  String toString() {
    return 'JoinStream(id: $id, userId: $userId, title: $title, description: $description, channelName: $channelName, muxLiveStreamId: $muxLiveStreamId, muxPlaybackId: $muxPlaybackId, muxStreamKey: $muxStreamKey, status: $status, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, isRecordingEnabled: $isRecordingEnabled, recordingResourceId: $recordingResourceId, recordingSid: $recordingSid, recordingFiles: $recordingFiles, thumbnailUrl: $thumbnailUrl, latestThumbnailUrl: $latestThumbnailUrl, latestGifUrl: $latestGifUrl, thumbnailHistory: $thumbnailHistory, gifHistory: $gifHistory, lastThumbnailGeneratedAt: $lastThumbnailGeneratedAt, lastGifGeneratedAt: $lastGifGeneratedAt, viewerCount: $viewerCount, maxViewers: $maxViewers, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt, autoDeleteAfterEnd: $autoDeleteAfterEnd, autoDeleteHours: $autoDeleteHours, saveRecording: $saveRecording, enableComments: $enableComments, enableBidding: $enableBidding, minimumBidIncrement: $minimumBidIncrement, streamSettings: $streamSettings, isMine: $isMine, latestThumbnail: $latestThumbnail, latestGif: $latestGif, recordUrl: $recordUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinStreamImpl &&
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
            const DeepCollectionEquality()
                .equals(other.recordingFiles, recordingFiles) &&
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
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.latestThumbnail, latestThumbnail) ||
                other.latestThumbnail == latestThumbnail) &&
            (identical(other.latestGif, latestGif) ||
                other.latestGif == latestGif) &&
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
        const DeepCollectionEquality().hash(recordingFiles),
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
        isMine,
        latestThumbnail,
        latestGif,
        recordUrl
      ]);

  /// Create a copy of JoinStream
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinStreamImplCopyWith<_$JoinStreamImpl> get copyWith =>
      __$$JoinStreamImplCopyWithImpl<_$JoinStreamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinStreamImplToJson(
      this,
    );
  }
}

abstract class _JoinStream implements JoinStream {
  const factory _JoinStream(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      final String? title,
      final String? description,
      @JsonKey(name: 'channel_name') required final String channelName,
      @JsonKey(name: 'mux_live_stream_id') final String? muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') final String? muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') final String? muxStreamKey,
      required final String status,
      @JsonKey(name: 'scheduled_at') final String? scheduledAt,
      @JsonKey(name: 'started_at') required final String startedAt,
      @JsonKey(name: 'ended_at') final String? endedAt,
      @JsonKey(name: 'is_recording_enabled')
      required final bool isRecordingEnabled,
      @JsonKey(name: 'recording_resource_id') final String? recordingResourceId,
      @JsonKey(name: 'recording_sid') final String? recordingSid,
      @JsonKey(name: 'recording_files') final dynamic recordingFiles,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'latest_thumbnail_url') final String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') final String? latestGifUrl,
      @JsonKey(name: 'thumbnail_history') final List<dynamic>? thumbnailHistory,
      @JsonKey(name: 'gif_history') final List<dynamic>? gifHistory,
      @JsonKey(name: 'last_thumbnail_generated_at')
      final String? lastThumbnailGeneratedAt,
      @JsonKey(name: 'last_gif_generated_at') final String? lastGifGeneratedAt,
      @JsonKey(name: 'viewer_count') required final int viewerCount,
      @JsonKey(name: 'max_viewers') required final int maxViewers,
      @JsonKey(name: 'is_public') required final bool isPublic,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      @JsonKey(name: 'auto_delete_after_end')
      required final bool autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') required final int autoDeleteHours,
      @JsonKey(name: 'save_recording') required final bool saveRecording,
      @JsonKey(name: 'enable_comments') required final bool enableComments,
      @JsonKey(name: 'enable_bidding') required final bool enableBidding,
      @JsonKey(name: 'minimum_bid_increment')
      required final String minimumBidIncrement,
      @JsonKey(name: 'stream_settings')
      final JoinStreamSettings? streamSettings,
      @JsonKey(name: 'is_mine') required final bool isMine,
      @JsonKey(name: 'latest_thumbnail') final String? latestThumbnail,
      @JsonKey(name: 'latest_gif') final String? latestGif,
      @JsonKey(name: 'record_url') final String? recordUrl}) = _$JoinStreamImpl;

  factory _JoinStream.fromJson(Map<String, dynamic> json) =
      _$JoinStreamImpl.fromJson;

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
  String? get scheduledAt;
  @override
  @JsonKey(name: 'started_at')
  String get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  String? get endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  bool get isRecordingEnabled;
  @override
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId;
  @override
  @JsonKey(name: 'recording_sid')
  String? get recordingSid;
  @override
  @JsonKey(name: 'recording_files')
  dynamic get recordingFiles;
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
  String? get lastThumbnailGeneratedAt;
  @override
  @JsonKey(name: 'last_gif_generated_at')
  String? get lastGifGeneratedAt;
  @override
  @JsonKey(name: 'viewer_count')
  int get viewerCount;
  @override
  @JsonKey(name: 'max_viewers')
  int get maxViewers;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'auto_delete_after_end')
  bool get autoDeleteAfterEnd;
  @override
  @JsonKey(name: 'auto_delete_hours')
  int get autoDeleteHours;
  @override
  @JsonKey(name: 'save_recording')
  bool get saveRecording;
  @override
  @JsonKey(name: 'enable_comments')
  bool get enableComments;
  @override
  @JsonKey(name: 'enable_bidding')
  bool get enableBidding;
  @override
  @JsonKey(name: 'minimum_bid_increment')
  String get minimumBidIncrement;
  @override
  @JsonKey(name: 'stream_settings')
  JoinStreamSettings? get streamSettings;
  @override
  @JsonKey(name: 'is_mine')
  bool get isMine;
  @override
  @JsonKey(name: 'latest_thumbnail')
  String? get latestThumbnail;
  @override
  @JsonKey(name: 'latest_gif')
  String? get latestGif;
  @override
  @JsonKey(name: 'record_url')
  String? get recordUrl;

  /// Create a copy of JoinStream
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinStreamImplCopyWith<_$JoinStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinStreamSettings _$JoinStreamSettingsFromJson(Map<String, dynamic> json) {
  return _JoinStreamSettings.fromJson(json);
}

/// @nodoc
mixin _$JoinStreamSettings {
  JoinLivekitStreamSettings? get livekit => throw _privateConstructorUsedError;

  /// Serializes this JoinStreamSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinStreamSettingsCopyWith<JoinStreamSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinStreamSettingsCopyWith<$Res> {
  factory $JoinStreamSettingsCopyWith(
          JoinStreamSettings value, $Res Function(JoinStreamSettings) then) =
      _$JoinStreamSettingsCopyWithImpl<$Res, JoinStreamSettings>;
  @useResult
  $Res call({JoinLivekitStreamSettings? livekit});

  $JoinLivekitStreamSettingsCopyWith<$Res>? get livekit;
}

/// @nodoc
class _$JoinStreamSettingsCopyWithImpl<$Res, $Val extends JoinStreamSettings>
    implements $JoinStreamSettingsCopyWith<$Res> {
  _$JoinStreamSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinStreamSettings
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
              as JoinLivekitStreamSettings?,
    ) as $Val);
  }

  /// Create a copy of JoinStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinLivekitStreamSettingsCopyWith<$Res>? get livekit {
    if (_value.livekit == null) {
      return null;
    }

    return $JoinLivekitStreamSettingsCopyWith<$Res>(_value.livekit!, (value) {
      return _then(_value.copyWith(livekit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinStreamSettingsImplCopyWith<$Res>
    implements $JoinStreamSettingsCopyWith<$Res> {
  factory _$$JoinStreamSettingsImplCopyWith(_$JoinStreamSettingsImpl value,
          $Res Function(_$JoinStreamSettingsImpl) then) =
      __$$JoinStreamSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JoinLivekitStreamSettings? livekit});

  @override
  $JoinLivekitStreamSettingsCopyWith<$Res>? get livekit;
}

/// @nodoc
class __$$JoinStreamSettingsImplCopyWithImpl<$Res>
    extends _$JoinStreamSettingsCopyWithImpl<$Res, _$JoinStreamSettingsImpl>
    implements _$$JoinStreamSettingsImplCopyWith<$Res> {
  __$$JoinStreamSettingsImplCopyWithImpl(_$JoinStreamSettingsImpl _value,
      $Res Function(_$JoinStreamSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? livekit = freezed,
  }) {
    return _then(_$JoinStreamSettingsImpl(
      livekit: freezed == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as JoinLivekitStreamSettings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinStreamSettingsImpl implements _JoinStreamSettings {
  const _$JoinStreamSettingsImpl({this.livekit});

  factory _$JoinStreamSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinStreamSettingsImplFromJson(json);

  @override
  final JoinLivekitStreamSettings? livekit;

  @override
  String toString() {
    return 'JoinStreamSettings(livekit: $livekit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinStreamSettingsImpl &&
            (identical(other.livekit, livekit) || other.livekit == livekit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, livekit);

  /// Create a copy of JoinStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinStreamSettingsImplCopyWith<_$JoinStreamSettingsImpl> get copyWith =>
      __$$JoinStreamSettingsImplCopyWithImpl<_$JoinStreamSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinStreamSettingsImplToJson(
      this,
    );
  }
}

abstract class _JoinStreamSettings implements JoinStreamSettings {
  const factory _JoinStreamSettings(
      {final JoinLivekitStreamSettings? livekit}) = _$JoinStreamSettingsImpl;

  factory _JoinStreamSettings.fromJson(Map<String, dynamic> json) =
      _$JoinStreamSettingsImpl.fromJson;

  @override
  JoinLivekitStreamSettings? get livekit;

  /// Create a copy of JoinStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinStreamSettingsImplCopyWith<_$JoinStreamSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinLivekitStreamSettings _$JoinLivekitStreamSettingsFromJson(
    Map<String, dynamic> json) {
  return _JoinLivekitStreamSettings.fromJson(json);
}

/// @nodoc
mixin _$JoinLivekitStreamSettings {
  String get room => throw _privateConstructorUsedError;
  JoinEgressInfo? get egress => throw _privateConstructorUsedError;

  /// Serializes this JoinLivekitStreamSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinLivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinLivekitStreamSettingsCopyWith<JoinLivekitStreamSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinLivekitStreamSettingsCopyWith<$Res> {
  factory $JoinLivekitStreamSettingsCopyWith(JoinLivekitStreamSettings value,
          $Res Function(JoinLivekitStreamSettings) then) =
      _$JoinLivekitStreamSettingsCopyWithImpl<$Res, JoinLivekitStreamSettings>;
  @useResult
  $Res call({String room, JoinEgressInfo? egress});

  $JoinEgressInfoCopyWith<$Res>? get egress;
}

/// @nodoc
class _$JoinLivekitStreamSettingsCopyWithImpl<$Res,
        $Val extends JoinLivekitStreamSettings>
    implements $JoinLivekitStreamSettingsCopyWith<$Res> {
  _$JoinLivekitStreamSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinLivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? egress = freezed,
  }) {
    return _then(_value.copyWith(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      egress: freezed == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as JoinEgressInfo?,
    ) as $Val);
  }

  /// Create a copy of JoinLivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinEgressInfoCopyWith<$Res>? get egress {
    if (_value.egress == null) {
      return null;
    }

    return $JoinEgressInfoCopyWith<$Res>(_value.egress!, (value) {
      return _then(_value.copyWith(egress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinLivekitStreamSettingsImplCopyWith<$Res>
    implements $JoinLivekitStreamSettingsCopyWith<$Res> {
  factory _$$JoinLivekitStreamSettingsImplCopyWith(
          _$JoinLivekitStreamSettingsImpl value,
          $Res Function(_$JoinLivekitStreamSettingsImpl) then) =
      __$$JoinLivekitStreamSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String room, JoinEgressInfo? egress});

  @override
  $JoinEgressInfoCopyWith<$Res>? get egress;
}

/// @nodoc
class __$$JoinLivekitStreamSettingsImplCopyWithImpl<$Res>
    extends _$JoinLivekitStreamSettingsCopyWithImpl<$Res,
        _$JoinLivekitStreamSettingsImpl>
    implements _$$JoinLivekitStreamSettingsImplCopyWith<$Res> {
  __$$JoinLivekitStreamSettingsImplCopyWithImpl(
      _$JoinLivekitStreamSettingsImpl _value,
      $Res Function(_$JoinLivekitStreamSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinLivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? egress = freezed,
  }) {
    return _then(_$JoinLivekitStreamSettingsImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      egress: freezed == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as JoinEgressInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinLivekitStreamSettingsImpl implements _JoinLivekitStreamSettings {
  const _$JoinLivekitStreamSettingsImpl({required this.room, this.egress});

  factory _$JoinLivekitStreamSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinLivekitStreamSettingsImplFromJson(json);

  @override
  final String room;
  @override
  final JoinEgressInfo? egress;

  @override
  String toString() {
    return 'JoinLivekitStreamSettings(room: $room, egress: $egress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinLivekitStreamSettingsImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.egress, egress) || other.egress == egress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, room, egress);

  /// Create a copy of JoinLivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinLivekitStreamSettingsImplCopyWith<_$JoinLivekitStreamSettingsImpl>
      get copyWith => __$$JoinLivekitStreamSettingsImplCopyWithImpl<
          _$JoinLivekitStreamSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinLivekitStreamSettingsImplToJson(
      this,
    );
  }
}

abstract class _JoinLivekitStreamSettings implements JoinLivekitStreamSettings {
  const factory _JoinLivekitStreamSettings(
      {required final String room,
      final JoinEgressInfo? egress}) = _$JoinLivekitStreamSettingsImpl;

  factory _JoinLivekitStreamSettings.fromJson(Map<String, dynamic> json) =
      _$JoinLivekitStreamSettingsImpl.fromJson;

  @override
  String get room;
  @override
  JoinEgressInfo? get egress;

  /// Create a copy of JoinLivekitStreamSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinLivekitStreamSettingsImplCopyWith<_$JoinLivekitStreamSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JoinEgressInfo _$JoinEgressInfoFromJson(Map<String, dynamic> json) {
  return _JoinEgressInfo.fromJson(json);
}

/// @nodoc
mixin _$JoinEgressInfo {
  JoinFileInfo? get file => throw _privateConstructorUsedError;
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
  List<JoinFileResult>? get fileResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_composite')
  JoinRoomCompositeInfo? get roomComposite =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_results')
  List<dynamic>? get streamResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'segment_results')
  List<dynamic>? get segmentResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'manifest_location')
  String? get manifestLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'backup_storage_used')
  bool? get backupStorageUsed => throw _privateConstructorUsedError;

  /// Serializes this JoinEgressInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinEgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinEgressInfoCopyWith<JoinEgressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinEgressInfoCopyWith<$Res> {
  factory $JoinEgressInfoCopyWith(
          JoinEgressInfo value, $Res Function(JoinEgressInfo) then) =
      _$JoinEgressInfoCopyWithImpl<$Res, JoinEgressInfo>;
  @useResult
  $Res call(
      {JoinFileInfo? file,
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
      @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed});

  $JoinFileInfoCopyWith<$Res>? get file;
  $JoinRoomCompositeInfoCopyWith<$Res>? get roomComposite;
}

/// @nodoc
class _$JoinEgressInfoCopyWithImpl<$Res, $Val extends JoinEgressInfo>
    implements $JoinEgressInfoCopyWith<$Res> {
  _$JoinEgressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinEgressInfo
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
              as JoinFileInfo?,
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
              as List<JoinFileResult>?,
      imageResults: freezed == imageResults
          ? _value.imageResults
          : imageResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomComposite: freezed == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as JoinRoomCompositeInfo?,
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

  /// Create a copy of JoinEgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinFileInfoCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $JoinFileInfoCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }

  /// Create a copy of JoinEgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinRoomCompositeInfoCopyWith<$Res>? get roomComposite {
    if (_value.roomComposite == null) {
      return null;
    }

    return $JoinRoomCompositeInfoCopyWith<$Res>(_value.roomComposite!, (value) {
      return _then(_value.copyWith(roomComposite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinEgressInfoImplCopyWith<$Res>
    implements $JoinEgressInfoCopyWith<$Res> {
  factory _$$JoinEgressInfoImplCopyWith(_$JoinEgressInfoImpl value,
          $Res Function(_$JoinEgressInfoImpl) then) =
      __$$JoinEgressInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JoinFileInfo? file,
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
      @JsonKey(name: 'backup_storage_used') bool? backupStorageUsed});

  @override
  $JoinFileInfoCopyWith<$Res>? get file;
  @override
  $JoinRoomCompositeInfoCopyWith<$Res>? get roomComposite;
}

/// @nodoc
class __$$JoinEgressInfoImplCopyWithImpl<$Res>
    extends _$JoinEgressInfoCopyWithImpl<$Res, _$JoinEgressInfoImpl>
    implements _$$JoinEgressInfoImplCopyWith<$Res> {
  __$$JoinEgressInfoImplCopyWithImpl(
      _$JoinEgressInfoImpl _value, $Res Function(_$JoinEgressInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEgressInfo
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
    return _then(_$JoinEgressInfoImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as JoinFileInfo?,
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
              as List<JoinFileResult>?,
      imageResults: freezed == imageResults
          ? _value._imageResults
          : imageResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roomComposite: freezed == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as JoinRoomCompositeInfo?,
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
class _$JoinEgressInfoImpl implements _JoinEgressInfo {
  const _$JoinEgressInfoImpl(
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
      @JsonKey(name: 'file_results') final List<JoinFileResult>? fileResults,
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

  factory _$JoinEgressInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinEgressInfoImplFromJson(json);

  @override
  final JoinFileInfo? file;
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
  final List<JoinFileResult>? _fileResults;
  @override
  @JsonKey(name: 'file_results')
  List<JoinFileResult>? get fileResults {
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
  final JoinRoomCompositeInfo? roomComposite;
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
    return 'JoinEgressInfo(file: $file, error: $error, status: $status, details: $details, roomId: $roomId, endedAt: $endedAt, egressId: $egressId, roomName: $roomName, errorCode: $errorCode, startedAt: $startedAt, updatedAt: $updatedAt, sourceType: $sourceType, fileResults: $fileResults, imageResults: $imageResults, roomComposite: $roomComposite, streamResults: $streamResults, segmentResults: $segmentResults, manifestLocation: $manifestLocation, backupStorageUsed: $backupStorageUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinEgressInfoImpl &&
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

  /// Create a copy of JoinEgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinEgressInfoImplCopyWith<_$JoinEgressInfoImpl> get copyWith =>
      __$$JoinEgressInfoImplCopyWithImpl<_$JoinEgressInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinEgressInfoImplToJson(
      this,
    );
  }
}

abstract class _JoinEgressInfo implements JoinEgressInfo {
  const factory _JoinEgressInfo(
      {final JoinFileInfo? file,
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
      @JsonKey(name: 'file_results') final List<JoinFileResult>? fileResults,
      @JsonKey(name: 'image_results') final List<dynamic>? imageResults,
      @JsonKey(name: 'room_composite')
      final JoinRoomCompositeInfo? roomComposite,
      @JsonKey(name: 'stream_results') final List<dynamic>? streamResults,
      @JsonKey(name: 'segment_results') final List<dynamic>? segmentResults,
      @JsonKey(name: 'manifest_location') final String? manifestLocation,
      @JsonKey(name: 'backup_storage_used')
      final bool? backupStorageUsed}) = _$JoinEgressInfoImpl;

  factory _JoinEgressInfo.fromJson(Map<String, dynamic> json) =
      _$JoinEgressInfoImpl.fromJson;

  @override
  JoinFileInfo? get file;
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
  List<JoinFileResult>? get fileResults;
  @override
  @JsonKey(name: 'image_results')
  List<dynamic>? get imageResults;
  @override
  @JsonKey(name: 'room_composite')
  JoinRoomCompositeInfo? get roomComposite;
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

  /// Create a copy of JoinEgressInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinEgressInfoImplCopyWith<_$JoinEgressInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinFileInfo _$JoinFileInfoFromJson(Map<String, dynamic> json) {
  return _JoinFileInfo.fromJson(json);
}

/// @nodoc
mixin _$JoinFileInfo {
  String? get size => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startedAt => throw _privateConstructorUsedError;

  /// Serializes this JoinFileInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinFileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinFileInfoCopyWith<JoinFileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinFileInfoCopyWith<$Res> {
  factory $JoinFileInfoCopyWith(
          JoinFileInfo value, $Res Function(JoinFileInfo) then) =
      _$JoinFileInfoCopyWithImpl<$Res, JoinFileInfo>;
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
class _$JoinFileInfoCopyWithImpl<$Res, $Val extends JoinFileInfo>
    implements $JoinFileInfoCopyWith<$Res> {
  _$JoinFileInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinFileInfo
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
abstract class _$$JoinFileInfoImplCopyWith<$Res>
    implements $JoinFileInfoCopyWith<$Res> {
  factory _$$JoinFileInfoImplCopyWith(
          _$JoinFileInfoImpl value, $Res Function(_$JoinFileInfoImpl) then) =
      __$$JoinFileInfoImplCopyWithImpl<$Res>;
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
class __$$JoinFileInfoImplCopyWithImpl<$Res>
    extends _$JoinFileInfoCopyWithImpl<$Res, _$JoinFileInfoImpl>
    implements _$$JoinFileInfoImplCopyWith<$Res> {
  __$$JoinFileInfoImplCopyWithImpl(
      _$JoinFileInfoImpl _value, $Res Function(_$JoinFileInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinFileInfo
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
    return _then(_$JoinFileInfoImpl(
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
class _$JoinFileInfoImpl implements _JoinFileInfo {
  const _$JoinFileInfoImpl(
      {this.size,
      this.duration,
      @JsonKey(name: 'ended_at') this.endedAt,
      this.filename,
      this.location,
      @JsonKey(name: 'started_at') this.startedAt});

  factory _$JoinFileInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinFileInfoImplFromJson(json);

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
    return 'JoinFileInfo(size: $size, duration: $duration, endedAt: $endedAt, filename: $filename, location: $location, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinFileInfoImpl &&
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

  /// Create a copy of JoinFileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinFileInfoImplCopyWith<_$JoinFileInfoImpl> get copyWith =>
      __$$JoinFileInfoImplCopyWithImpl<_$JoinFileInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinFileInfoImplToJson(
      this,
    );
  }
}

abstract class _JoinFileInfo implements JoinFileInfo {
  const factory _JoinFileInfo(
          {final String? size,
          final String? duration,
          @JsonKey(name: 'ended_at') final String? endedAt,
          final String? filename,
          final String? location,
          @JsonKey(name: 'started_at') final String? startedAt}) =
      _$JoinFileInfoImpl;

  factory _JoinFileInfo.fromJson(Map<String, dynamic> json) =
      _$JoinFileInfoImpl.fromJson;

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

  /// Create a copy of JoinFileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinFileInfoImplCopyWith<_$JoinFileInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinFileResult _$JoinFileResultFromJson(Map<String, dynamic> json) {
  return _JoinFileResult.fromJson(json);
}

/// @nodoc
mixin _$JoinFileResult {
  String? get size => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  String? get endedAt => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startedAt => throw _privateConstructorUsedError;

  /// Serializes this JoinFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinFileResultCopyWith<JoinFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinFileResultCopyWith<$Res> {
  factory $JoinFileResultCopyWith(
          JoinFileResult value, $Res Function(JoinFileResult) then) =
      _$JoinFileResultCopyWithImpl<$Res, JoinFileResult>;
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
class _$JoinFileResultCopyWithImpl<$Res, $Val extends JoinFileResult>
    implements $JoinFileResultCopyWith<$Res> {
  _$JoinFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinFileResult
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
abstract class _$$JoinFileResultImplCopyWith<$Res>
    implements $JoinFileResultCopyWith<$Res> {
  factory _$$JoinFileResultImplCopyWith(_$JoinFileResultImpl value,
          $Res Function(_$JoinFileResultImpl) then) =
      __$$JoinFileResultImplCopyWithImpl<$Res>;
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
class __$$JoinFileResultImplCopyWithImpl<$Res>
    extends _$JoinFileResultCopyWithImpl<$Res, _$JoinFileResultImpl>
    implements _$$JoinFileResultImplCopyWith<$Res> {
  __$$JoinFileResultImplCopyWithImpl(
      _$JoinFileResultImpl _value, $Res Function(_$JoinFileResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinFileResult
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
    return _then(_$JoinFileResultImpl(
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
class _$JoinFileResultImpl implements _JoinFileResult {
  const _$JoinFileResultImpl(
      {this.size,
      this.duration,
      @JsonKey(name: 'ended_at') this.endedAt,
      this.filename,
      this.location,
      @JsonKey(name: 'started_at') this.startedAt});

  factory _$JoinFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinFileResultImplFromJson(json);

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
    return 'JoinFileResult(size: $size, duration: $duration, endedAt: $endedAt, filename: $filename, location: $location, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinFileResultImpl &&
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

  /// Create a copy of JoinFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinFileResultImplCopyWith<_$JoinFileResultImpl> get copyWith =>
      __$$JoinFileResultImplCopyWithImpl<_$JoinFileResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinFileResultImplToJson(
      this,
    );
  }
}

abstract class _JoinFileResult implements JoinFileResult {
  const factory _JoinFileResult(
          {final String? size,
          final String? duration,
          @JsonKey(name: 'ended_at') final String? endedAt,
          final String? filename,
          final String? location,
          @JsonKey(name: 'started_at') final String? startedAt}) =
      _$JoinFileResultImpl;

  factory _JoinFileResult.fromJson(Map<String, dynamic> json) =
      _$JoinFileResultImpl.fromJson;

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

  /// Create a copy of JoinFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinFileResultImplCopyWith<_$JoinFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinRoomCompositeInfo _$JoinRoomCompositeInfoFromJson(
    Map<String, dynamic> json) {
  return _JoinRoomCompositeInfo.fromJson(json);
}

/// @nodoc
mixin _$JoinRoomCompositeInfo {
  JoinRoomCompositeFile? get file => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  JoinAdvanced? get advanced => throw _privateConstructorUsedError;
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

  /// Serializes this JoinRoomCompositeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRoomCompositeInfoCopyWith<JoinRoomCompositeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRoomCompositeInfoCopyWith<$Res> {
  factory $JoinRoomCompositeInfoCopyWith(JoinRoomCompositeInfo value,
          $Res Function(JoinRoomCompositeInfo) then) =
      _$JoinRoomCompositeInfoCopyWithImpl<$Res, JoinRoomCompositeInfo>;
  @useResult
  $Res call(
      {JoinRoomCompositeFile? file,
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
      @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs});

  $JoinRoomCompositeFileCopyWith<$Res>? get file;
  $JoinAdvancedCopyWith<$Res>? get advanced;
}

/// @nodoc
class _$JoinRoomCompositeInfoCopyWithImpl<$Res,
        $Val extends JoinRoomCompositeInfo>
    implements $JoinRoomCompositeInfoCopyWith<$Res> {
  _$JoinRoomCompositeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRoomCompositeInfo
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
              as JoinRoomCompositeFile?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      advanced: freezed == advanced
          ? _value.advanced
          : advanced // ignore: cast_nullable_to_non_nullable
              as JoinAdvanced?,
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

  /// Create a copy of JoinRoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinRoomCompositeFileCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $JoinRoomCompositeFileCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }

  /// Create a copy of JoinRoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinAdvancedCopyWith<$Res>? get advanced {
    if (_value.advanced == null) {
      return null;
    }

    return $JoinAdvancedCopyWith<$Res>(_value.advanced!, (value) {
      return _then(_value.copyWith(advanced: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinRoomCompositeInfoImplCopyWith<$Res>
    implements $JoinRoomCompositeInfoCopyWith<$Res> {
  factory _$$JoinRoomCompositeInfoImplCopyWith(
          _$JoinRoomCompositeInfoImpl value,
          $Res Function(_$JoinRoomCompositeInfoImpl) then) =
      __$$JoinRoomCompositeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JoinRoomCompositeFile? file,
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
      @JsonKey(name: 'segment_outputs') List<dynamic>? segmentOutputs});

  @override
  $JoinRoomCompositeFileCopyWith<$Res>? get file;
  @override
  $JoinAdvancedCopyWith<$Res>? get advanced;
}

/// @nodoc
class __$$JoinRoomCompositeInfoImplCopyWithImpl<$Res>
    extends _$JoinRoomCompositeInfoCopyWithImpl<$Res,
        _$JoinRoomCompositeInfoImpl>
    implements _$$JoinRoomCompositeInfoImplCopyWith<$Res> {
  __$$JoinRoomCompositeInfoImplCopyWithImpl(_$JoinRoomCompositeInfoImpl _value,
      $Res Function(_$JoinRoomCompositeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinRoomCompositeInfo
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
    return _then(_$JoinRoomCompositeInfoImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as JoinRoomCompositeFile?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      advanced: freezed == advanced
          ? _value.advanced
          : advanced // ignore: cast_nullable_to_non_nullable
              as JoinAdvanced?,
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
class _$JoinRoomCompositeInfoImpl implements _JoinRoomCompositeInfo {
  const _$JoinRoomCompositeInfoImpl(
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

  factory _$JoinRoomCompositeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRoomCompositeInfoImplFromJson(json);

  @override
  final JoinRoomCompositeFile? file;
  @override
  final String? layout;
  @override
  final JoinAdvanced? advanced;
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
    return 'JoinRoomCompositeInfo(file: $file, layout: $layout, advanced: $advanced, webhooks: $webhooks, roomName: $roomName, audioOnly: $audioOnly, videoOnly: $videoOnly, audioMixing: $audioMixing, fileOutputs: $fileOutputs, imageOutputs: $imageOutputs, streamOutputs: $streamOutputs, customBaseUrl: $customBaseUrl, segmentOutputs: $segmentOutputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomCompositeInfoImpl &&
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

  /// Create a copy of JoinRoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomCompositeInfoImplCopyWith<_$JoinRoomCompositeInfoImpl>
      get copyWith => __$$JoinRoomCompositeInfoImplCopyWithImpl<
          _$JoinRoomCompositeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRoomCompositeInfoImplToJson(
      this,
    );
  }
}

abstract class _JoinRoomCompositeInfo implements JoinRoomCompositeInfo {
  const factory _JoinRoomCompositeInfo(
      {final JoinRoomCompositeFile? file,
      final String? layout,
      final JoinAdvanced? advanced,
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
      final List<dynamic>? segmentOutputs}) = _$JoinRoomCompositeInfoImpl;

  factory _JoinRoomCompositeInfo.fromJson(Map<String, dynamic> json) =
      _$JoinRoomCompositeInfoImpl.fromJson;

  @override
  JoinRoomCompositeFile? get file;
  @override
  String? get layout;
  @override
  JoinAdvanced? get advanced;
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

  /// Create a copy of JoinRoomCompositeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRoomCompositeInfoImplCopyWith<_$JoinRoomCompositeInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JoinRoomCompositeFile _$JoinRoomCompositeFileFromJson(
    Map<String, dynamic> json) {
  return _JoinRoomCompositeFile.fromJson(json);
}

/// @nodoc
mixin _$JoinRoomCompositeFile {
  String? get filepath => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type')
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'disable_manifest')
  bool? get disableManifest => throw _privateConstructorUsedError;

  /// Serializes this JoinRoomCompositeFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRoomCompositeFileCopyWith<JoinRoomCompositeFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRoomCompositeFileCopyWith<$Res> {
  factory $JoinRoomCompositeFileCopyWith(JoinRoomCompositeFile value,
          $Res Function(JoinRoomCompositeFile) then) =
      _$JoinRoomCompositeFileCopyWithImpl<$Res, JoinRoomCompositeFile>;
  @useResult
  $Res call(
      {String? filepath,
      @JsonKey(name: 'file_type') String? fileType,
      @JsonKey(name: 'disable_manifest') bool? disableManifest});
}

/// @nodoc
class _$JoinRoomCompositeFileCopyWithImpl<$Res,
        $Val extends JoinRoomCompositeFile>
    implements $JoinRoomCompositeFileCopyWith<$Res> {
  _$JoinRoomCompositeFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRoomCompositeFile
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
abstract class _$$JoinRoomCompositeFileImplCopyWith<$Res>
    implements $JoinRoomCompositeFileCopyWith<$Res> {
  factory _$$JoinRoomCompositeFileImplCopyWith(
          _$JoinRoomCompositeFileImpl value,
          $Res Function(_$JoinRoomCompositeFileImpl) then) =
      __$$JoinRoomCompositeFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? filepath,
      @JsonKey(name: 'file_type') String? fileType,
      @JsonKey(name: 'disable_manifest') bool? disableManifest});
}

/// @nodoc
class __$$JoinRoomCompositeFileImplCopyWithImpl<$Res>
    extends _$JoinRoomCompositeFileCopyWithImpl<$Res,
        _$JoinRoomCompositeFileImpl>
    implements _$$JoinRoomCompositeFileImplCopyWith<$Res> {
  __$$JoinRoomCompositeFileImplCopyWithImpl(_$JoinRoomCompositeFileImpl _value,
      $Res Function(_$JoinRoomCompositeFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinRoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filepath = freezed,
    Object? fileType = freezed,
    Object? disableManifest = freezed,
  }) {
    return _then(_$JoinRoomCompositeFileImpl(
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
class _$JoinRoomCompositeFileImpl implements _JoinRoomCompositeFile {
  const _$JoinRoomCompositeFileImpl(
      {this.filepath,
      @JsonKey(name: 'file_type') this.fileType,
      @JsonKey(name: 'disable_manifest') this.disableManifest});

  factory _$JoinRoomCompositeFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRoomCompositeFileImplFromJson(json);

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
    return 'JoinRoomCompositeFile(filepath: $filepath, fileType: $fileType, disableManifest: $disableManifest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomCompositeFileImpl &&
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

  /// Create a copy of JoinRoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomCompositeFileImplCopyWith<_$JoinRoomCompositeFileImpl>
      get copyWith => __$$JoinRoomCompositeFileImplCopyWithImpl<
          _$JoinRoomCompositeFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRoomCompositeFileImplToJson(
      this,
    );
  }
}

abstract class _JoinRoomCompositeFile implements JoinRoomCompositeFile {
  const factory _JoinRoomCompositeFile(
          {final String? filepath,
          @JsonKey(name: 'file_type') final String? fileType,
          @JsonKey(name: 'disable_manifest') final bool? disableManifest}) =
      _$JoinRoomCompositeFileImpl;

  factory _JoinRoomCompositeFile.fromJson(Map<String, dynamic> json) =
      _$JoinRoomCompositeFileImpl.fromJson;

  @override
  String? get filepath;
  @override
  @JsonKey(name: 'file_type')
  String? get fileType;
  @override
  @JsonKey(name: 'disable_manifest')
  bool? get disableManifest;

  /// Create a copy of JoinRoomCompositeFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRoomCompositeFileImplCopyWith<_$JoinRoomCompositeFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JoinAdvanced _$JoinAdvancedFromJson(Map<String, dynamic> json) {
  return _JoinAdvanced.fromJson(json);
}

/// @nodoc
mixin _$JoinAdvanced {
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

  /// Serializes this JoinAdvanced to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinAdvanced
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinAdvancedCopyWith<JoinAdvanced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinAdvancedCopyWith<$Res> {
  factory $JoinAdvancedCopyWith(
          JoinAdvanced value, $Res Function(JoinAdvanced) then) =
      _$JoinAdvancedCopyWithImpl<$Res, JoinAdvanced>;
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
class _$JoinAdvancedCopyWithImpl<$Res, $Val extends JoinAdvanced>
    implements $JoinAdvancedCopyWith<$Res> {
  _$JoinAdvancedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinAdvanced
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
abstract class _$$JoinAdvancedImplCopyWith<$Res>
    implements $JoinAdvancedCopyWith<$Res> {
  factory _$$JoinAdvancedImplCopyWith(
          _$JoinAdvancedImpl value, $Res Function(_$JoinAdvancedImpl) then) =
      __$$JoinAdvancedImplCopyWithImpl<$Res>;
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
class __$$JoinAdvancedImplCopyWithImpl<$Res>
    extends _$JoinAdvancedCopyWithImpl<$Res, _$JoinAdvancedImpl>
    implements _$$JoinAdvancedImplCopyWith<$Res> {
  __$$JoinAdvancedImplCopyWithImpl(
      _$JoinAdvancedImpl _value, $Res Function(_$JoinAdvancedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinAdvanced
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
    return _then(_$JoinAdvancedImpl(
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
class _$JoinAdvancedImpl implements _JoinAdvanced {
  const _$JoinAdvancedImpl(
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

  factory _$JoinAdvancedImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinAdvancedImplFromJson(json);

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
    return 'JoinAdvanced(depth: $depth, width: $width, height: $height, framerate: $framerate, audioCodec: $audioCodec, videoCodec: $videoCodec, audioBitrate: $audioBitrate, audioQuality: $audioQuality, videoBitrate: $videoBitrate, videoQuality: $videoQuality, audioFrequency: $audioFrequency, keyFrameInterval: $keyFrameInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinAdvancedImpl &&
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

  /// Create a copy of JoinAdvanced
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinAdvancedImplCopyWith<_$JoinAdvancedImpl> get copyWith =>
      __$$JoinAdvancedImplCopyWithImpl<_$JoinAdvancedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinAdvancedImplToJson(
      this,
    );
  }
}

abstract class _JoinAdvanced implements JoinAdvanced {
  const factory _JoinAdvanced(
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
      _$JoinAdvancedImpl;

  factory _JoinAdvanced.fromJson(Map<String, dynamic> json) =
      _$JoinAdvancedImpl.fromJson;

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

  /// Create a copy of JoinAdvanced
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinAdvancedImplCopyWith<_$JoinAdvancedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
