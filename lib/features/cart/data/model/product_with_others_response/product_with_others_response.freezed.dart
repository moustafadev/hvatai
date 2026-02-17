// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_with_others_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductWithOthersResponse _$ProductWithOthersResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductWithOthersResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductWithOthersResponse {
  String? get message => throw _privateConstructorUsedError;
  ProductWithOthersData? get data => throw _privateConstructorUsedError;

  /// Serializes this ProductWithOthersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductWithOthersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductWithOthersResponseCopyWith<ProductWithOthersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWithOthersResponseCopyWith<$Res> {
  factory $ProductWithOthersResponseCopyWith(ProductWithOthersResponse value,
          $Res Function(ProductWithOthersResponse) then) =
      _$ProductWithOthersResponseCopyWithImpl<$Res, ProductWithOthersResponse>;
  @useResult
  $Res call({String? message, ProductWithOthersData? data});

  $ProductWithOthersDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductWithOthersResponseCopyWithImpl<$Res,
        $Val extends ProductWithOthersResponse>
    implements $ProductWithOthersResponseCopyWith<$Res> {
  _$ProductWithOthersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductWithOthersResponse
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
              as ProductWithOthersData?,
    ) as $Val);
  }

  /// Create a copy of ProductWithOthersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductWithOthersDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductWithOthersDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductWithOthersResponseImplCopyWith<$Res>
    implements $ProductWithOthersResponseCopyWith<$Res> {
  factory _$$ProductWithOthersResponseImplCopyWith(
          _$ProductWithOthersResponseImpl value,
          $Res Function(_$ProductWithOthersResponseImpl) then) =
      __$$ProductWithOthersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, ProductWithOthersData? data});

  @override
  $ProductWithOthersDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductWithOthersResponseImplCopyWithImpl<$Res>
    extends _$ProductWithOthersResponseCopyWithImpl<$Res,
        _$ProductWithOthersResponseImpl>
    implements _$$ProductWithOthersResponseImplCopyWith<$Res> {
  __$$ProductWithOthersResponseImplCopyWithImpl(
      _$ProductWithOthersResponseImpl _value,
      $Res Function(_$ProductWithOthersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductWithOthersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProductWithOthersResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductWithOthersData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductWithOthersResponseImpl implements _ProductWithOthersResponse {
  const _$ProductWithOthersResponseImpl({this.message, this.data});

  factory _$ProductWithOthersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductWithOthersResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final ProductWithOthersData? data;

  @override
  String toString() {
    return 'ProductWithOthersResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductWithOthersResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of ProductWithOthersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductWithOthersResponseImplCopyWith<_$ProductWithOthersResponseImpl>
      get copyWith => __$$ProductWithOthersResponseImplCopyWithImpl<
          _$ProductWithOthersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductWithOthersResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductWithOthersResponse implements ProductWithOthersResponse {
  const factory _ProductWithOthersResponse(
      {final String? message,
      final ProductWithOthersData? data}) = _$ProductWithOthersResponseImpl;

  factory _ProductWithOthersResponse.fromJson(Map<String, dynamic> json) =
      _$ProductWithOthersResponseImpl.fromJson;

  @override
  String? get message;
  @override
  ProductWithOthersData? get data;

  /// Create a copy of ProductWithOthersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductWithOthersResponseImplCopyWith<_$ProductWithOthersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductWithOthersData _$ProductWithOthersDataFromJson(
    Map<String, dynamic> json) {
  return _ProductWithOthersData.fromJson(json);
}

/// @nodoc
mixin _$ProductWithOthersData {
  ProductModel get product => throw _privateConstructorUsedError;
  List<ProductModel> get otherProducts => throw _privateConstructorUsedError;

  /// Serializes this ProductWithOthersData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductWithOthersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductWithOthersDataCopyWith<ProductWithOthersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWithOthersDataCopyWith<$Res> {
  factory $ProductWithOthersDataCopyWith(ProductWithOthersData value,
          $Res Function(ProductWithOthersData) then) =
      _$ProductWithOthersDataCopyWithImpl<$Res, ProductWithOthersData>;
  @useResult
  $Res call({ProductModel product, List<ProductModel> otherProducts});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductWithOthersDataCopyWithImpl<$Res,
        $Val extends ProductWithOthersData>
    implements $ProductWithOthersDataCopyWith<$Res> {
  _$ProductWithOthersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductWithOthersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? otherProducts = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      otherProducts: null == otherProducts
          ? _value.otherProducts
          : otherProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }

  /// Create a copy of ProductWithOthersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductWithOthersDataImplCopyWith<$Res>
    implements $ProductWithOthersDataCopyWith<$Res> {
  factory _$$ProductWithOthersDataImplCopyWith(
          _$ProductWithOthersDataImpl value,
          $Res Function(_$ProductWithOthersDataImpl) then) =
      __$$ProductWithOthersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, List<ProductModel> otherProducts});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductWithOthersDataImplCopyWithImpl<$Res>
    extends _$ProductWithOthersDataCopyWithImpl<$Res,
        _$ProductWithOthersDataImpl>
    implements _$$ProductWithOthersDataImplCopyWith<$Res> {
  __$$ProductWithOthersDataImplCopyWithImpl(_$ProductWithOthersDataImpl _value,
      $Res Function(_$ProductWithOthersDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductWithOthersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? otherProducts = null,
  }) {
    return _then(_$ProductWithOthersDataImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      otherProducts: null == otherProducts
          ? _value._otherProducts
          : otherProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductWithOthersDataImpl implements _ProductWithOthersData {
  const _$ProductWithOthersDataImpl(
      {required this.product,
      final List<ProductModel> otherProducts = const []})
      : _otherProducts = otherProducts;

  factory _$ProductWithOthersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductWithOthersDataImplFromJson(json);

  @override
  final ProductModel product;
  final List<ProductModel> _otherProducts;
  @override
  @JsonKey()
  List<ProductModel> get otherProducts {
    if (_otherProducts is EqualUnmodifiableListView) return _otherProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherProducts);
  }

  @override
  String toString() {
    return 'ProductWithOthersData(product: $product, otherProducts: $otherProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductWithOthersDataImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._otherProducts, _otherProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_otherProducts));

  /// Create a copy of ProductWithOthersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductWithOthersDataImplCopyWith<_$ProductWithOthersDataImpl>
      get copyWith => __$$ProductWithOthersDataImplCopyWithImpl<
          _$ProductWithOthersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductWithOthersDataImplToJson(
      this,
    );
  }
}

abstract class _ProductWithOthersData implements ProductWithOthersData {
  const factory _ProductWithOthersData(
      {required final ProductModel product,
      final List<ProductModel> otherProducts}) = _$ProductWithOthersDataImpl;

  factory _ProductWithOthersData.fromJson(Map<String, dynamic> json) =
      _$ProductWithOthersDataImpl.fromJson;

  @override
  ProductModel get product;
  @override
  List<ProductModel> get otherProducts;

  /// Create a copy of ProductWithOthersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductWithOthersDataImplCopyWith<_$ProductWithOthersDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
