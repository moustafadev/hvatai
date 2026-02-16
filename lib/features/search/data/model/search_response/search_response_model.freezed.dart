// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) {
  return _SearchResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SearchDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this SearchResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResponseModelCopyWith<SearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseModelCopyWith<$Res> {
  factory $SearchResponseModelCopyWith(
          SearchResponseModel value, $Res Function(SearchResponseModel) then) =
      _$SearchResponseModelCopyWithImpl<$Res, SearchResponseModel>;
  @useResult
  $Res call({bool? success, @JsonKey(name: 'data') SearchDataModel? data});

  $SearchDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res, $Val extends SearchResponseModel>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchDataModel?,
    ) as $Val);
  }

  /// Create a copy of SearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResponseModelImplCopyWith<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  factory _$$SearchResponseModelImplCopyWith(_$SearchResponseModelImpl value,
          $Res Function(_$SearchResponseModelImpl) then) =
      __$$SearchResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, @JsonKey(name: 'data') SearchDataModel? data});

  @override
  $SearchDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchResponseModelImplCopyWithImpl<$Res>
    extends _$SearchResponseModelCopyWithImpl<$Res, _$SearchResponseModelImpl>
    implements _$$SearchResponseModelImplCopyWith<$Res> {
  __$$SearchResponseModelImplCopyWithImpl(_$SearchResponseModelImpl _value,
      $Res Function(_$SearchResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResponseModelImpl implements _SearchResponseModel {
  const _$SearchResponseModelImpl(
      {this.success, @JsonKey(name: 'data') this.data});

  factory _$SearchResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final SearchDataModel? data;

  @override
  String toString() {
    return 'SearchResponseModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseModelImplCopyWith<_$SearchResponseModelImpl> get copyWith =>
      __$$SearchResponseModelImplCopyWithImpl<_$SearchResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchResponseModel implements SearchResponseModel {
  const factory _SearchResponseModel(
          {final bool? success,
          @JsonKey(name: 'data') final SearchDataModel? data}) =
      _$SearchResponseModelImpl;

  factory _SearchResponseModel.fromJson(Map<String, dynamic> json) =
      _$SearchResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'data')
  SearchDataModel? get data;

  /// Create a copy of SearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResponseModelImplCopyWith<_$SearchResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchDataModel _$SearchDataModelFromJson(Map<String, dynamic> json) {
  return _SearchDataModel.fromJson(json);
}

/// @nodoc
mixin _$SearchDataModel {
  @JsonKey(name: 'parent_categories')
  List<CategoryData>? get parentCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'child_categories')
  List<CategoryData>? get childCategories => throw _privateConstructorUsedError;
  SearchProductsPayload? get products => throw _privateConstructorUsedError;
  List<StreamDataModel>? get streams => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_no_results')
  bool? get hasNoResults => throw _privateConstructorUsedError;
  dynamic get recommendations => throw _privateConstructorUsedError;

  /// Serializes this SearchDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchDataModelCopyWith<SearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataModelCopyWith<$Res> {
  factory $SearchDataModelCopyWith(
          SearchDataModel value, $Res Function(SearchDataModel) then) =
      _$SearchDataModelCopyWithImpl<$Res, SearchDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'parent_categories') List<CategoryData>? parentCategories,
      @JsonKey(name: 'child_categories') List<CategoryData>? childCategories,
      SearchProductsPayload? products,
      List<StreamDataModel>? streams,
      @JsonKey(name: 'has_no_results') bool? hasNoResults,
      dynamic recommendations});

  $SearchProductsPayloadCopyWith<$Res>? get products;
}

