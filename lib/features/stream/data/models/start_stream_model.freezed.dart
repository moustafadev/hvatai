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
  Egress get egress => throw _privateConstructorUsedError;
  Livekit get livekit => throw _privateConstructorUsedError;

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
      Egress egress,
      Livekit livekit});

  $StreamDataCopyWith<$Res> get data;
  $EgressCopyWith<$Res> get egress;
  $LivekitCopyWith<$Res> get livekit;
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
    Object? egress = null,
    Object? livekit = null,
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
      egress: null == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as Egress,
      livekit: null == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as Livekit,
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

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EgressCopyWith<$Res> get egress {
    return $EgressCopyWith<$Res>(_value.egress, (value) {
      return _then(_value.copyWith(egress: value) as $Val);
    });
  }

  /// Create a copy of StartStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivekitCopyWith<$Res> get livekit {
    return $LivekitCopyWith<$Res>(_value.livekit, (value) {
      return _then(_value.copyWith(livekit: value) as $Val);
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
      Egress egress,
      Livekit livekit});

  @override
  $StreamDataCopyWith<$Res> get data;
  @override
  $EgressCopyWith<$Res> get egress;
  @override
  $LivekitCopyWith<$Res> get livekit;
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
    Object? egress = null,
    Object? livekit = null,
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
      egress: null == egress
          ? _value.egress
          : egress // ignore: cast_nullable_to_non_nullable
              as Egress,
      livekit: null == livekit
          ? _value.livekit
          : livekit // ignore: cast_nullable_to_non_nullable
              as Livekit,
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
      required this.egress,
      required this.livekit});

  factory _$StartStreamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartStreamModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final StreamData data;
  @override
  final Egress egress;
  @override
  final Livekit livekit;

  @override
  String toString() {
    return 'StartStreamModel(success: $success, message: $message, data: $data, egress: $egress, livekit: $livekit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartStreamModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.egress, egress) || other.egress == egress) &&
            (identical(other.livekit, livekit) || other.livekit == livekit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, data, egress, livekit);

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
      required final Egress egress,
      required final Livekit livekit}) = _$StartStreamModelImpl;

  factory _StartStreamModel.fromJson(Map<String, dynamic> json) =
      _$StartStreamModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  StreamData get data;
  @override
  Egress get egress;
  @override
  Livekit get livekit;

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
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_name')
  String get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_live_stream_id')
  String get muxLiveStreamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_playback_id')
  String get muxPlaybackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mux_stream_key')
  String get muxStreamKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_room_name')
  String get livekitRoomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_egress_id')
  String get livekitEgressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_server_url')
  String get livekitServerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_config')
  LivekitConfig get livekitConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_room_created_at')
  DateTime get livekitRoomCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'livekit_egress_started_at')
  DateTime get livekitEgressStartedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_recording_enabled')
  bool get isRecordingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int get viewerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool get isMine => throw _privateConstructorUsedError;

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
      String title,
      String description,
      @JsonKey(name: 'channel_name') String channelName,
      @JsonKey(name: 'mux_live_stream_id') String muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') String muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') String muxStreamKey,
      @JsonKey(name: 'livekit_room_name') String livekitRoomName,
      @JsonKey(name: 'livekit_egress_id') String livekitEgressId,
      @JsonKey(name: 'livekit_server_url') String livekitServerUrl,
      @JsonKey(name: 'livekit_config') LivekitConfig livekitConfig,
      @JsonKey(name: 'livekit_room_created_at') DateTime livekitRoomCreatedAt,
      @JsonKey(name: 'livekit_egress_started_at')
      DateTime livekitEgressStartedAt,
      String status,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled') bool isRecordingEnabled,
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_mine') bool isMine});

  $LivekitConfigCopyWith<$Res> get livekitConfig;
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
    Object? title = null,
    Object? description = null,
    Object? channelName = null,
    Object? muxLiveStreamId = null,
    Object? muxPlaybackId = null,
    Object? muxStreamKey = null,
    Object? livekitRoomName = null,
    Object? livekitEgressId = null,
    Object? livekitServerUrl = null,
    Object? livekitConfig = null,
    Object? livekitRoomCreatedAt = null,
    Object? livekitEgressStartedAt = null,
    Object? status = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? isRecordingEnabled = null,
    Object? viewerCount = null,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isMine = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      muxLiveStreamId: null == muxLiveStreamId
          ? _value.muxLiveStreamId
          : muxLiveStreamId // ignore: cast_nullable_to_non_nullable
              as String,
      muxPlaybackId: null == muxPlaybackId
          ? _value.muxPlaybackId
          : muxPlaybackId // ignore: cast_nullable_to_non_nullable
              as String,
      muxStreamKey: null == muxStreamKey
          ? _value.muxStreamKey
          : muxStreamKey // ignore: cast_nullable_to_non_nullable
              as String,
      livekitRoomName: null == livekitRoomName
          ? _value.livekitRoomName
          : livekitRoomName // ignore: cast_nullable_to_non_nullable
              as String,
      livekitEgressId: null == livekitEgressId
          ? _value.livekitEgressId
          : livekitEgressId // ignore: cast_nullable_to_non_nullable
              as String,
      livekitServerUrl: null == livekitServerUrl
          ? _value.livekitServerUrl
          : livekitServerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      livekitConfig: null == livekitConfig
          ? _value.livekitConfig
          : livekitConfig // ignore: cast_nullable_to_non_nullable
              as LivekitConfig,
      livekitRoomCreatedAt: null == livekitRoomCreatedAt
          ? _value.livekitRoomCreatedAt
          : livekitRoomCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      livekitEgressStartedAt: null == livekitEgressStartedAt
          ? _value.livekitEgressStartedAt
          : livekitEgressStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecordingEnabled: null == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivekitConfigCopyWith<$Res> get livekitConfig {
    return $LivekitConfigCopyWith<$Res>(_value.livekitConfig, (value) {
      return _then(_value.copyWith(livekitConfig: value) as $Val);
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
      String title,
      String description,
      @JsonKey(name: 'channel_name') String channelName,
      @JsonKey(name: 'mux_live_stream_id') String muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') String muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') String muxStreamKey,
      @JsonKey(name: 'livekit_room_name') String livekitRoomName,
      @JsonKey(name: 'livekit_egress_id') String livekitEgressId,
      @JsonKey(name: 'livekit_server_url') String livekitServerUrl,
      @JsonKey(name: 'livekit_config') LivekitConfig livekitConfig,
      @JsonKey(name: 'livekit_room_created_at') DateTime livekitRoomCreatedAt,
      @JsonKey(name: 'livekit_egress_started_at')
      DateTime livekitEgressStartedAt,
      String status,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled') bool isRecordingEnabled,
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_mine') bool isMine});

  @override
  $LivekitConfigCopyWith<$Res> get livekitConfig;
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
    Object? title = null,
    Object? description = null,
    Object? channelName = null,
    Object? muxLiveStreamId = null,
    Object? muxPlaybackId = null,
    Object? muxStreamKey = null,
    Object? livekitRoomName = null,
    Object? livekitEgressId = null,
    Object? livekitServerUrl = null,
    Object? livekitConfig = null,
    Object? livekitRoomCreatedAt = null,
    Object? livekitEgressStartedAt = null,
    Object? status = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? isRecordingEnabled = null,
    Object? viewerCount = null,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isMine = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      muxLiveStreamId: null == muxLiveStreamId
          ? _value.muxLiveStreamId
          : muxLiveStreamId // ignore: cast_nullable_to_non_nullable
              as String,
      muxPlaybackId: null == muxPlaybackId
          ? _value.muxPlaybackId
          : muxPlaybackId // ignore: cast_nullable_to_non_nullable
              as String,
      muxStreamKey: null == muxStreamKey
          ? _value.muxStreamKey
          : muxStreamKey // ignore: cast_nullable_to_non_nullable
              as String,
      livekitRoomName: null == livekitRoomName
          ? _value.livekitRoomName
          : livekitRoomName // ignore: cast_nullable_to_non_nullable
              as String,
      livekitEgressId: null == livekitEgressId
          ? _value.livekitEgressId
          : livekitEgressId // ignore: cast_nullable_to_non_nullable
              as String,
      livekitServerUrl: null == livekitServerUrl
          ? _value.livekitServerUrl
          : livekitServerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      livekitConfig: null == livekitConfig
          ? _value.livekitConfig
          : livekitConfig // ignore: cast_nullable_to_non_nullable
              as LivekitConfig,
      livekitRoomCreatedAt: null == livekitRoomCreatedAt
          ? _value.livekitRoomCreatedAt
          : livekitRoomCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      livekitEgressStartedAt: null == livekitEgressStartedAt
          ? _value.livekitEgressStartedAt
          : livekitEgressStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecordingEnabled: null == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamDataImpl implements _StreamData {
  const _$StreamDataImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.title,
      required this.description,
      @JsonKey(name: 'channel_name') required this.channelName,
      @JsonKey(name: 'mux_live_stream_id') required this.muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') required this.muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') required this.muxStreamKey,
      @JsonKey(name: 'livekit_room_name') required this.livekitRoomName,
      @JsonKey(name: 'livekit_egress_id') required this.livekitEgressId,
      @JsonKey(name: 'livekit_server_url') required this.livekitServerUrl,
      @JsonKey(name: 'livekit_config') required this.livekitConfig,
      @JsonKey(name: 'livekit_room_created_at')
      required this.livekitRoomCreatedAt,
      @JsonKey(name: 'livekit_egress_started_at')
      required this.livekitEgressStartedAt,
      required this.status,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'is_recording_enabled') required this.isRecordingEnabled,
      @JsonKey(name: 'viewer_count') required this.viewerCount,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_mine') required this.isMine});

  factory _$StreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'channel_name')
  final String channelName;
  @override
  @JsonKey(name: 'mux_live_stream_id')
  final String muxLiveStreamId;
  @override
  @JsonKey(name: 'mux_playback_id')
  final String muxPlaybackId;
  @override
  @JsonKey(name: 'mux_stream_key')
  final String muxStreamKey;
  @override
  @JsonKey(name: 'livekit_room_name')
  final String livekitRoomName;
  @override
  @JsonKey(name: 'livekit_egress_id')
  final String livekitEgressId;
  @override
  @JsonKey(name: 'livekit_server_url')
  final String livekitServerUrl;
  @override
  @JsonKey(name: 'livekit_config')
  final LivekitConfig livekitConfig;
  @override
  @JsonKey(name: 'livekit_room_created_at')
  final DateTime livekitRoomCreatedAt;
  @override
  @JsonKey(name: 'livekit_egress_started_at')
  final DateTime livekitEgressStartedAt;
  @override
  final String status;
  @override
  @JsonKey(name: 'started_at')
  final DateTime startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  final bool isRecordingEnabled;
  @override
  @JsonKey(name: 'viewer_count')
  final int viewerCount;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'is_mine')
  final bool isMine;

  @override
  String toString() {
    return 'StreamData(id: $id, userId: $userId, title: $title, description: $description, channelName: $channelName, muxLiveStreamId: $muxLiveStreamId, muxPlaybackId: $muxPlaybackId, muxStreamKey: $muxStreamKey, livekitRoomName: $livekitRoomName, livekitEgressId: $livekitEgressId, livekitServerUrl: $livekitServerUrl, livekitConfig: $livekitConfig, livekitRoomCreatedAt: $livekitRoomCreatedAt, livekitEgressStartedAt: $livekitEgressStartedAt, status: $status, startedAt: $startedAt, endedAt: $endedAt, isRecordingEnabled: $isRecordingEnabled, viewerCount: $viewerCount, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt, isMine: $isMine)';
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
            (identical(other.livekitRoomName, livekitRoomName) ||
                other.livekitRoomName == livekitRoomName) &&
            (identical(other.livekitEgressId, livekitEgressId) ||
                other.livekitEgressId == livekitEgressId) &&
            (identical(other.livekitServerUrl, livekitServerUrl) ||
                other.livekitServerUrl == livekitServerUrl) &&
            (identical(other.livekitConfig, livekitConfig) ||
                other.livekitConfig == livekitConfig) &&
            (identical(other.livekitRoomCreatedAt, livekitRoomCreatedAt) ||
                other.livekitRoomCreatedAt == livekitRoomCreatedAt) &&
            (identical(other.livekitEgressStartedAt, livekitEgressStartedAt) ||
                other.livekitEgressStartedAt == livekitEgressStartedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.isRecordingEnabled, isRecordingEnabled) ||
                other.isRecordingEnabled == isRecordingEnabled) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isMine, isMine) || other.isMine == isMine));
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
        livekitRoomName,
        livekitEgressId,
        livekitServerUrl,
        livekitConfig,
        livekitRoomCreatedAt,
        livekitEgressStartedAt,
        status,
        startedAt,
        endedAt,
        isRecordingEnabled,
        viewerCount,
        isPublic,
        createdAt,
        updatedAt,
        isMine
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
      required final String title,
      required final String description,
      @JsonKey(name: 'channel_name') required final String channelName,
      @JsonKey(name: 'mux_live_stream_id')
      required final String muxLiveStreamId,
      @JsonKey(name: 'mux_playback_id') required final String muxPlaybackId,
      @JsonKey(name: 'mux_stream_key') required final String muxStreamKey,
      @JsonKey(name: 'livekit_room_name') required final String livekitRoomName,
      @JsonKey(name: 'livekit_egress_id') required final String livekitEgressId,
      @JsonKey(name: 'livekit_server_url')
      required final String livekitServerUrl,
      @JsonKey(name: 'livekit_config')
      required final LivekitConfig livekitConfig,
      @JsonKey(name: 'livekit_room_created_at')
      required final DateTime livekitRoomCreatedAt,
      @JsonKey(name: 'livekit_egress_started_at')
      required final DateTime livekitEgressStartedAt,
      required final String status,
      @JsonKey(name: 'started_at') required final DateTime startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'is_recording_enabled')
      required final bool isRecordingEnabled,
      @JsonKey(name: 'viewer_count') required final int viewerCount,
      @JsonKey(name: 'is_public') required final bool isPublic,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'is_mine') required final bool isMine}) = _$StreamDataImpl;

  factory _StreamData.fromJson(Map<String, dynamic> json) =
      _$StreamDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'channel_name')
  String get channelName;
  @override
  @JsonKey(name: 'mux_live_stream_id')
  String get muxLiveStreamId;
  @override
  @JsonKey(name: 'mux_playback_id')
  String get muxPlaybackId;
  @override
  @JsonKey(name: 'mux_stream_key')
  String get muxStreamKey;
  @override
  @JsonKey(name: 'livekit_room_name')
  String get livekitRoomName;
  @override
  @JsonKey(name: 'livekit_egress_id')
  String get livekitEgressId;
  @override
  @JsonKey(name: 'livekit_server_url')
  String get livekitServerUrl;
  @override
  @JsonKey(name: 'livekit_config')
  LivekitConfig get livekitConfig;
  @override
  @JsonKey(name: 'livekit_room_created_at')
  DateTime get livekitRoomCreatedAt;
  @override
  @JsonKey(name: 'livekit_egress_started_at')
  DateTime get livekitEgressStartedAt;
  @override
  String get status;
  @override
  @JsonKey(name: 'started_at')
  DateTime get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  bool get isRecordingEnabled;
  @override
  @JsonKey(name: 'viewer_count')
  int get viewerCount;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'is_mine')
  bool get isMine;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamDataImplCopyWith<_$StreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivekitConfig _$LivekitConfigFromJson(Map<String, dynamic> json) {
  return _LivekitConfig.fromJson(json);
}

