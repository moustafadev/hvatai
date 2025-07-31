// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialLoginResponse _$SocialLoginResponseFromJson(Map<String, dynamic> json) {
  return _SocialLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$SocialLoginResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SocialLoginData? get data => throw _privateConstructorUsedError;

  /// Serializes this SocialLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialLoginResponseCopyWith<SocialLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginResponseCopyWith<$Res> {
  factory $SocialLoginResponseCopyWith(
          SocialLoginResponse value, $Res Function(SocialLoginResponse) then) =
      _$SocialLoginResponseCopyWithImpl<$Res, SocialLoginResponse>;
  @useResult
  $Res call({bool? success, String? message, SocialLoginData? data});

  $SocialLoginDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SocialLoginResponseCopyWithImpl<$Res, $Val extends SocialLoginResponse>
    implements $SocialLoginResponseCopyWith<$Res> {
  _$SocialLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialLoginResponse
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
              as SocialLoginData?,
    ) as $Val);
  }

  /// Create a copy of SocialLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLoginDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SocialLoginDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialLoginResponseImplCopyWith<$Res>
    implements $SocialLoginResponseCopyWith<$Res> {
  factory _$$SocialLoginResponseImplCopyWith(_$SocialLoginResponseImpl value,
          $Res Function(_$SocialLoginResponseImpl) then) =
      __$$SocialLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, SocialLoginData? data});

  @override
  $SocialLoginDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SocialLoginResponseImplCopyWithImpl<$Res>
    extends _$SocialLoginResponseCopyWithImpl<$Res, _$SocialLoginResponseImpl>
    implements _$$SocialLoginResponseImplCopyWith<$Res> {
  __$$SocialLoginResponseImplCopyWithImpl(_$SocialLoginResponseImpl _value,
      $Res Function(_$SocialLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SocialLoginResponseImpl(
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
              as SocialLoginData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLoginResponseImpl implements _SocialLoginResponse {
  const _$SocialLoginResponseImpl({this.success, this.message, this.data});

  factory _$SocialLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLoginResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final SocialLoginData? data;

  @override
  String toString() {
    return 'SocialLoginResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of SocialLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginResponseImplCopyWith<_$SocialLoginResponseImpl> get copyWith =>
      __$$SocialLoginResponseImplCopyWithImpl<_$SocialLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _SocialLoginResponse implements SocialLoginResponse {
  const factory _SocialLoginResponse(
      {final bool? success,
      final String? message,
      final SocialLoginData? data}) = _$SocialLoginResponseImpl;

  factory _SocialLoginResponse.fromJson(Map<String, dynamic> json) =
      _$SocialLoginResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  SocialLoginData? get data;

  /// Create a copy of SocialLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLoginResponseImplCopyWith<_$SocialLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialLoginData _$SocialLoginDataFromJson(Map<String, dynamic> json) {
  return _SocialLoginData.fromJson(json);
}

/// @nodoc
mixin _$SocialLoginData {
  UserRegistrationData? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;

  /// Serializes this SocialLoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialLoginDataCopyWith<SocialLoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginDataCopyWith<$Res> {
  factory $SocialLoginDataCopyWith(
          SocialLoginData value, $Res Function(SocialLoginData) then) =
      _$SocialLoginDataCopyWithImpl<$Res, SocialLoginData>;
  @useResult
  $Res call(
      {UserRegistrationData? user,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType});

  $UserRegistrationDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$SocialLoginDataCopyWithImpl<$Res, $Val extends SocialLoginData>
    implements $SocialLoginDataCopyWith<$Res> {
  _$SocialLoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SocialLoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRegistrationDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialLoginDataImplCopyWith<$Res>
    implements $SocialLoginDataCopyWith<$Res> {
  factory _$$SocialLoginDataImplCopyWith(_$SocialLoginDataImpl value,
          $Res Function(_$SocialLoginDataImpl) then) =
      __$$SocialLoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRegistrationData? user,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType});

  @override
  $UserRegistrationDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SocialLoginDataImplCopyWithImpl<$Res>
    extends _$SocialLoginDataCopyWithImpl<$Res, _$SocialLoginDataImpl>
    implements _$$SocialLoginDataImplCopyWith<$Res> {
  __$$SocialLoginDataImplCopyWithImpl(
      _$SocialLoginDataImpl _value, $Res Function(_$SocialLoginDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_$SocialLoginDataImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLoginDataImpl implements _SocialLoginData {
  const _$SocialLoginDataImpl(
      {this.user,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType});

  factory _$SocialLoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLoginDataImplFromJson(json);

  @override
  final UserRegistrationData? user;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;

  @override
  String toString() {
    return 'SocialLoginData(user: $user, accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, accessToken, tokenType);

  /// Create a copy of SocialLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginDataImplCopyWith<_$SocialLoginDataImpl> get copyWith =>
      __$$SocialLoginDataImplCopyWithImpl<_$SocialLoginDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLoginDataImplToJson(
      this,
    );
  }
}

abstract class _SocialLoginData implements SocialLoginData {
  const factory _SocialLoginData(
          {final UserRegistrationData? user,
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'token_type') final String? tokenType}) =
      _$SocialLoginDataImpl;

  factory _SocialLoginData.fromJson(Map<String, dynamic> json) =
      _$SocialLoginDataImpl.fromJson;

  @override
  UserRegistrationData? get user;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;

  /// Create a copy of SocialLoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLoginDataImplCopyWith<_$SocialLoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
