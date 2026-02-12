// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InviteCodeResponse _$InviteCodeResponseFromJson(Map<String, dynamic> json) {
  return _InviteCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$InviteCodeResponse {
  String? get message => throw _privateConstructorUsedError;
  InviteCodeData? get data => throw _privateConstructorUsedError;

  /// Serializes this InviteCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InviteCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InviteCodeResponseCopyWith<InviteCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteCodeResponseCopyWith<$Res> {
  factory $InviteCodeResponseCopyWith(
          InviteCodeResponse value, $Res Function(InviteCodeResponse) then) =
      _$InviteCodeResponseCopyWithImpl<$Res, InviteCodeResponse>;
  @useResult
  $Res call({String? message, InviteCodeData? data});

  $InviteCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$InviteCodeResponseCopyWithImpl<$Res, $Val extends InviteCodeResponse>
    implements $InviteCodeResponseCopyWith<$Res> {
  _$InviteCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InviteCodeData?,
    ) as $Val);
  }

  /// Create a copy of InviteCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InviteCodeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $InviteCodeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InviteCodeResponseImplCopyWith<$Res>
    implements $InviteCodeResponseCopyWith<$Res> {
  factory _$$InviteCodeResponseImplCopyWith(_$InviteCodeResponseImpl value,
          $Res Function(_$InviteCodeResponseImpl) then) =
      __$$InviteCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, InviteCodeData? data});

  @override
  $InviteCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InviteCodeResponseImplCopyWithImpl<$Res>
    extends _$InviteCodeResponseCopyWithImpl<$Res, _$InviteCodeResponseImpl>
    implements _$$InviteCodeResponseImplCopyWith<$Res> {
  __$$InviteCodeResponseImplCopyWithImpl(_$InviteCodeResponseImpl _value,
      $Res Function(_$InviteCodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$InviteCodeResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InviteCodeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InviteCodeResponseImpl implements _InviteCodeResponse {
  const _$InviteCodeResponseImpl({this.message, this.data});

  factory _$InviteCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InviteCodeResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final InviteCodeData? data;

  @override
  String toString() {
    return 'InviteCodeResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteCodeResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of InviteCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteCodeResponseImplCopyWith<_$InviteCodeResponseImpl> get copyWith =>
      __$$InviteCodeResponseImplCopyWithImpl<_$InviteCodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InviteCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _InviteCodeResponse implements InviteCodeResponse {
  const factory _InviteCodeResponse(
      {final String? message,
      final InviteCodeData? data}) = _$InviteCodeResponseImpl;

  factory _InviteCodeResponse.fromJson(Map<String, dynamic> json) =
      _$InviteCodeResponseImpl.fromJson;

  @override
  String? get message;
  @override
  InviteCodeData? get data;

  /// Create a copy of InviteCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteCodeResponseImplCopyWith<_$InviteCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InviteCodeData _$InviteCodeDataFromJson(Map<String, dynamic> json) {
  return _InviteCodeData.fromJson(json);
}

/// @nodoc
mixin _$InviteCodeData {
  @JsonKey(name: 'invite_code')
  String get inviteCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'joined_users_count')
  int get joinedUsersCount => throw _privateConstructorUsedError;

  /// Serializes this InviteCodeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InviteCodeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InviteCodeDataCopyWith<InviteCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteCodeDataCopyWith<$Res> {
  factory $InviteCodeDataCopyWith(
          InviteCodeData value, $Res Function(InviteCodeData) then) =
      _$InviteCodeDataCopyWithImpl<$Res, InviteCodeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'invite_code') String inviteCode,
      @JsonKey(name: 'joined_users_count') int joinedUsersCount});
}

/// @nodoc
class _$InviteCodeDataCopyWithImpl<$Res, $Val extends InviteCodeData>
    implements $InviteCodeDataCopyWith<$Res> {
  _$InviteCodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteCodeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCode = null,
    Object? joinedUsersCount = null,
  }) {
    return _then(_value.copyWith(
      inviteCode: null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
      joinedUsersCount: null == joinedUsersCount
          ? _value.joinedUsersCount
          : joinedUsersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InviteCodeDataImplCopyWith<$Res>
    implements $InviteCodeDataCopyWith<$Res> {
  factory _$$InviteCodeDataImplCopyWith(_$InviteCodeDataImpl value,
          $Res Function(_$InviteCodeDataImpl) then) =
      __$$InviteCodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'invite_code') String inviteCode,
      @JsonKey(name: 'joined_users_count') int joinedUsersCount});
}

/// @nodoc
class __$$InviteCodeDataImplCopyWithImpl<$Res>
    extends _$InviteCodeDataCopyWithImpl<$Res, _$InviteCodeDataImpl>
    implements _$$InviteCodeDataImplCopyWith<$Res> {
  __$$InviteCodeDataImplCopyWithImpl(
      _$InviteCodeDataImpl _value, $Res Function(_$InviteCodeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteCodeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCode = null,
    Object? joinedUsersCount = null,
  }) {
    return _then(_$InviteCodeDataImpl(
      inviteCode: null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
      joinedUsersCount: null == joinedUsersCount
          ? _value.joinedUsersCount
          : joinedUsersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InviteCodeDataImpl implements _InviteCodeData {
  const _$InviteCodeDataImpl(
      {@JsonKey(name: 'invite_code') required this.inviteCode,
      @JsonKey(name: 'joined_users_count') this.joinedUsersCount = 0});

  factory _$InviteCodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InviteCodeDataImplFromJson(json);

  @override
  @JsonKey(name: 'invite_code')
  final String inviteCode;
  @override
  @JsonKey(name: 'joined_users_count')
  final int joinedUsersCount;

  @override
  String toString() {
    return 'InviteCodeData(inviteCode: $inviteCode, joinedUsersCount: $joinedUsersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteCodeDataImpl &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode) &&
            (identical(other.joinedUsersCount, joinedUsersCount) ||
                other.joinedUsersCount == joinedUsersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviteCode, joinedUsersCount);

  /// Create a copy of InviteCodeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteCodeDataImplCopyWith<_$InviteCodeDataImpl> get copyWith =>
      __$$InviteCodeDataImplCopyWithImpl<_$InviteCodeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InviteCodeDataImplToJson(
      this,
    );
  }
}

abstract class _InviteCodeData implements InviteCodeData {
  const factory _InviteCodeData(
          {@JsonKey(name: 'invite_code') required final String inviteCode,
          @JsonKey(name: 'joined_users_count') final int joinedUsersCount}) =
      _$InviteCodeDataImpl;

  factory _InviteCodeData.fromJson(Map<String, dynamic> json) =
      _$InviteCodeDataImpl.fromJson;

  @override
  @JsonKey(name: 'invite_code')
  String get inviteCode;
  @override
  @JsonKey(name: 'joined_users_count')
  int get joinedUsersCount;

  /// Create a copy of InviteCodeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteCodeDataImplCopyWith<_$InviteCodeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