/// @nodoc
mixin _$LivekitConfig {
  @JsonKey(name: 'empty_timeout')
  int get emptyTimeout => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_quality')
  String get videoQuality => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_participants')
  int get maxParticipants => throw _privateConstructorUsedError;

  /// Serializes this LivekitConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LivekitConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LivekitConfigCopyWith<LivekitConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivekitConfigCopyWith<$Res> {
  factory $LivekitConfigCopyWith(
          LivekitConfig value, $Res Function(LivekitConfig) then) =
      _$LivekitConfigCopyWithImpl<$Res, LivekitConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'empty_timeout') int emptyTimeout,
      @JsonKey(name: 'video_quality') String videoQuality,
      @JsonKey(name: 'max_participants') int maxParticipants});
}

/// @nodoc
class _$LivekitConfigCopyWithImpl<$Res, $Val extends LivekitConfig>
    implements $LivekitConfigCopyWith<$Res> {
  _$LivekitConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivekitConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emptyTimeout = null,
    Object? videoQuality = null,
    Object? maxParticipants = null,
  }) {
    return _then(_value.copyWith(
      emptyTimeout: null == emptyTimeout
          ? _value.emptyTimeout
          : emptyTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      videoQuality: null == videoQuality
          ? _value.videoQuality
          : videoQuality // ignore: cast_nullable_to_non_nullable
              as String,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivekitConfigImplCopyWith<$Res>
    implements $LivekitConfigCopyWith<$Res> {
  factory _$$LivekitConfigImplCopyWith(
          _$LivekitConfigImpl value, $Res Function(_$LivekitConfigImpl) then) =
      __$$LivekitConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'empty_timeout') int emptyTimeout,
      @JsonKey(name: 'video_quality') String videoQuality,
      @JsonKey(name: 'max_participants') int maxParticipants});
}