/// @nodoc
class _$SearchDataModelCopyWithImpl<$Res, $Val extends SearchDataModel>
    implements $SearchDataModelCopyWith<$Res> {
  _$SearchDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCategories = freezed,
    Object? childCategories = freezed,
    Object? products = freezed,
    Object? streams = freezed,
    Object? hasNoResults = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(_value.copyWith(
      parentCategories: freezed == parentCategories
          ? _value.parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
      childCategories: freezed == childCategories
          ? _value.childCategories
          : childCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as SearchProductsPayload?,
      streams: freezed == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>?,
      hasNoResults: freezed == hasNoResults
          ? _value.hasNoResults
          : hasNoResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchProductsPayloadCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $SearchProductsPayloadCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchDataModelImplCopyWith<$Res>
    implements $SearchDataModelCopyWith<$Res> {
  factory _$$SearchDataModelImplCopyWith(_$SearchDataModelImpl value,
          $Res Function(_$SearchDataModelImpl) then) =
      __$$SearchDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'parent_categories') List<CategoryData>? parentCategories,
      @JsonKey(name: 'child_categories') List<CategoryData>? childCategories,
      SearchProductsPayload? products,
      List<StreamDataModel>? streams,
      @JsonKey(name: 'has_no_results') bool? hasNoResults,
      dynamic recommendations});

  @override
  $SearchProductsPayloadCopyWith<$Res>? get products;
}

