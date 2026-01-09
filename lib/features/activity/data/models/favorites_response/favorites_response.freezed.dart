// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoritesResponse _$FavoritesResponseFromJson(Map<String, dynamic> json) {
  return _FavoritesResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoritesResponse {
  String? get message => throw _privateConstructorUsedError;
  FavoritesData? get data => throw _privateConstructorUsedError;

  /// Serializes this FavoritesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesResponseCopyWith<FavoritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesResponseCopyWith<$Res> {
  factory $FavoritesResponseCopyWith(
          FavoritesResponse value, $Res Function(FavoritesResponse) then) =
      _$FavoritesResponseCopyWithImpl<$Res, FavoritesResponse>;
  @useResult
  $Res call({String? message, FavoritesData? data});

  $FavoritesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FavoritesResponseCopyWithImpl<$Res, $Val extends FavoritesResponse>
    implements $FavoritesResponseCopyWith<$Res> {
  _$FavoritesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesResponse
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
              as FavoritesData?,
    ) as $Val);
  }

  /// Create a copy of FavoritesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavoritesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FavoritesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoritesResponseImplCopyWith<$Res>
    implements $FavoritesResponseCopyWith<$Res> {
  factory _$$FavoritesResponseImplCopyWith(_$FavoritesResponseImpl value,
          $Res Function(_$FavoritesResponseImpl) then) =
      __$$FavoritesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, FavoritesData? data});

  @override
  $FavoritesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FavoritesResponseImplCopyWithImpl<$Res>
    extends _$FavoritesResponseCopyWithImpl<$Res, _$FavoritesResponseImpl>
    implements _$$FavoritesResponseImplCopyWith<$Res> {
  __$$FavoritesResponseImplCopyWithImpl(_$FavoritesResponseImpl _value,
      $Res Function(_$FavoritesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FavoritesResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavoritesData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritesResponseImpl implements _FavoritesResponse {
  const _$FavoritesResponseImpl({this.message, this.data});

  factory _$FavoritesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final FavoritesData? data;

  @override
  String toString() {
    return 'FavoritesResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of FavoritesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesResponseImplCopyWith<_$FavoritesResponseImpl> get copyWith =>
      __$$FavoritesResponseImplCopyWithImpl<_$FavoritesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesResponseImplToJson(
      this,
    );
  }
}

abstract class _FavoritesResponse implements FavoritesResponse {
  const factory _FavoritesResponse(
      {final String? message,
      final FavoritesData? data}) = _$FavoritesResponseImpl;

  factory _FavoritesResponse.fromJson(Map<String, dynamic> json) =
      _$FavoritesResponseImpl.fromJson;

  @override
  String? get message;
  @override
  FavoritesData? get data;

  /// Create a copy of FavoritesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesResponseImplCopyWith<_$FavoritesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoritesData _$FavoritesDataFromJson(Map<String, dynamic> json) {
  return _FavoritesData.fromJson(json);
}

/// @nodoc
mixin _$FavoritesData {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  List<dynamic> get users => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;

  /// Serializes this FavoritesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesDataCopyWith<FavoritesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesDataCopyWith<$Res> {
  factory $FavoritesDataCopyWith(
          FavoritesData value, $Res Function(FavoritesData) then) =
      _$FavoritesDataCopyWithImpl<$Res, FavoritesData>;
  @useResult
  $Res call(
      {List<ProductModel> products,
      List<dynamic> users,
      List<dynamic> categories});
}

/// @nodoc
class _$FavoritesDataCopyWithImpl<$Res, $Val extends FavoritesData>
    implements $FavoritesDataCopyWith<$Res> {
  _$FavoritesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? users = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesDataImplCopyWith<$Res>
    implements $FavoritesDataCopyWith<$Res> {
  factory _$$FavoritesDataImplCopyWith(
          _$FavoritesDataImpl value, $Res Function(_$FavoritesDataImpl) then) =
      __$$FavoritesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> products,
      List<dynamic> users,
      List<dynamic> categories});
}

/// @nodoc
class __$$FavoritesDataImplCopyWithImpl<$Res>
    extends _$FavoritesDataCopyWithImpl<$Res, _$FavoritesDataImpl>
    implements _$$FavoritesDataImplCopyWith<$Res> {
  __$$FavoritesDataImplCopyWithImpl(
      _$FavoritesDataImpl _value, $Res Function(_$FavoritesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? users = null,
    Object? categories = null,
  }) {
    return _then(_$FavoritesDataImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritesDataImpl implements _FavoritesData {
  const _$FavoritesDataImpl(
      {final List<ProductModel> products = const [],
      final List<dynamic> users = const [],
      final List<dynamic> categories = const []})
      : _products = products,
        _users = users,
        _categories = categories;

  factory _$FavoritesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesDataImplFromJson(json);

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<dynamic> _users;
  @override
  @JsonKey()
  List<dynamic> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<dynamic> _categories;
  @override
  @JsonKey()
  List<dynamic> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'FavoritesData(products: $products, users: $users, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesDataImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of FavoritesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesDataImplCopyWith<_$FavoritesDataImpl> get copyWith =>
      __$$FavoritesDataImplCopyWithImpl<_$FavoritesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesDataImplToJson(
      this,
    );
  }
}

abstract class _FavoritesData implements FavoritesData {
  const factory _FavoritesData(
      {final List<ProductModel> products,
      final List<dynamic> users,
      final List<dynamic> categories}) = _$FavoritesDataImpl;

  factory _FavoritesData.fromJson(Map<String, dynamic> json) =
      _$FavoritesDataImpl.fromJson;

  @override
  List<ProductModel> get products;
  @override
  List<dynamic> get users;
  @override
  List<dynamic> get categories;

  /// Create a copy of FavoritesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesDataImplCopyWith<_$FavoritesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