/// @nodoc
class __$$LivekitConfigImplCopyWithImpl<$Res>
    extends _$LivekitConfigCopyWithImpl<$Res, _$LivekitConfigImpl>
    implements _$$LivekitConfigImplCopyWith<$Res> {
  __$$LivekitConfigImplCopyWithImpl(
      _$LivekitConfigImpl _value, $Res Function(_$LivekitConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivekitConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emptyTimeout = null,
    Object? videoQuality = null,
    Object? maxParticipants = null,
  }) {
    return _then(_$LivekitConfigImpl(
      emptyTimeout: null == emptyTimeout
          ? _value.emptyTimeout
          : emptyTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      videoQuality: null == videoQuality
          ? _value.videoQuality
          : videoQuality // ignore: cast_nullable_to_non_nullable
              as String,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivekitConfigImpl implements _LivekitConfig {
  const _$LivekitConfigImpl(
      {@JsonKey(name: 'empty_timeout') required this.emptyTimeout,
      @JsonKey(name: 'video_quality') required this.videoQuality,
      @JsonKey(name: 'max_participants') required this.maxParticipants});

  factory _$LivekitConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivekitConfigImplFromJson(json);

  @override
  @JsonKey(name: 'empty_timeout')
  final int emptyTimeout;
  @override
  @JsonKey(name: 'video_quality')
  final String videoQuality;
  @override
  @JsonKey(name: 'max_participants')
  final int maxParticipants;

  @override
  String toString() {
    return 'LivekitConfig(emptyTimeout: $emptyTimeout, videoQuality: $videoQuality, maxParticipants: $maxParticipants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivekitConfigImpl &&
            (identical(other.emptyTimeout, emptyTimeout) ||
                other.emptyTimeout == emptyTimeout) &&
            (identical(other.videoQuality, videoQuality) ||
                other.videoQuality == videoQuality) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, emptyTimeout, videoQuality, maxParticipants);

  /// Create a copy of LivekitConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivekitConfigImplCopyWith<_$LivekitConfigImpl> get copyWith =>
      __$$LivekitConfigImplCopyWithImpl<_$LivekitConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivekitConfigImplToJson(
      this,
    );
  }
}

abstract class _LivekitConfig implements LivekitConfig {
  const factory _LivekitConfig(
      {@JsonKey(name: 'empty_timeout') required final int emptyTimeout,
      @JsonKey(name: 'video_quality') required final String videoQuality,
      @JsonKey(name: 'max_participants')
      required final int maxParticipants}) = _$LivekitConfigImpl;

  factory _LivekitConfig.fromJson(Map<String, dynamic> json) =
      _$LivekitConfigImpl.fromJson;

  @override
  @JsonKey(name: 'empty_timeout')
  int get emptyTimeout;
  @override
  @JsonKey(name: 'video_quality')
  String get videoQuality;
  @override
  @JsonKey(name: 'max_participants')
  int get maxParticipants;

  /// Create a copy of LivekitConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivekitConfigImplCopyWith<_$LivekitConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Egress _$EgressFromJson(Map<String, dynamic> json) {
  return _Egress.fromJson(json);
}

/// @nodoc
mixin _$Egress {
  @JsonKey(name: 'egress_id')
  String get egressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_name')
  String get roomName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_composite')
  RoomComposite get roomComposite => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_results')
  List<StreamResult> get streamResults => throw _privateConstructorUsedError;

  /// Serializes this Egress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Egress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EgressCopyWith<Egress> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EgressCopyWith<$Res> {
  factory $EgressCopyWith(Egress value, $Res Function(Egress) then) =
      _$EgressCopyWithImpl<$Res, Egress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'egress_id') String egressId,
      @JsonKey(name: 'room_id') String roomId,
      @JsonKey(name: 'room_name') String roomName,
      String status,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'room_composite') RoomComposite roomComposite,
      @JsonKey(name: 'stream_results') List<StreamResult> streamResults});

  $RoomCompositeCopyWith<$Res> get roomComposite;
}

