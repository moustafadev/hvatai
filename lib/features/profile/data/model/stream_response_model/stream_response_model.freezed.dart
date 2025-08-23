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
  StreamDataModel? get data => throw _privateConstructorUsedError;

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
  $Res call({bool? success, String? message, StreamDataModel? data});

  $StreamDataModelCopyWith<$Res>? get data;
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
}

/// @nodoc
abstract class _$$StreamResponseModelImplCopyWith<$Res>
    implements $StreamResponseModelCopyWith<$Res> {
  factory _$$StreamResponseModelImplCopyWith(_$StreamResponseModelImpl value,
          $Res Function(_$StreamResponseModelImpl) then) =
      __$$StreamResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, StreamDataModel? data});

  @override
  $StreamDataModelCopyWith<$Res>? get data;
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamResponseModelImpl implements _StreamResponseModel {
  const _$StreamResponseModelImpl({this.success, this.message, this.data});

  factory _$StreamResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final StreamDataModel? data;

  @override
  String toString() {
    return 'StreamResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

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
      final StreamDataModel? data}) = _$StreamResponseModelImpl;

  factory _StreamResponseModel.fromJson(Map<String, dynamic> json) =
      _$StreamResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  StreamDataModel? get data;

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
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'agora_app_id')
  String? get agoraAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'agora_token')
  String? get agoraToken => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError; // NEW
  @JsonKey(name: 'is_recording_enabled')
  bool? get isRecordingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_resource_id')
  String? get recordingResourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_sid')
  String? get recordingSid => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get recordingFiles =>
      throw _privateConstructorUsedError; // NEW (nullable list)
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError; // NEW
  @JsonKey(name: 'viewer_count')
  int? get viewerCount => throw _privateConstructorUsedError; // NEW
  @JsonKey(name: 'max_viewers')
  int? get maxViewers => throw _privateConstructorUsedError; // NEW
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
  @JsonKey(name: 'stream_settings')
  Map<String, dynamic>? get streamSettings =>
      throw _privateConstructorUsedError; // NEW
  @JsonKey(name: 'agora_uid')
  int? get agoraUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool? get isMine => throw _privateConstructorUsedError;
  StreamUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_products')
  List<StreamProductModel>? get streamProducts =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'agora_app_id') String? agoraAppId,
      @JsonKey(name: 'agora_token') String? agoraToken,
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
      @JsonKey(name: 'stream_settings') Map<String, dynamic>? streamSettings,
      @JsonKey(name: 'agora_uid') int? agoraUid,
      @JsonKey(name: 'is_mine') bool? isMine,
      StreamUserModel? user,
      @JsonKey(name: 'stream_products')
      List<StreamProductModel>? streamProducts});

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
    Object? agoraAppId = freezed,
    Object? agoraToken = freezed,
    Object? status = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? isRecordingEnabled = freezed,
    Object? recordingResourceId = freezed,
    Object? recordingSid = freezed,
    Object? recordingFiles = freezed,
    Object? thumbnailUrl = freezed,
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
    Object? streamSettings = freezed,
    Object? agoraUid = freezed,
    Object? isMine = freezed,
    Object? user = freezed,
    Object? streamProducts = freezed,
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
      agoraAppId: freezed == agoraAppId
          ? _value.agoraAppId
          : agoraAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
      streamSettings: freezed == streamSettings
          ? _value.streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      agoraUid: freezed == agoraUid
          ? _value.agoraUid
          : agoraUid // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
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
      @JsonKey(name: 'agora_app_id') String? agoraAppId,
      @JsonKey(name: 'agora_token') String? agoraToken,
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
      @JsonKey(name: 'stream_settings') Map<String, dynamic>? streamSettings,
      @JsonKey(name: 'agora_uid') int? agoraUid,
      @JsonKey(name: 'is_mine') bool? isMine,
      StreamUserModel? user,
      @JsonKey(name: 'stream_products')
      List<StreamProductModel>? streamProducts});

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
    Object? agoraAppId = freezed,
    Object? agoraToken = freezed,
    Object? status = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? isRecordingEnabled = freezed,
    Object? recordingResourceId = freezed,
    Object? recordingSid = freezed,
    Object? recordingFiles = freezed,
    Object? thumbnailUrl = freezed,
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
    Object? streamSettings = freezed,
    Object? agoraUid = freezed,
    Object? isMine = freezed,
    Object? user = freezed,
    Object? streamProducts = freezed,
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
      agoraAppId: freezed == agoraAppId
          ? _value.agoraAppId
          : agoraAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
      streamSettings: freezed == streamSettings
          ? _value._streamSettings
          : streamSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      agoraUid: freezed == agoraUid
          ? _value.agoraUid
          : agoraUid // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: 'agora_app_id') this.agoraAppId,
      @JsonKey(name: 'agora_token') this.agoraToken,
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
      @JsonKey(name: 'stream_settings')
      final Map<String, dynamic>? streamSettings,
      @JsonKey(name: 'agora_uid') this.agoraUid,
      @JsonKey(name: 'is_mine') this.isMine,
      this.user,
      @JsonKey(name: 'stream_products')
      final List<StreamProductModel>? streamProducts})
      : _recordingFiles = recordingFiles,
        _streamSettings = streamSettings,
        _streamProducts = streamProducts;

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
  @override
  @JsonKey(name: 'channel_name')
  final String? channelName;
  @override
  @JsonKey(name: 'agora_app_id')
  final String? agoraAppId;
  @override
  @JsonKey(name: 'agora_token')
  final String? agoraToken;
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
// NEW
  @override
  @JsonKey(name: 'is_recording_enabled')
  final bool? isRecordingEnabled;
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

