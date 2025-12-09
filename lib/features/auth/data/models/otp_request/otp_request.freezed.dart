// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpRequestResponse _$OtpRequestResponseFromJson(Map<String, dynamic> json) {
  return _OtpRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$OtpRequestResponse {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  String get otp => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this OtpRequestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpRequestResponseCopyWith<OtpRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpRequestResponseCopyWith<$Res> {
  factory $OtpRequestResponseCopyWith(
          OtpRequestResponse value, $Res Function(OtpRequestResponse) then) =
      _$OtpRequestResponseCopyWithImpl<$Res, OtpRequestResponse>;
  @useResult
  $Res call(
      {String message,
      @JsonKey(name: 'otp') String otp,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$OtpRequestResponseCopyWithImpl<$Res, $Val extends OtpRequestResponse>
    implements $OtpRequestResponseCopyWith<$Res> {
  _$OtpRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? otp = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpRequestResponseImplCopyWith<$Res>
    implements $OtpRequestResponseCopyWith<$Res> {
  factory _$$OtpRequestResponseImplCopyWith(_$OtpRequestResponseImpl value,
          $Res Function(_$OtpRequestResponseImpl) then) =
      __$$OtpRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      @JsonKey(name: 'otp') String otp,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$OtpRequestResponseImplCopyWithImpl<$Res>
    extends _$OtpRequestResponseCopyWithImpl<$Res, _$OtpRequestResponseImpl>
    implements _$$OtpRequestResponseImplCopyWith<$Res> {
  __$$OtpRequestResponseImplCopyWithImpl(_$OtpRequestResponseImpl _value,
      $Res Function(_$OtpRequestResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? otp = null,
    Object? userId = null,
  }) {
    return _then(_$OtpRequestResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpRequestResponseImpl implements _OtpRequestResponse {
  const _$OtpRequestResponseImpl(
      {this.message = '',
      @JsonKey(name: 'otp') this.otp = '',
      @JsonKey(name: 'user_id') this.userId = 0});

  factory _$OtpRequestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpRequestResponseImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(name: 'otp')
  final String otp;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'OtpRequestResponse(message: $message, otp: $otp, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpRequestResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, otp, userId);

  /// Create a copy of OtpRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpRequestResponseImplCopyWith<_$OtpRequestResponseImpl> get copyWith =>
      __$$OtpRequestResponseImplCopyWithImpl<_$OtpRequestResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _OtpRequestResponse implements OtpRequestResponse {
  const factory _OtpRequestResponse(
      {final String message,
      @JsonKey(name: 'otp') final String otp,
      @JsonKey(name: 'user_id') final int userId}) = _$OtpRequestResponseImpl;

  factory _OtpRequestResponse.fromJson(Map<String, dynamic> json) =
      _$OtpRequestResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'otp')
  String get otp;
  @override
  @JsonKey(name: 'user_id')
  int get userId;

  /// Create a copy of OtpRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpRequestResponseImplCopyWith<_$OtpRequestResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