/// @nodoc
class _$EgressCopyWithImpl<$Res, $Val extends Egress>
    implements $EgressCopyWith<$Res> {
  _$EgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Egress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? egressId = null,
    Object? roomId = null,
    Object? roomName = null,
    Object? status = null,
    Object? startedAt = null,
    Object? roomComposite = null,
    Object? streamResults = null,
  }) {
    return _then(_value.copyWith(
      egressId: null == egressId
          ? _value.egressId
          : egressId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      roomComposite: null == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as RoomComposite,
      streamResults: null == streamResults
          ? _value.streamResults
          : streamResults // ignore: cast_nullable_to_non_nullable
              as List<StreamResult>,
    ) as $Val);
  }

  /// Create a copy of Egress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCompositeCopyWith<$Res> get roomComposite {
    return $RoomCompositeCopyWith<$Res>(_value.roomComposite, (value) {
      return _then(_value.copyWith(roomComposite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EgressImplCopyWith<$Res> implements $EgressCopyWith<$Res> {
  factory _$$EgressImplCopyWith(
          _$EgressImpl value, $Res Function(_$EgressImpl) then) =
      __$$EgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'egress_id') String egressId,
      @JsonKey(name: 'room_id') String roomId,
      @JsonKey(name: 'room_name') String roomName,
      String status,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'room_composite') RoomComposite roomComposite,
      @JsonKey(name: 'stream_results') List<StreamResult> streamResults});

  @override
  $RoomCompositeCopyWith<$Res> get roomComposite;
}

