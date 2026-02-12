// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecentSearchResponse _$RecentSearchResponseFromJson(Map<String, dynamic> json) {
  return _RecentSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$RecentSearchResponse {
  bool get success => throw _privateConstructorUsedError;
  List<RecentSearchItem> get data => throw _privateConstructorUsedError;

  /// Serializes this RecentSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentSearchResponseCopyWith<RecentSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchResponseCopyWith<$Res> {
  factory $RecentSearchResponseCopyWith(RecentSearchResponse value,
          $Res Function(RecentSearchResponse) then) =
      _$RecentSearchResponseCopyWithImpl<$Res, RecentSearchResponse>;
  @useResult
  $Res call({bool success, List<RecentSearchItem> data});
}

/// @nodoc
class _$RecentSearchResponseCopyWithImpl<$Res,
        $Val extends RecentSearchResponse>
    implements $RecentSearchResponseCopyWith<$Res> {
  _$RecentSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RecentSearchItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentSearchResponseImplCopyWith<$Res>
    implements $RecentSearchResponseCopyWith<$Res> {
  factory _$$RecentSearchResponseImplCopyWith(_$RecentSearchResponseImpl value,
          $Res Function(_$RecentSearchResponseImpl) then) =
      __$$RecentSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<RecentSearchItem> data});
}

/// @nodoc
class __$$RecentSearchResponseImplCopyWithImpl<$Res>
    extends _$RecentSearchResponseCopyWithImpl<$Res, _$RecentSearchResponseImpl>
    implements _$$RecentSearchResponseImplCopyWith<$Res> {
  __$$RecentSearchResponseImplCopyWithImpl(_$RecentSearchResponseImpl _value,
      $Res Function(_$RecentSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$RecentSearchResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RecentSearchItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentSearchResponseImpl implements _RecentSearchResponse {
  const _$RecentSearchResponseImpl(
      {required this.success, final List<RecentSearchItem> data = const []})
      : _data = data;

  factory _$RecentSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentSearchResponseImplFromJson(json);

  @override
  final bool success;
  final List<RecentSearchItem> _data;
  @override
  @JsonKey()
  List<RecentSearchItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RecentSearchResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSearchResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  /// Create a copy of RecentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSearchResponseImplCopyWith<_$RecentSearchResponseImpl>
      get copyWith =>
          __$$RecentSearchResponseImplCopyWithImpl<_$RecentSearchResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _RecentSearchResponse implements RecentSearchResponse {
  const factory _RecentSearchResponse(
      {required final bool success,
      final List<RecentSearchItem> data}) = _$RecentSearchResponseImpl;

  factory _RecentSearchResponse.fromJson(Map<String, dynamic> json) =
      _$RecentSearchResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<RecentSearchItem> get data;

  /// Create a copy of RecentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentSearchResponseImplCopyWith<_$RecentSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecentSearchItem _$RecentSearchItemFromJson(Map<String, dynamic> json) {
  return _RecentSearchItem.fromJson(json);
}

/// @nodoc
mixin _$RecentSearchItem {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RecentSearchItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentSearchItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentSearchItemCopyWith<RecentSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchItemCopyWith<$Res> {
  factory $RecentSearchItemCopyWith(
          RecentSearchItem value, $Res Function(RecentSearchItem) then) =
      _$RecentSearchItemCopyWithImpl<$Res, RecentSearchItem>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String query,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$RecentSearchItemCopyWithImpl<$Res, $Val extends RecentSearchItem>
    implements $RecentSearchItemCopyWith<$Res> {
  _$RecentSearchItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentSearchItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? query = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentSearchItemImplCopyWith<$Res>
    implements $RecentSearchItemCopyWith<$Res> {
  factory _$$RecentSearchItemImplCopyWith(_$RecentSearchItemImpl value,
          $Res Function(_$RecentSearchItemImpl) then) =
      __$$RecentSearchItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String query,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$RecentSearchItemImplCopyWithImpl<$Res>
    extends _$RecentSearchItemCopyWithImpl<$Res, _$RecentSearchItemImpl>
    implements _$$RecentSearchItemImplCopyWith<$Res> {
  __$$RecentSearchItemImplCopyWithImpl(_$RecentSearchItemImpl _value,
      $Res Function(_$RecentSearchItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecentSearchItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? query = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RecentSearchItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentSearchItemImpl implements _RecentSearchItem {
  const _$RecentSearchItemImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.query,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$RecentSearchItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentSearchItemImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String query;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'RecentSearchItem(id: $id, userId: $userId, query: $query, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSearchItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, query, createdAt, updatedAt);

  /// Create a copy of RecentSearchItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSearchItemImplCopyWith<_$RecentSearchItemImpl> get copyWith =>
      __$$RecentSearchItemImplCopyWithImpl<_$RecentSearchItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentSearchItemImplToJson(
      this,
    );
  }
}

abstract class _RecentSearchItem implements RecentSearchItem {
  const factory _RecentSearchItem(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          required final String query,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$RecentSearchItemImpl;

  factory _RecentSearchItem.fromJson(Map<String, dynamic> json) =
      _$RecentSearchItemImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get query;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of RecentSearchItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentSearchItemImplCopyWith<_$RecentSearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
