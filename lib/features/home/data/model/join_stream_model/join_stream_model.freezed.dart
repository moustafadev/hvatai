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
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  JoinStreamData? get data => throw _privateConstructorUsedError;

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
  $Res call({bool? success, String? message, JoinStreamData? data});

  $JoinStreamDataCopyWith<$Res>? get data;
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
              as JoinStreamData?,
    ) as $Val);
  }

  /// Create a copy of JoinStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $JoinStreamDataCopyWith<$Res>(_value.data!, (value) {
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
  $Res call({bool? success, String? message, JoinStreamData? data});

  @override
  $JoinStreamDataCopyWith<$Res>? get data;
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
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$JoinStreamResponseImpl(
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
              as JoinStreamData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinStreamResponseImpl implements _JoinStreamResponse {
  const _$JoinStreamResponseImpl({this.success, this.message, this.data});

  factory _$JoinStreamResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinStreamResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final JoinStreamData? data;

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
      {final bool? success,
      final String? message,
      final JoinStreamData? data}) = _$JoinStreamResponseImpl;

  factory _JoinStreamResponse.fromJson(Map<String, dynamic> json) =
      _$JoinStreamResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  JoinStreamData? get data;

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
  /// Primary tokens/ids your SDK will use
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'rtm_token')
  String? get rtmToken => throw _privateConstructorUsedError;

  /// Channel / App IDs (duplicates kept to match payload)
  @JsonKey(name: 'channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_id')
  String? get appId => throw _privateConstructorUsedError;
  @JsonKey(name: 'agora_app_id')
  String? get agoraAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'agora_token')
  String? get agoraToken => throw _privateConstructorUsedError;

  /// UIDs
  @JsonKey(name: 'agora_uid')
  int? get agoraUid => throw _privateConstructorUsedError;
  int? get uid => throw _privateConstructorUsedError;

  /// "0"/"1" in payload → bool here
  @JsonKey(
      name: 'is_publisher',
      fromJson: _stringIntBoolToBool,
      toJson: _boolToStringZeroOne)
  bool? get isPublisher => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool? get isMine => throw _privateConstructorUsedError;

  /// ISO8601 string → DateTime
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;

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
      {String? token,
      @JsonKey(name: 'rtm_token') String? rtmToken,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'app_id') String? appId,
      @JsonKey(name: 'agora_app_id') String? agoraAppId,
      @JsonKey(name: 'agora_token') String? agoraToken,
      @JsonKey(name: 'agora_uid') int? agoraUid,
      int? uid,
      @JsonKey(
          name: 'is_publisher',
          fromJson: _stringIntBoolToBool,
          toJson: _boolToStringZeroOne)
      bool? isPublisher,
      @JsonKey(name: 'is_mine') bool? isMine,
      @JsonKey(name: 'expires_at') DateTime? expiresAt});
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
    Object? token = freezed,
    Object? rtmToken = freezed,
    Object? channelName = freezed,
    Object? appId = freezed,
    Object? agoraAppId = freezed,
    Object? agoraToken = freezed,
    Object? agoraUid = freezed,
    Object? uid = freezed,
    Object? isPublisher = freezed,
    Object? isMine = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      rtmToken: freezed == rtmToken
          ? _value.rtmToken
          : rtmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraAppId: freezed == agoraAppId
          ? _value.agoraAppId
          : agoraAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraUid: freezed == agoraUid
          ? _value.agoraUid
          : agoraUid // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      isPublisher: freezed == isPublisher
          ? _value.isPublisher
          : isPublisher // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
      {String? token,
      @JsonKey(name: 'rtm_token') String? rtmToken,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'app_id') String? appId,
      @JsonKey(name: 'agora_app_id') String? agoraAppId,
      @JsonKey(name: 'agora_token') String? agoraToken,
      @JsonKey(name: 'agora_uid') int? agoraUid,
      int? uid,
      @JsonKey(
          name: 'is_publisher',
          fromJson: _stringIntBoolToBool,
          toJson: _boolToStringZeroOne)
      bool? isPublisher,
      @JsonKey(name: 'is_mine') bool? isMine,
      @JsonKey(name: 'expires_at') DateTime? expiresAt});
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
    Object? token = freezed,
    Object? rtmToken = freezed,
    Object? channelName = freezed,
    Object? appId = freezed,
    Object? agoraAppId = freezed,
    Object? agoraToken = freezed,
    Object? agoraUid = freezed,
    Object? uid = freezed,
    Object? isPublisher = freezed,
    Object? isMine = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$JoinStreamDataImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      rtmToken: freezed == rtmToken
          ? _value.rtmToken
          : rtmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraAppId: freezed == agoraAppId
          ? _value.agoraAppId
          : agoraAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
      agoraUid: freezed == agoraUid
          ? _value.agoraUid
          : agoraUid // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      isPublisher: freezed == isPublisher
          ? _value.isPublisher
          : isPublisher // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinStreamDataImpl implements _JoinStreamData {
  const _$JoinStreamDataImpl(
      {this.token,
      @JsonKey(name: 'rtm_token') this.rtmToken,
      @JsonKey(name: 'channel_name') this.channelName,
      @JsonKey(name: 'app_id') this.appId,
      @JsonKey(name: 'agora_app_id') this.agoraAppId,
      @JsonKey(name: 'agora_token') this.agoraToken,
      @JsonKey(name: 'agora_uid') this.agoraUid,
      this.uid,
      @JsonKey(
          name: 'is_publisher',
          fromJson: _stringIntBoolToBool,
          toJson: _boolToStringZeroOne)
      this.isPublisher,
      @JsonKey(name: 'is_mine') this.isMine,
      @JsonKey(name: 'expires_at') this.expiresAt});

  factory _$JoinStreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinStreamDataImplFromJson(json);

  /// Primary tokens/ids your SDK will use
  @override
  final String? token;
  @override
  @JsonKey(name: 'rtm_token')
  final String? rtmToken;

  /// Channel / App IDs (duplicates kept to match payload)
  @override
  @JsonKey(name: 'channel_name')
  final String? channelName;
  @override
  @JsonKey(name: 'app_id')
  final String? appId;
  @override
  @JsonKey(name: 'agora_app_id')
  final String? agoraAppId;
  @override
  @JsonKey(name: 'agora_token')
  final String? agoraToken;

  /// UIDs
  @override
  @JsonKey(name: 'agora_uid')
  final int? agoraUid;
  @override
  final int? uid;

  /// "0"/"1" in payload → bool here
  @override
  @JsonKey(
      name: 'is_publisher',
      fromJson: _stringIntBoolToBool,
      toJson: _boolToStringZeroOne)
  final bool? isPublisher;
  @override
  @JsonKey(name: 'is_mine')
  final bool? isMine;

  /// ISO8601 string → DateTime
  @override
  @JsonKey(name: 'expires_at')
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'JoinStreamData(token: $token, rtmToken: $rtmToken, channelName: $channelName, appId: $appId, agoraAppId: $agoraAppId, agoraToken: $agoraToken, agoraUid: $agoraUid, uid: $uid, isPublisher: $isPublisher, isMine: $isMine, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinStreamDataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.rtmToken, rtmToken) ||
                other.rtmToken == rtmToken) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.agoraAppId, agoraAppId) ||
                other.agoraAppId == agoraAppId) &&
            (identical(other.agoraToken, agoraToken) ||
                other.agoraToken == agoraToken) &&
            (identical(other.agoraUid, agoraUid) ||
                other.agoraUid == agoraUid) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isPublisher, isPublisher) ||
                other.isPublisher == isPublisher) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      rtmToken,
      channelName,
      appId,
      agoraAppId,
      agoraToken,
      agoraUid,
      uid,
      isPublisher,
      isMine,
      expiresAt);

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
          {final String? token,
          @JsonKey(name: 'rtm_token') final String? rtmToken,
          @JsonKey(name: 'channel_name') final String? channelName,
          @JsonKey(name: 'app_id') final String? appId,
          @JsonKey(name: 'agora_app_id') final String? agoraAppId,
          @JsonKey(name: 'agora_token') final String? agoraToken,
          @JsonKey(name: 'agora_uid') final int? agoraUid,
          final int? uid,
          @JsonKey(
              name: 'is_publisher',
              fromJson: _stringIntBoolToBool,
              toJson: _boolToStringZeroOne)
          final bool? isPublisher,
          @JsonKey(name: 'is_mine') final bool? isMine,
          @JsonKey(name: 'expires_at') final DateTime? expiresAt}) =
      _$JoinStreamDataImpl;

  factory _JoinStreamData.fromJson(Map<String, dynamic> json) =
      _$JoinStreamDataImpl.fromJson;

  /// Primary tokens/ids your SDK will use
  @override
  String? get token;
  @override
  @JsonKey(name: 'rtm_token')
  String? get rtmToken;

  /// Channel / App IDs (duplicates kept to match payload)
  @override
  @JsonKey(name: 'channel_name')
  String? get channelName;
  @override
  @JsonKey(name: 'app_id')
  String? get appId;
  @override
  @JsonKey(name: 'agora_app_id')
  String? get agoraAppId;
  @override
  @JsonKey(name: 'agora_token')
  String? get agoraToken;

  /// UIDs
  @override
  @JsonKey(name: 'agora_uid')
  int? get agoraUid;
  @override
  int? get uid;

  /// "0"/"1" in payload → bool here
  @override
  @JsonKey(
      name: 'is_publisher',
      fromJson: _stringIntBoolToBool,
      toJson: _boolToStringZeroOne)
  bool? get isPublisher;
  @override
  @JsonKey(name: 'is_mine')
  bool? get isMine;

  /// ISO8601 string → DateTime
  @override
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt;

  /// Create a copy of JoinStreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinStreamDataImplCopyWith<_$JoinStreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