/// @nodoc
class __$$EgressImplCopyWithImpl<$Res>
    extends _$EgressCopyWithImpl<$Res, _$EgressImpl>
    implements _$$EgressImplCopyWith<$Res> {
  __$$EgressImplCopyWithImpl(
      _$EgressImpl _value, $Res Function(_$EgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Egress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? egressId = null,
    Object? roomId = null,
    Object? roomName = null,
    Object? status = null,
    Object? startedAt = null,
    Object? roomComposite = null,
    Object? streamResults = null,
  }) {
    return _then(_$EgressImpl(
      egressId: null == egressId
          ? _value.egressId
          : egressId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      roomComposite: null == roomComposite
          ? _value.roomComposite
          : roomComposite // ignore: cast_nullable_to_non_nullable
              as RoomComposite,
      streamResults: null == streamResults
          ? _value._streamResults
          : streamResults // ignore: cast_nullable_to_non_nullable
              as List<StreamResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EgressImpl implements _Egress {
  const _$EgressImpl(
      {@JsonKey(name: 'egress_id') required this.egressId,
      @JsonKey(name: 'room_id') required this.roomId,
      @JsonKey(name: 'room_name') required this.roomName,
      required this.status,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'room_composite') required this.roomComposite,
      @JsonKey(name: 'stream_results')
      required final List<StreamResult> streamResults})
      : _streamResults = streamResults;

  factory _$EgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$EgressImplFromJson(json);

  @override
  @JsonKey(name: 'egress_id')
  final String egressId;
  @override
  @JsonKey(name: 'room_id')
  final String roomId;
  @override
  @JsonKey(name: 'room_name')
  final String roomName;
  @override
  final String status;
  @override
  @JsonKey(name: 'started_at')
  final String startedAt;
  @override
  @JsonKey(name: 'room_composite')
  final RoomComposite roomComposite;
  final List<StreamResult> _streamResults;
  @override
  @JsonKey(name: 'stream_results')
  List<StreamResult> get streamResults {
    if (_streamResults is EqualUnmodifiableListView) return _streamResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streamResults);
  }

  @override
  String toString() {
    return 'Egress(egressId: $egressId, roomId: $roomId, roomName: $roomName, status: $status, startedAt: $startedAt, roomComposite: $roomComposite, streamResults: $streamResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EgressImpl &&
            (identical(other.egressId, egressId) ||
                other.egressId == egressId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.roomComposite, roomComposite) ||
                other.roomComposite == roomComposite) &&
            const DeepCollectionEquality()
                .equals(other._streamResults, _streamResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      egressId,
      roomId,
      roomName,
      status,
      startedAt,
      roomComposite,
      const DeepCollectionEquality().hash(_streamResults));

  /// Create a copy of Egress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EgressImplCopyWith<_$EgressImpl> get copyWith =>
      __$$EgressImplCopyWithImpl<_$EgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EgressImplToJson(
      this,
    );
  }
}

abstract class _Egress implements Egress {
  const factory _Egress(
      {@JsonKey(name: 'egress_id') required final String egressId,
      @JsonKey(name: 'room_id') required final String roomId,
      @JsonKey(name: 'room_name') required final String roomName,
      required final String status,
      @JsonKey(name: 'started_at') required final String startedAt,
      @JsonKey(name: 'room_composite')
      required final RoomComposite roomComposite,
      @JsonKey(name: 'stream_results')
      required final List<StreamResult> streamResults}) = _$EgressImpl;

  factory _Egress.fromJson(Map<String, dynamic> json) = _$EgressImpl.fromJson;

  @override
  @JsonKey(name: 'egress_id')
  String get egressId;
  @override
  @JsonKey(name: 'room_id')
  String get roomId;
  @override
  @JsonKey(name: 'room_name')
  String get roomName;
  @override
  String get status;
  @override
  @JsonKey(name: 'started_at')
  String get startedAt;
  @override
  @JsonKey(name: 'room_composite')
  RoomComposite get roomComposite;
  @override
  @JsonKey(name: 'stream_results')
  List<StreamResult> get streamResults;

  /// Create a copy of Egress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EgressImplCopyWith<_$EgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomComposite _$RoomCompositeFromJson(Map<String, dynamic> json) {
  return _RoomComposite.fromJson(json);
}

/// @nodoc
mixin _$RoomComposite {
  @JsonKey(name: 'room_name')
  String? get roomName => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  String? get preset => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_outputs')
  List<StreamOutput>? get streamOutputs => throw _privateConstructorUsedError;

  /// Serializes this RoomComposite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomComposite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCompositeCopyWith<RoomComposite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCompositeCopyWith<$Res> {
  factory $RoomCompositeCopyWith(
          RoomComposite value, $Res Function(RoomComposite) then) =
      _$RoomCompositeCopyWithImpl<$Res, RoomComposite>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room_name') String? roomName,
      String? layout,
      String? preset,
      @JsonKey(name: 'stream_outputs') List<StreamOutput>? streamOutputs});
}

