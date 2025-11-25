// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribed_users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscribedUsersResponse _$SubscribedUsersResponseFromJson(
    Map<String, dynamic> json) {
  return _SubscribedUsersResponse.fromJson(json);
}

/// @nodoc
mixin _$SubscribedUsersResponse {
  String? get message => throw _privateConstructorUsedError;
  List<SubscribedUser> get data => throw _privateConstructorUsedError;

  /// Serializes this SubscribedUsersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscribedUsersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscribedUsersResponseCopyWith<SubscribedUsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedUsersResponseCopyWith<$Res> {
  factory $SubscribedUsersResponseCopyWith(SubscribedUsersResponse value,
          $Res Function(SubscribedUsersResponse) then) =
      _$SubscribedUsersResponseCopyWithImpl<$Res, SubscribedUsersResponse>;
  @useResult
  $Res call({String? message, List<SubscribedUser> data});
}

/// @nodoc
class _$SubscribedUsersResponseCopyWithImpl<$Res,
        $Val extends SubscribedUsersResponse>
    implements $SubscribedUsersResponseCopyWith<$Res> {
  _$SubscribedUsersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscribedUsersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubscribedUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscribedUsersResponseImplCopyWith<$Res>
    implements $SubscribedUsersResponseCopyWith<$Res> {
  factory _$$SubscribedUsersResponseImplCopyWith(
          _$SubscribedUsersResponseImpl value,
          $Res Function(_$SubscribedUsersResponseImpl) then) =
      __$$SubscribedUsersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<SubscribedUser> data});
}

/// @nodoc
class __$$SubscribedUsersResponseImplCopyWithImpl<$Res>
    extends _$SubscribedUsersResponseCopyWithImpl<$Res,
        _$SubscribedUsersResponseImpl>
    implements _$$SubscribedUsersResponseImplCopyWith<$Res> {
  __$$SubscribedUsersResponseImplCopyWithImpl(
      _$SubscribedUsersResponseImpl _value,
      $Res Function(_$SubscribedUsersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscribedUsersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$SubscribedUsersResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubscribedUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscribedUsersResponseImpl implements _SubscribedUsersResponse {
  const _$SubscribedUsersResponseImpl(
      {this.message,
      final List<SubscribedUser> data = const <SubscribedUser>[]})
      : _data = data;

  factory _$SubscribedUsersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscribedUsersResponseImplFromJson(json);

  @override
  final String? message;
  final List<SubscribedUser> _data;
  @override
  @JsonKey()
  List<SubscribedUser> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SubscribedUsersResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribedUsersResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SubscribedUsersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribedUsersResponseImplCopyWith<_$SubscribedUsersResponseImpl>
      get copyWith => __$$SubscribedUsersResponseImplCopyWithImpl<
          _$SubscribedUsersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscribedUsersResponseImplToJson(
      this,
    );
  }
}

abstract class _SubscribedUsersResponse implements SubscribedUsersResponse {
  const factory _SubscribedUsersResponse(
      {final String? message,
      final List<SubscribedUser> data}) = _$SubscribedUsersResponseImpl;

  factory _SubscribedUsersResponse.fromJson(Map<String, dynamic> json) =
      _$SubscribedUsersResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<SubscribedUser> get data;

  /// Create a copy of SubscribedUsersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscribedUsersResponseImplCopyWith<_$SubscribedUsersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscribedUser _$SubscribedUserFromJson(Map<String, dynamic> json) {
  return _SubscribedUser.fromJson(json);
}

/// @nodoc
mixin _$SubscribedUser {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this SubscribedUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscribedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscribedUserCopyWith<SubscribedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedUserCopyWith<$Res> {
  factory $SubscribedUserCopyWith(
          SubscribedUser value, $Res Function(SubscribedUser) then) =
      _$SubscribedUserCopyWithImpl<$Res, SubscribedUser>;
  @useResult
  $Res call({int? id, String? name, String? email, String? image});
}

/// @nodoc
class _$SubscribedUserCopyWithImpl<$Res, $Val extends SubscribedUser>
    implements $SubscribedUserCopyWith<$Res> {
  _$SubscribedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscribedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscribedUserImplCopyWith<$Res>
    implements $SubscribedUserCopyWith<$Res> {
  factory _$$SubscribedUserImplCopyWith(_$SubscribedUserImpl value,
          $Res Function(_$SubscribedUserImpl) then) =
      __$$SubscribedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email, String? image});
}

/// @nodoc
class __$$SubscribedUserImplCopyWithImpl<$Res>
    extends _$SubscribedUserCopyWithImpl<$Res, _$SubscribedUserImpl>
    implements _$$SubscribedUserImplCopyWith<$Res> {
  __$$SubscribedUserImplCopyWithImpl(
      _$SubscribedUserImpl _value, $Res Function(_$SubscribedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscribedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SubscribedUserImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscribedUserImpl implements _SubscribedUser {
  const _$SubscribedUserImpl({this.id, this.name, this.email, this.image});

  factory _$SubscribedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscribedUserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? image;

  @override
  String toString() {
    return 'SubscribedUser(id: $id, name: $name, email: $email, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, image);

  /// Create a copy of SubscribedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribedUserImplCopyWith<_$SubscribedUserImpl> get copyWith =>
      __$$SubscribedUserImplCopyWithImpl<_$SubscribedUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscribedUserImplToJson(
      this,
    );
  }
}

abstract class _SubscribedUser implements SubscribedUser {
  const factory _SubscribedUser(
      {final int? id,
      final String? name,
      final String? email,
      final String? image}) = _$SubscribedUserImpl;

  factory _SubscribedUser.fromJson(Map<String, dynamic> json) =
      _$SubscribedUserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get image;

  /// Create a copy of SubscribedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscribedUserImplCopyWith<_$SubscribedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