/// @nodoc
class __$$SearchDataModelImplCopyWithImpl<$Res>
    extends _$SearchDataModelCopyWithImpl<$Res, _$SearchDataModelImpl>
    implements _$$SearchDataModelImplCopyWith<$Res> {
  __$$SearchDataModelImplCopyWithImpl(
      _$SearchDataModelImpl _value, $Res Function(_$SearchDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCategories = freezed,
    Object? childCategories = freezed,
    Object? products = freezed,
    Object? streams = freezed,
    Object? hasNoResults = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(_$SearchDataModelImpl(
      parentCategories: freezed == parentCategories
          ? _value._parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
      childCategories: freezed == childCategories
          ? _value._childCategories
          : childCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as SearchProductsPayload?,
      streams: freezed == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>?,
      hasNoResults: freezed == hasNoResults
          ? _value.hasNoResults
          : hasNoResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDataModelImpl implements _SearchDataModel {
  const _$SearchDataModelImpl(
      {@JsonKey(name: 'parent_categories')
      final List<CategoryData>? parentCategories,
      @JsonKey(name: 'child_categories')
      final List<CategoryData>? childCategories,
      this.products,
      final List<StreamDataModel>? streams,
      @JsonKey(name: 'has_no_results') this.hasNoResults,
      this.recommendations})
      : _parentCategories = parentCategories,
        _childCategories = childCategories,
        _streams = streams;

  factory _$SearchDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDataModelImplFromJson(json);

  final List<CategoryData>? _parentCategories;
  @override
  @JsonKey(name: 'parent_categories')
  List<CategoryData>? get parentCategories {
    final value = _parentCategories;
    if (value == null) return null;
    if (_parentCategories is EqualUnmodifiableListView)
      return _parentCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryData>? _childCategories;
  @override
  @JsonKey(name: 'child_categories')
  List<CategoryData>? get childCategories {
    final value = _childCategories;
    if (value == null) return null;
    if (_childCategories is EqualUnmodifiableListView) return _childCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchProductsPayload? products;
  final List<StreamDataModel>? _streams;
  @override
  List<StreamDataModel>? get streams {
    final value = _streams;
    if (value == null) return null;
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'has_no_results')
  final bool? hasNoResults;
  @override
  final dynamic recommendations;

  @override
  String toString() {
    return 'SearchDataModel(parentCategories: $parentCategories, childCategories: $childCategories, products: $products, streams: $streams, hasNoResults: $hasNoResults, recommendations: $recommendations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._parentCategories, _parentCategories) &&
            const DeepCollectionEquality()
                .equals(other._childCategories, _childCategories) &&
            (identical(other.products, products) ||
                other.products == products) &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            (identical(other.hasNoResults, hasNoResults) ||
                other.hasNoResults == hasNoResults) &&
            const DeepCollectionEquality()
                .equals(other.recommendations, recommendations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_parentCategories),
      const DeepCollectionEquality().hash(_childCategories),
      products,
      const DeepCollectionEquality().hash(_streams),
      hasNoResults,
      const DeepCollectionEquality().hash(recommendations));

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDataModelImplCopyWith<_$SearchDataModelImpl> get copyWith =>
      __$$SearchDataModelImplCopyWithImpl<_$SearchDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDataModelImplToJson(
      this,
    );
  }
}

abstract class _SearchDataModel implements SearchDataModel {
  const factory _SearchDataModel(
      {@JsonKey(name: 'parent_categories')
      final List<CategoryData>? parentCategories,
      @JsonKey(name: 'child_categories')
      final List<CategoryData>? childCategories,
      final SearchProductsPayload? products,
      final List<StreamDataModel>? streams,
      @JsonKey(name: 'has_no_results') final bool? hasNoResults,
      final dynamic recommendations}) = _$SearchDataModelImpl;

  factory _SearchDataModel.fromJson(Map<String, dynamic> json) =
      _$SearchDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'parent_categories')
  List<CategoryData>? get parentCategories;
  @override
  @JsonKey(name: 'child_categories')
  List<CategoryData>? get childCategories;
  @override
  SearchProductsPayload? get products;
  @override
  List<StreamDataModel>? get streams;
  @override
  @JsonKey(name: 'has_no_results')
  bool? get hasNoResults;
  @override
  dynamic get recommendations;

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDataModelImplCopyWith<_$SearchDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchProductsPayload _$SearchProductsPayloadFromJson(
    Map<String, dynamic> json) {
  return _SearchProductsPayload.fromJson(json);
}

/// @nodoc
mixin _$SearchProductsPayload {
  List<ProductModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this SearchProductsPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductsPayloadCopyWith<SearchProductsPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductsPayloadCopyWith<$Res> {
  factory $SearchProductsPayloadCopyWith(SearchProductsPayload value,
          $Res Function(SearchProductsPayload) then) =
      _$SearchProductsPayloadCopyWithImpl<$Res, SearchProductsPayload>;
  @useResult
  $Res call({List<ProductModel>? data});
}

/// @nodoc
class _$SearchProductsPayloadCopyWithImpl<$Res,
        $Val extends SearchProductsPayload>
    implements $SearchProductsPayloadCopyWith<$Res> {
  _$SearchProductsPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductsPayloadImplCopyWith<$Res>
    implements $SearchProductsPayloadCopyWith<$Res> {
  factory _$$SearchProductsPayloadImplCopyWith(
          _$SearchProductsPayloadImpl value,
          $Res Function(_$SearchProductsPayloadImpl) then) =
      __$$SearchProductsPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel>? data});
}

/// @nodoc
class __$$SearchProductsPayloadImplCopyWithImpl<$Res>
    extends _$SearchProductsPayloadCopyWithImpl<$Res,
        _$SearchProductsPayloadImpl>
    implements _$$SearchProductsPayloadImplCopyWith<$Res> {
  __$$SearchProductsPayloadImplCopyWithImpl(_$SearchProductsPayloadImpl _value,
      $Res Function(_$SearchProductsPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SearchProductsPayloadImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductsPayloadImpl implements _SearchProductsPayload {
  const _$SearchProductsPayloadImpl({final List<ProductModel>? data})
      : _data = data;

  factory _$SearchProductsPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductsPayloadImplFromJson(json);

  final List<ProductModel>? _data;
  @override
  List<ProductModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchProductsPayload(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsPayloadImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsPayloadImplCopyWith<_$SearchProductsPayloadImpl>
      get copyWith => __$$SearchProductsPayloadImplCopyWithImpl<
          _$SearchProductsPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductsPayloadImplToJson(
      this,
    );
  }
}

abstract class _SearchProductsPayload implements SearchProductsPayload {
  const factory _SearchProductsPayload({final List<ProductModel>? data}) =
      _$SearchProductsPayloadImpl;

  factory _SearchProductsPayload.fromJson(Map<String, dynamic> json) =
      _$SearchProductsPayloadImpl.fromJson;

  @override
  List<ProductModel>? get data;

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsPayloadImplCopyWith<_$SearchProductsPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