// NEW (nullable list)
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
// NEW
  @override
  @JsonKey(name: 'viewer_count')
  final int? viewerCount;
// NEW
  @override
  @JsonKey(name: 'max_viewers')
  final int? maxViewers;
// NEW
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
  final Map<String, dynamic>? _streamSettings;
  @override
  @JsonKey(name: 'stream_settings')
  Map<String, dynamic>? get streamSettings {
    final value = _streamSettings;
    if (value == null) return null;
    if (_streamSettings is EqualUnmodifiableMapView) return _streamSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// NEW
  @override
  @JsonKey(name: 'agora_uid')
  final int? agoraUid;
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

  @override
  String toString() {
    return 'StreamDataModel(id: $id, userId: $userId, title: $title, description: $description, channelName: $channelName, agoraAppId: $agoraAppId, agoraToken: $agoraToken, status: $status, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, isRecordingEnabled: $isRecordingEnabled, recordingResourceId: $recordingResourceId, recordingSid: $recordingSid, recordingFiles: $recordingFiles, thumbnailUrl: $thumbnailUrl, viewerCount: $viewerCount, maxViewers: $maxViewers, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt, autoDeleteAfterEnd: $autoDeleteAfterEnd, autoDeleteHours: $autoDeleteHours, saveRecording: $saveRecording, enableComments: $enableComments, enableBidding: $enableBidding, minimumBidIncrement: $minimumBidIncrement, streamSettings: $streamSettings, agoraUid: $agoraUid, isMine: $isMine, user: $user, streamProducts: $streamProducts)';
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
            (identical(other.agoraAppId, agoraAppId) ||
                other.agoraAppId == agoraAppId) &&
            (identical(other.agoraToken, agoraToken) ||
                other.agoraToken == agoraToken) &&
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
            const DeepCollectionEquality()
                .equals(other._streamSettings, _streamSettings) &&
            (identical(other.agoraUid, agoraUid) ||
                other.agoraUid == agoraUid) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._streamProducts, _streamProducts));
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
        agoraAppId,
        agoraToken,
        status,
        scheduledAt,
        startedAt,
        endedAt,
        isRecordingEnabled,
        recordingResourceId,
        recordingSid,
        const DeepCollectionEquality().hash(_recordingFiles),
        thumbnailUrl,
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
        const DeepCollectionEquality().hash(_streamSettings),
        agoraUid,
        isMine,
        user,
        const DeepCollectionEquality().hash(_streamProducts)
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
      @JsonKey(name: 'agora_app_id') final String? agoraAppId,
      @JsonKey(name: 'agora_token') final String? agoraToken,
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
      @JsonKey(name: 'stream_settings')
      final Map<String, dynamic>? streamSettings,
      @JsonKey(name: 'agora_uid') final int? agoraUid,
      @JsonKey(name: 'is_mine') final bool? isMine,
      final StreamUserModel? user,
      @JsonKey(name: 'stream_products')
      final List<StreamProductModel>? streamProducts}) = _$StreamDataModelImpl;

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
  String? get description;
  @override
  @JsonKey(name: 'channel_name')
  String? get channelName;
  @override
  @JsonKey(name: 'agora_app_id')
  String? get agoraAppId;
  @override
  @JsonKey(name: 'agora_token')
  String? get agoraToken;
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
  DateTime? get endedAt; // NEW
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
  @JsonKey(
      name: 'recording_files',
      fromJson: _stringListOrNull,
      toJson: _nullOrStringList)
  List<String>? get recordingFiles; // NEW (nullable list)
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl; // NEW
  @override
  @JsonKey(name: 'viewer_count')
  int? get viewerCount; // NEW
  @override
  @JsonKey(name: 'max_viewers')
  int? get maxViewers; // NEW
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
  @JsonKey(name: 'stream_settings')
  Map<String, dynamic>? get streamSettings; // NEW
  @override
  @JsonKey(name: 'agora_uid')
  int? get agoraUid;
  @override
  @JsonKey(name: 'is_mine')
  bool? get isMine;
  @override
  StreamUserModel? get user;
  @override
  @JsonKey(name: 'stream_products')
  List<StreamProductModel>? get streamProducts;

  /// Create a copy of StreamDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamDataModelImplCopyWith<_$StreamDataModelImpl> get copyWith =>
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
    return 'StreamUserModel(id: $id, name: $name, email: $email, personalRating: $personalRating, personalRatingCount: $personalRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
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
  int get hashCode => Object.hash(runtimeType, id, name, email, personalRating,
      personalRatingCount, isFavorited, favoritesCount);

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
  double? get startingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_bid')
  double? get currentBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  int? get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'starting_price') double? startingPrice,
      @JsonKey(name: 'current_bid') double? currentBid,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'display_order') int? displayOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ProductModel? product});

  $ProductModelCopyWith<$Res>? get product;
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
    Object? isActive = freezed,
    Object? displayOrder = freezed,
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
              as double?,
      currentBid: freezed == currentBid
          ? _value.currentBid
          : currentBid // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as ProductModel?,
    ) as $Val);
  }

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
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
      @JsonKey(name: 'starting_price') double? startingPrice,
      @JsonKey(name: 'current_bid') double? currentBid,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'display_order') int? displayOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ProductModel? product});

  @override
  $ProductModelCopyWith<$Res>? get product;
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
    Object? isActive = freezed,
    Object? displayOrder = freezed,
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
              as double?,
      currentBid: freezed == currentBid
          ? _value.currentBid
          : currentBid // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as ProductModel?,
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
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'display_order') this.displayOrder,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.product});

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
  final double? startingPrice;
  @override
  @JsonKey(name: 'current_bid')
  final double? currentBid;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'display_order')
  final int? displayOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final ProductModel? product;

  @override
  String toString() {
    return 'StreamProductModel(id: $id, streamId: $streamId, productId: $productId, startingPrice: $startingPrice, currentBid: $currentBid, isActive: $isActive, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, product: $product)';
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
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
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
      isActive,
      displayOrder,
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
      @JsonKey(name: 'starting_price') final double? startingPrice,
      @JsonKey(name: 'current_bid') final double? currentBid,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'display_order') final int? displayOrder,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final ProductModel? product}) = _$StreamProductModelImpl;

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
  double? get startingPrice;
  @override
  @JsonKey(name: 'current_bid')
  double? get currentBid;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'display_order')
  int? get displayOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  ProductModel? get product;

  /// Create a copy of StreamProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamProductModelImplCopyWith<_$StreamProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamListResponseModel _$StreamListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _StreamListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$StreamListResponseModel {
  bool? get success => throw _privateConstructorUsedError;
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
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$StreamListResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {this.success, final List<StreamDataModel>? data, this.pagination})
      : _data = data;

  factory _$StreamListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamListResponseModelImplFromJson(json);

  @override
  final bool? success;
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
    return 'StreamListResponseModel(success: $success, data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamListResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success,
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
      final List<StreamDataModel>? data,
      final PaginationModel? pagination}) = _$StreamListResponseModelImpl;

  factory _StreamListResponseModel.fromJson(Map<String, dynamic> json) =
      _$StreamListResponseModelImpl.fromJson;

  @override
  bool? get success;
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