/// @nodoc
class _$RoomCompositeCopyWithImpl<$Res, $Val extends RoomComposite>
    implements $RoomCompositeCopyWith<$Res> {
  _$RoomCompositeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomComposite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? layout = freezed,
    Object? preset = freezed,
    Object? streamOutputs = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      preset: freezed == preset
          ? _value.preset
          : preset // ignore: cast_nullable_to_non_nullable
              as String?,
      streamOutputs: freezed == streamOutputs
          ? _value.streamOutputs
          : streamOutputs // ignore: cast_nullable_to_non_nullable
              as List<StreamOutput>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomCompositeImplCopyWith<$Res>
    implements $RoomCompositeCopyWith<$Res> {
  factory _$$RoomCompositeImplCopyWith(
          _$RoomCompositeImpl value, $Res Function(_$RoomCompositeImpl) then) =
      __$$RoomCompositeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'room_name') String? roomName,
      String? layout,
      String? preset,
      @JsonKey(name: 'stream_outputs') List<StreamOutput>? streamOutputs});
}

/// @nodoc
class __$$RoomCompositeImplCopyWithImpl<$Res>
    extends _$RoomCompositeCopyWithImpl<$Res, _$RoomCompositeImpl>
    implements _$$RoomCompositeImplCopyWith<$Res> {
  __$$RoomCompositeImplCopyWithImpl(
      _$RoomCompositeImpl _value, $Res Function(_$RoomCompositeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomComposite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? layout = freezed,
    Object? preset = freezed,
    Object? streamOutputs = freezed,
  }) {
    return _then(_$RoomCompositeImpl(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      preset: freezed == preset
          ? _value.preset
          : preset // ignore: cast_nullable_to_non_nullable
              as String?,
      streamOutputs: freezed == streamOutputs
          ? _value._streamOutputs
          : streamOutputs // ignore: cast_nullable_to_non_nullable
              as List<StreamOutput>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomCompositeImpl implements _RoomComposite {
  const _$RoomCompositeImpl(
      {@JsonKey(name: 'room_name') this.roomName,
      this.layout,
      this.preset,
      @JsonKey(name: 'stream_outputs') final List<StreamOutput>? streamOutputs})
      : _streamOutputs = streamOutputs;

  factory _$RoomCompositeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomCompositeImplFromJson(json);

  @override
  @JsonKey(name: 'room_name')
  final String? roomName;
  @override
  final String? layout;
  @override
  final String? preset;
  final List<StreamOutput>? _streamOutputs;
  @override
  @JsonKey(name: 'stream_outputs')
  List<StreamOutput>? get streamOutputs {
    final value = _streamOutputs;
    if (value == null) return null;
    if (_streamOutputs is EqualUnmodifiableListView) return _streamOutputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomComposite(roomName: $roomName, layout: $layout, preset: $preset, streamOutputs: $streamOutputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomCompositeImpl &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.preset, preset) || other.preset == preset) &&
            const DeepCollectionEquality()
                .equals(other._streamOutputs, _streamOutputs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roomName, layout, preset,
      const DeepCollectionEquality().hash(_streamOutputs));

  /// Create a copy of RoomComposite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomCompositeImplCopyWith<_$RoomCompositeImpl> get copyWith =>
      __$$RoomCompositeImplCopyWithImpl<_$RoomCompositeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomCompositeImplToJson(
      this,
    );
  }
}

abstract class _RoomComposite implements RoomComposite {
  const factory _RoomComposite(
      {@JsonKey(name: 'room_name') final String? roomName,
      final String? layout,
      final String? preset,
      @JsonKey(name: 'stream_outputs')
      final List<StreamOutput>? streamOutputs}) = _$RoomCompositeImpl;

  factory _RoomComposite.fromJson(Map<String, dynamic> json) =
      _$RoomCompositeImpl.fromJson;

  @override
  @JsonKey(name: 'room_name')
  String? get roomName;
  @override
  String? get layout;
  @override
  String? get preset;
  @override
  @JsonKey(name: 'stream_outputs')
  List<StreamOutput>? get streamOutputs;

  /// Create a copy of RoomComposite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomCompositeImplCopyWith<_$RoomCompositeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamOutput _$StreamOutputFromJson(Map<String, dynamic> json) {
  return _StreamOutput.fromJson(json);
}

/// @nodoc
mixin _$StreamOutput {
  String get protocol => throw _privateConstructorUsedError;
  List<String> get urls => throw _privateConstructorUsedError;

  /// Serializes this StreamOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamOutputCopyWith<StreamOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamOutputCopyWith<$Res> {
  factory $StreamOutputCopyWith(
          StreamOutput value, $Res Function(StreamOutput) then) =
      _$StreamOutputCopyWithImpl<$Res, StreamOutput>;
  @useResult
  $Res call({String protocol, List<String> urls});
}

/// @nodoc
class _$StreamOutputCopyWithImpl<$Res, $Val extends StreamOutput>
    implements $StreamOutputCopyWith<$Res> {
  _$StreamOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocol = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamOutputImplCopyWith<$Res>
    implements $StreamOutputCopyWith<$Res> {
  factory _$$StreamOutputImplCopyWith(
          _$StreamOutputImpl value, $Res Function(_$StreamOutputImpl) then) =
      __$$StreamOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String protocol, List<String> urls});
}

/// @nodoc
class __$$StreamOutputImplCopyWithImpl<$Res>
    extends _$StreamOutputCopyWithImpl<$Res, _$StreamOutputImpl>
    implements _$$StreamOutputImplCopyWith<$Res> {
  __$$StreamOutputImplCopyWithImpl(
      _$StreamOutputImpl _value, $Res Function(_$StreamOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocol = null,
    Object? urls = null,
  }) {
    return _then(_$StreamOutputImpl(
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamOutputImpl implements _StreamOutput {
  const _$StreamOutputImpl(
      {required this.protocol, required final List<String> urls})
      : _urls = urls;

  factory _$StreamOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamOutputImplFromJson(json);

  @override
  final String protocol;
  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'StreamOutput(protocol: $protocol, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamOutputImpl &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, protocol, const DeepCollectionEquality().hash(_urls));

  /// Create a copy of StreamOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamOutputImplCopyWith<_$StreamOutputImpl> get copyWith =>
      __$$StreamOutputImplCopyWithImpl<_$StreamOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamOutputImplToJson(
      this,
    );
  }
}

abstract class _StreamOutput implements StreamOutput {
  const factory _StreamOutput(
      {required final String protocol,
      required final List<String> urls}) = _$StreamOutputImpl;

  factory _StreamOutput.fromJson(Map<String, dynamic> json) =
      _$StreamOutputImpl.fromJson;

  @override
  String get protocol;
  @override
  List<String> get urls;

  /// Create a copy of StreamOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamOutputImplCopyWith<_$StreamOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamResult _$StreamResultFromJson(Map<String, dynamic> json) {
  return _StreamResult.fromJson(json);
}

/// @nodoc
mixin _$StreamResult {
  String get url => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this StreamResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamResultCopyWith<StreamResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamResultCopyWith<$Res> {
  factory $StreamResultCopyWith(
          StreamResult value, $Res Function(StreamResult) then) =
      _$StreamResultCopyWithImpl<$Res, StreamResult>;
  @useResult
  $Res call({String url, String status, String error});
}

/// @nodoc
class _$StreamResultCopyWithImpl<$Res, $Val extends StreamResult>
    implements $StreamResultCopyWith<$Res> {
  _$StreamResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamResultImplCopyWith<$Res>
    implements $StreamResultCopyWith<$Res> {
  factory _$$StreamResultImplCopyWith(
          _$StreamResultImpl value, $Res Function(_$StreamResultImpl) then) =
      __$$StreamResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String status, String error});
}

/// @nodoc
class __$$StreamResultImplCopyWithImpl<$Res>
    extends _$StreamResultCopyWithImpl<$Res, _$StreamResultImpl>
    implements _$$StreamResultImplCopyWith<$Res> {
  __$$StreamResultImplCopyWithImpl(
      _$StreamResultImpl _value, $Res Function(_$StreamResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? error = null,
  }) {
    return _then(_$StreamResultImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamResultImpl implements _StreamResult {
  const _$StreamResultImpl(
      {required this.url, required this.status, required this.error});

  factory _$StreamResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamResultImplFromJson(json);

  @override
  final String url;
  @override
  final String status;
  @override
  final String error;

  @override
  String toString() {
    return 'StreamResult(url: $url, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResultImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, status, error);

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamResultImplCopyWith<_$StreamResultImpl> get copyWith =>
      __$$StreamResultImplCopyWithImpl<_$StreamResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamResultImplToJson(
      this,
    );
  }
}

abstract class _StreamResult implements StreamResult {
  const factory _StreamResult(
      {required final String url,
      required final String status,
      required final String error}) = _$StreamResultImpl;

  factory _StreamResult.fromJson(Map<String, dynamic> json) =
      _$StreamResultImpl.fromJson;

  @override
  String get url;
  @override
  String get status;
  @override
  String get error;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamResultImplCopyWith<_$StreamResultImpl> get copyWith =>
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
