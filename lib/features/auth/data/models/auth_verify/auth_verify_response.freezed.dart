// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyAuthUser _$VerifyAuthUserFromJson(Map<String, dynamic> json) {
  return _VerifyAuthUser.fromJson(json);
}

/// @nodoc
mixin _$VerifyAuthUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this VerifyAuthUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyAuthUserCopyWith<VerifyAuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAuthUserCopyWith<$Res> {
  factory $VerifyAuthUserCopyWith(
          VerifyAuthUser value, $Res Function(VerifyAuthUser) then) =
      _$VerifyAuthUserCopyWithImpl<$Res, VerifyAuthUser>;
  @useResult
  $Res call({int id, String name, String phone, String? image});
}

/// @nodoc
class _$VerifyAuthUserCopyWithImpl<$Res, $Val extends VerifyAuthUser>
    implements $VerifyAuthUserCopyWith<$Res> {
  _$VerifyAuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyAuthUserImplCopyWith<$Res>
    implements $VerifyAuthUserCopyWith<$Res> {
  factory _$$VerifyAuthUserImplCopyWith(_$VerifyAuthUserImpl value,
          $Res Function(_$VerifyAuthUserImpl) then) =
      __$$VerifyAuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String phone, String? image});
}

/// @nodoc
class __$$VerifyAuthUserImplCopyWithImpl<$Res>
    extends _$VerifyAuthUserCopyWithImpl<$Res, _$VerifyAuthUserImpl>
    implements _$$VerifyAuthUserImplCopyWith<$Res> {
  __$$VerifyAuthUserImplCopyWithImpl(
      _$VerifyAuthUserImpl _value, $Res Function(_$VerifyAuthUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? image = freezed,
  }) {
    return _then(_$VerifyAuthUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyAuthUserImpl implements _VerifyAuthUser {
  const _$VerifyAuthUserImpl(
      {this.id = 0, this.name = '', this.phone = '', this.image});

  factory _$VerifyAuthUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyAuthUserImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String phone;
  @override
  final String? image;

  @override
  String toString() {
    return 'VerifyAuthUser(id: $id, name: $name, phone: $phone, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAuthUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, image);

  /// Create a copy of VerifyAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAuthUserImplCopyWith<_$VerifyAuthUserImpl> get copyWith =>
      __$$VerifyAuthUserImplCopyWithImpl<_$VerifyAuthUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyAuthUserImplToJson(
      this,
    );
  }
}

abstract class _VerifyAuthUser implements VerifyAuthUser {
  const factory _VerifyAuthUser(
      {final int id,
      final String name,
      final String phone,
      final String? image}) = _$VerifyAuthUserImpl;

  factory _VerifyAuthUser.fromJson(Map<String, dynamic> json) =
      _$VerifyAuthUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String? get image;

  /// Create a copy of VerifyAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyAuthUserImplCopyWith<_$VerifyAuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthVerifyResponse _$AuthVerifyResponseFromJson(Map<String, dynamic> json) {
  return _AuthVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthVerifyResponse {
  String get message => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  VerifyAuthUser? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_setup')
  bool get isSetup => throw _privateConstructorUsedError;

  /// Serializes this AuthVerifyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthVerifyResponseCopyWith<AuthVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifyResponseCopyWith<$Res> {
  factory $AuthVerifyResponseCopyWith(
          AuthVerifyResponse value, $Res Function(AuthVerifyResponse) then) =
      _$AuthVerifyResponseCopyWithImpl<$Res, AuthVerifyResponse>;
  @useResult
  $Res call(
      {String message,
      String token,
      @JsonKey(name: 'user') VerifyAuthUser? user,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'is_setup') bool isSetup});

  $VerifyAuthUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthVerifyResponseCopyWithImpl<$Res, $Val extends AuthVerifyResponse>
    implements $AuthVerifyResponseCopyWith<$Res> {
  _$AuthVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? token = null,
    Object? user = freezed,
    Object? userId = null,
    Object? isSetup = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as VerifyAuthUser?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isSetup: null == isSetup
          ? _value.isSetup
          : isSetup // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AuthVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifyAuthUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $VerifyAuthUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthVerifyResponseImplCopyWith<$Res>
    implements $AuthVerifyResponseCopyWith<$Res> {
  factory _$$AuthVerifyResponseImplCopyWith(_$AuthVerifyResponseImpl value,
          $Res Function(_$AuthVerifyResponseImpl) then) =
      __$$AuthVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      String token,
      @JsonKey(name: 'user') VerifyAuthUser? user,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'is_setup') bool isSetup});

  @override
  $VerifyAuthUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthVerifyResponseImplCopyWithImpl<$Res>
    extends _$AuthVerifyResponseCopyWithImpl<$Res, _$AuthVerifyResponseImpl>
    implements _$$AuthVerifyResponseImplCopyWith<$Res> {
  __$$AuthVerifyResponseImplCopyWithImpl(_$AuthVerifyResponseImpl _value,
      $Res Function(_$AuthVerifyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? token = null,
    Object? user = freezed,
    Object? userId = null,
    Object? isSetup = null,
  }) {
    return _then(_$AuthVerifyResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as VerifyAuthUser?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isSetup: null == isSetup
          ? _value.isSetup
          : isSetup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthVerifyResponseImpl implements _AuthVerifyResponse {
  const _$AuthVerifyResponseImpl(
      {this.message = '',
      this.token = '',
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'user_id') this.userId = 0,
      @JsonKey(name: 'is_setup') this.isSetup = false});

  factory _$AuthVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthVerifyResponseImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey(name: 'user')
  final VerifyAuthUser? user;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'is_setup')
  final bool isSetup;

  @override
  String toString() {
    return 'AuthVerifyResponse(message: $message, token: $token, user: $user, userId: $userId, isSetup: $isSetup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthVerifyResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isSetup, isSetup) || other.isSetup == isSetup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, token, user, userId, isSetup);

  /// Create a copy of AuthVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthVerifyResponseImplCopyWith<_$AuthVerifyResponseImpl> get copyWith =>
      __$$AuthVerifyResponseImplCopyWithImpl<_$AuthVerifyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthVerifyResponse implements AuthVerifyResponse {
  const factory _AuthVerifyResponse(
          {final String message,
          final String token,
          @JsonKey(name: 'user') final VerifyAuthUser? user,
          @JsonKey(name: 'user_id') final int userId,
          @JsonKey(name: 'is_setup') final bool isSetup}) =
      _$AuthVerifyResponseImpl;

  factory _AuthVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$AuthVerifyResponseImpl.fromJson;

  @override
  String get message;
  @override
  String get token;
  @override
  @JsonKey(name: 'user')
  VerifyAuthUser? get user;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'is_setup')
  bool get isSetup;

  /// Create a copy of AuthVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthVerifyResponseImplCopyWith<_$AuthVerifyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
