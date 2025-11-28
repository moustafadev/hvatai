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
  List<SearchStreamDto>? get streams => throw _privateConstructorUsedError;
  List<SearchUserDto>? get users => throw _privateConstructorUsedError;
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
      List<SearchStreamDto>? streams,
      List<SearchUserDto>? users,
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
    Object? users = freezed,
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
              as List<SearchStreamDto>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SearchUserDto>?,
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
      List<SearchStreamDto>? streams,
      List<SearchUserDto>? users,
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
    Object? users = freezed,
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
              as List<SearchStreamDto>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SearchUserDto>?,
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
      final List<SearchStreamDto>? streams,
      final List<SearchUserDto>? users,
      @JsonKey(name: 'has_no_results') this.hasNoResults,
      this.recommendations})
      : _parentCategories = parentCategories,
        _childCategories = childCategories,
        _streams = streams,
        _users = users;

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
  final List<SearchStreamDto>? _streams;
  @override
  List<SearchStreamDto>? get streams {
    final value = _streams;
    if (value == null) return null;
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchUserDto>? _users;
  @override
  List<SearchUserDto>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
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
    return 'SearchDataModel(parentCategories: $parentCategories, childCategories: $childCategories, products: $products, streams: $streams, users: $users, hasNoResults: $hasNoResults, recommendations: $recommendations)';
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
            const DeepCollectionEquality().equals(other._users, _users) &&
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
      const DeepCollectionEquality().hash(_users),
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
      final List<SearchStreamDto>? streams,
      final List<SearchUserDto>? users,
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
  List<SearchStreamDto>? get streams;
  @override
  List<SearchUserDto>? get users;
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
  List<SearchProductDto>? get data => throw _privateConstructorUsedError;
  SearchPagination? get pagination => throw _privateConstructorUsedError;

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
  $Res call({List<SearchProductDto>? data, SearchPagination? pagination});

  $SearchPaginationCopyWith<$Res>? get pagination;
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
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchProductDto>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SearchPagination?,
    ) as $Val);
  }

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchPaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $SearchPaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
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
  $Res call({List<SearchProductDto>? data, SearchPagination? pagination});

  @override
  $SearchPaginationCopyWith<$Res>? get pagination;
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
    Object? pagination = freezed,
  }) {
    return _then(_$SearchProductsPayloadImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchProductDto>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SearchPagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductsPayloadImpl implements _SearchProductsPayload {
  const _$SearchProductsPayloadImpl(
      {final List<SearchProductDto>? data, this.pagination})
      : _data = data;

  factory _$SearchProductsPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductsPayloadImplFromJson(json);

  final List<SearchProductDto>? _data;
  @override
  List<SearchProductDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchPagination? pagination;

  @override
  String toString() {
    return 'SearchProductsPayload(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsPayloadImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

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
  const factory _SearchProductsPayload(
      {final List<SearchProductDto>? data,
      final SearchPagination? pagination}) = _$SearchProductsPayloadImpl;

  factory _SearchProductsPayload.fromJson(Map<String, dynamic> json) =
      _$SearchProductsPayloadImpl.fromJson;

  @override
  List<SearchProductDto>? get data;
  @override
  SearchPagination? get pagination;

  /// Create a copy of SearchProductsPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsPayloadImplCopyWith<_$SearchProductsPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchPagination _$SearchPaginationFromJson(Map<String, dynamic> json) {
  return _SearchPagination.fromJson(json);
}

/// @nodoc
mixin _$SearchPagination {
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;

  /// Serializes this SearchPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPaginationCopyWith<SearchPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPaginationCopyWith<$Res> {
  factory $SearchPaginationCopyWith(
          SearchPagination value, $Res Function(SearchPagination) then) =
      _$SearchPaginationCopyWithImpl<$Res, SearchPagination>;
  @useResult
  $Res call(
      {int? total,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'per_page') int? perPage});
}

/// @nodoc
class _$SearchPaginationCopyWithImpl<$Res, $Val extends SearchPagination>
    implements $SearchPaginationCopyWith<$Res> {
  _$SearchPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPaginationImplCopyWith<$Res>
    implements $SearchPaginationCopyWith<$Res> {
  factory _$$SearchPaginationImplCopyWith(_$SearchPaginationImpl value,
          $Res Function(_$SearchPaginationImpl) then) =
      __$$SearchPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? total,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'per_page') int? perPage});
}

/// @nodoc
class __$$SearchPaginationImplCopyWithImpl<$Res>
    extends _$SearchPaginationCopyWithImpl<$Res, _$SearchPaginationImpl>
    implements _$$SearchPaginationImplCopyWith<$Res> {
  __$$SearchPaginationImplCopyWithImpl(_$SearchPaginationImpl _value,
      $Res Function(_$SearchPaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$SearchPaginationImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchPaginationImpl implements _SearchPagination {
  const _$SearchPaginationImpl(
      {this.total,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'per_page') this.perPage});

  factory _$SearchPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPaginationImplFromJson(json);

  @override
  final int? total;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;

  @override
  String toString() {
    return 'SearchPagination(total: $total, currentPage: $currentPage, totalPages: $totalPages, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPaginationImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, currentPage, totalPages, perPage);

  /// Create a copy of SearchPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPaginationImplCopyWith<_$SearchPaginationImpl> get copyWith =>
      __$$SearchPaginationImplCopyWithImpl<_$SearchPaginationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPaginationImplToJson(
      this,
    );
  }
}

abstract class _SearchPagination implements SearchPagination {
  const factory _SearchPagination(
      {final int? total,
      @JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'total_pages') final int? totalPages,
      @JsonKey(name: 'per_page') final int? perPage}) = _$SearchPaginationImpl;

  factory _SearchPagination.fromJson(Map<String, dynamic> json) =
      _$SearchPaginationImpl.fromJson;

  @override
  int? get total;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;

  /// Create a copy of SearchPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPaginationImplCopyWith<_$SearchPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchProductDto _$SearchProductDtoFromJson(Map<String, dynamic> json) {
  return _SearchProductDto.fromJson(json);
}

/// @nodoc
mixin _$SearchProductDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  SearchProductCategoryDto? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  SearchProductUserDto? get user => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_price', fromJson: _toDouble)
  double? get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool? get hasDiscount => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;
  List<SearchProductVariantDto>? get variants =>
      throw _privateConstructorUsedError;
  SearchProductDeliveryDto? get delivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SearchProductDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductDtoCopyWith<SearchProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductDtoCopyWith<$Res> {
  factory $SearchProductDtoCopyWith(
          SearchProductDto value, $Res Function(SearchProductDto) then) =
      _$SearchProductDtoCopyWithImpl<$Res, SearchProductDto>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      SearchProductCategoryDto? category,
      @JsonKey(name: 'user') SearchProductUserDto? user,
      @JsonKey(fromJson: _toDouble) double? price,
      @JsonKey(name: 'original_price', fromJson: _toDouble)
      double? originalPrice,
      @JsonKey(name: 'has_discount') bool? hasDiscount,
      List<String>? images,
      @JsonKey(fromJson: _toDouble) double? rating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount,
      List<SearchProductVariantDto>? variants,
      SearchProductDeliveryDto? delivery,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $SearchProductCategoryDtoCopyWith<$Res>? get category;
  $SearchProductUserDtoCopyWith<$Res>? get user;
  $SearchProductDeliveryDtoCopyWith<$Res>? get delivery;
}

/// @nodoc
class _$SearchProductDtoCopyWithImpl<$Res, $Val extends SearchProductDto>
    implements $SearchProductDtoCopyWith<$Res> {
  _$SearchProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? price = freezed,
    Object? originalPrice = freezed,
    Object? hasDiscount = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? ratingsCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
    Object? variants = freezed,
    Object? delivery = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SearchProductCategoryDto?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SearchProductUserDto?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: freezed == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<SearchProductVariantDto>?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as SearchProductDeliveryDto?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchProductCategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $SearchProductCategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchProductUserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $SearchProductUserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchProductDeliveryDtoCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $SearchProductDeliveryDtoCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchProductDtoImplCopyWith<$Res>
    implements $SearchProductDtoCopyWith<$Res> {
  factory _$$SearchProductDtoImplCopyWith(_$SearchProductDtoImpl value,
          $Res Function(_$SearchProductDtoImpl) then) =
      __$$SearchProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      SearchProductCategoryDto? category,
      @JsonKey(name: 'user') SearchProductUserDto? user,
      @JsonKey(fromJson: _toDouble) double? price,
      @JsonKey(name: 'original_price', fromJson: _toDouble)
      double? originalPrice,
      @JsonKey(name: 'has_discount') bool? hasDiscount,
      List<String>? images,
      @JsonKey(fromJson: _toDouble) double? rating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount,
      List<SearchProductVariantDto>? variants,
      SearchProductDeliveryDto? delivery,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $SearchProductCategoryDtoCopyWith<$Res>? get category;
  @override
  $SearchProductUserDtoCopyWith<$Res>? get user;
  @override
  $SearchProductDeliveryDtoCopyWith<$Res>? get delivery;
}

/// @nodoc
class __$$SearchProductDtoImplCopyWithImpl<$Res>
    extends _$SearchProductDtoCopyWithImpl<$Res, _$SearchProductDtoImpl>
    implements _$$SearchProductDtoImplCopyWith<$Res> {
  __$$SearchProductDtoImplCopyWithImpl(_$SearchProductDtoImpl _value,
      $Res Function(_$SearchProductDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? price = freezed,
    Object? originalPrice = freezed,
    Object? hasDiscount = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? ratingsCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
    Object? variants = freezed,
    Object? delivery = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SearchProductDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SearchProductCategoryDto?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SearchProductUserDto?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: freezed == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<SearchProductVariantDto>?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as SearchProductDeliveryDto?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductDtoImpl implements _SearchProductDto {
  const _$SearchProductDtoImpl(
      {this.id,
      this.name,
      this.description,
      this.category,
      @JsonKey(name: 'user') this.user,
      @JsonKey(fromJson: _toDouble) this.price,
      @JsonKey(name: 'original_price', fromJson: _toDouble) this.originalPrice,
      @JsonKey(name: 'has_discount') this.hasDiscount,
      final List<String>? images,
      @JsonKey(fromJson: _toDouble) this.rating,
      @JsonKey(name: 'ratings_count') this.ratingsCount,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'favorites_count') this.favoritesCount,
      final List<SearchProductVariantDto>? variants,
      this.delivery,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _images = images,
        _variants = variants;

  factory _$SearchProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final SearchProductCategoryDto? category;
  @override
  @JsonKey(name: 'user')
  final SearchProductUserDto? user;
  @override
  @JsonKey(fromJson: _toDouble)
  final double? price;
  @override
  @JsonKey(name: 'original_price', fromJson: _toDouble)
  final double? originalPrice;
  @override
  @JsonKey(name: 'has_discount')
  final bool? hasDiscount;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: _toDouble)
  final double? rating;
  @override
  @JsonKey(name: 'ratings_count')
  final int? ratingsCount;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;
  final List<SearchProductVariantDto>? _variants;
  @override
  List<SearchProductVariantDto>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchProductDeliveryDto? delivery;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SearchProductDto(id: $id, name: $name, description: $description, category: $category, user: $user, price: $price, originalPrice: $originalPrice, hasDiscount: $hasDiscount, images: $images, rating: $rating, ratingsCount: $ratingsCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount, variants: $variants, delivery: $delivery, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      user,
      price,
      originalPrice,
      hasDiscount,
      const DeepCollectionEquality().hash(_images),
      rating,
      ratingsCount,
      isFavorited,
      favoritesCount,
      const DeepCollectionEquality().hash(_variants),
      delivery,
      createdAt,
      updatedAt);

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductDtoImplCopyWith<_$SearchProductDtoImpl> get copyWith =>
      __$$SearchProductDtoImplCopyWithImpl<_$SearchProductDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchProductDto implements SearchProductDto {
  const factory _SearchProductDto(
          {final int? id,
          final String? name,
          final String? description,
          final SearchProductCategoryDto? category,
          @JsonKey(name: 'user') final SearchProductUserDto? user,
          @JsonKey(fromJson: _toDouble) final double? price,
          @JsonKey(name: 'original_price', fromJson: _toDouble)
          final double? originalPrice,
          @JsonKey(name: 'has_discount') final bool? hasDiscount,
          final List<String>? images,
          @JsonKey(fromJson: _toDouble) final double? rating,
          @JsonKey(name: 'ratings_count') final int? ratingsCount,
          @JsonKey(name: 'is_favorited') final bool? isFavorited,
          @JsonKey(name: 'favorites_count') final int? favoritesCount,
          final List<SearchProductVariantDto>? variants,
          final SearchProductDeliveryDto? delivery,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$SearchProductDtoImpl;

  factory _SearchProductDto.fromJson(Map<String, dynamic> json) =
      _$SearchProductDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  SearchProductCategoryDto? get category;
  @override
  @JsonKey(name: 'user')
  SearchProductUserDto? get user;
  @override
  @JsonKey(fromJson: _toDouble)
  double? get price;
  @override
  @JsonKey(name: 'original_price', fromJson: _toDouble)
  double? get originalPrice;
  @override
  @JsonKey(name: 'has_discount')
  bool? get hasDiscount;
  @override
  List<String>? get images;
  @override
  @JsonKey(fromJson: _toDouble)
  double? get rating;
  @override
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;
  @override
  List<SearchProductVariantDto>? get variants;
  @override
  SearchProductDeliveryDto? get delivery;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of SearchProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductDtoImplCopyWith<_$SearchProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchProductCategoryDto _$SearchProductCategoryDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchProductCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$SearchProductCategoryDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SearchProductCategoryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductCategoryDtoCopyWith<SearchProductCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductCategoryDtoCopyWith<$Res> {
  factory $SearchProductCategoryDtoCopyWith(SearchProductCategoryDto value,
          $Res Function(SearchProductCategoryDto) then) =
      _$SearchProductCategoryDtoCopyWithImpl<$Res, SearchProductCategoryDto>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$SearchProductCategoryDtoCopyWithImpl<$Res,
        $Val extends SearchProductCategoryDto>
    implements $SearchProductCategoryDtoCopyWith<$Res> {
  _$SearchProductCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductCategoryDtoImplCopyWith<$Res>
    implements $SearchProductCategoryDtoCopyWith<$Res> {
  factory _$$SearchProductCategoryDtoImplCopyWith(
          _$SearchProductCategoryDtoImpl value,
          $Res Function(_$SearchProductCategoryDtoImpl) then) =
      __$$SearchProductCategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$SearchProductCategoryDtoImplCopyWithImpl<$Res>
    extends _$SearchProductCategoryDtoCopyWithImpl<$Res,
        _$SearchProductCategoryDtoImpl>
    implements _$$SearchProductCategoryDtoImplCopyWith<$Res> {
  __$$SearchProductCategoryDtoImplCopyWithImpl(
      _$SearchProductCategoryDtoImpl _value,
      $Res Function(_$SearchProductCategoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SearchProductCategoryDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductCategoryDtoImpl implements _SearchProductCategoryDto {
  const _$SearchProductCategoryDtoImpl({this.id, this.name});

  factory _$SearchProductCategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductCategoryDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SearchProductCategoryDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductCategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SearchProductCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductCategoryDtoImplCopyWith<_$SearchProductCategoryDtoImpl>
      get copyWith => __$$SearchProductCategoryDtoImplCopyWithImpl<
          _$SearchProductCategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductCategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchProductCategoryDto implements SearchProductCategoryDto {
  const factory _SearchProductCategoryDto({final int? id, final String? name}) =
      _$SearchProductCategoryDtoImpl;

  factory _SearchProductCategoryDto.fromJson(Map<String, dynamic> json) =
      _$SearchProductCategoryDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of SearchProductCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductCategoryDtoImplCopyWith<_$SearchProductCategoryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchProductUserDto _$SearchProductUserDtoFromJson(Map<String, dynamic> json) {
  return _SearchProductUserDto.fromJson(json);
}

/// @nodoc
mixin _$SearchProductUserDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this SearchProductUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductUserDtoCopyWith<SearchProductUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductUserDtoCopyWith<$Res> {
  factory $SearchProductUserDtoCopyWith(SearchProductUserDto value,
          $Res Function(SearchProductUserDto) then) =
      _$SearchProductUserDtoCopyWithImpl<$Res, SearchProductUserDto>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? image,
      String? description});
}

/// @nodoc
class _$SearchProductUserDtoCopyWithImpl<$Res,
        $Val extends SearchProductUserDto>
    implements $SearchProductUserDtoCopyWith<$Res> {
  _$SearchProductUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductUserDtoImplCopyWith<$Res>
    implements $SearchProductUserDtoCopyWith<$Res> {
  factory _$$SearchProductUserDtoImplCopyWith(_$SearchProductUserDtoImpl value,
          $Res Function(_$SearchProductUserDtoImpl) then) =
      __$$SearchProductUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? image,
      String? description});
}

/// @nodoc
class __$$SearchProductUserDtoImplCopyWithImpl<$Res>
    extends _$SearchProductUserDtoCopyWithImpl<$Res, _$SearchProductUserDtoImpl>
    implements _$$SearchProductUserDtoImplCopyWith<$Res> {
  __$$SearchProductUserDtoImplCopyWithImpl(_$SearchProductUserDtoImpl _value,
      $Res Function(_$SearchProductUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_$SearchProductUserDtoImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductUserDtoImpl implements _SearchProductUserDto {
  const _$SearchProductUserDtoImpl(
      {this.id, this.name, this.email, this.image, this.description});

  factory _$SearchProductUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductUserDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? image;
  @override
  final String? description;

  @override
  String toString() {
    return 'SearchProductUserDto(id: $id, name: $name, email: $email, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, image, description);

  /// Create a copy of SearchProductUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductUserDtoImplCopyWith<_$SearchProductUserDtoImpl>
      get copyWith =>
          __$$SearchProductUserDtoImplCopyWithImpl<_$SearchProductUserDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductUserDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchProductUserDto implements SearchProductUserDto {
  const factory _SearchProductUserDto(
      {final int? id,
      final String? name,
      final String? email,
      final String? image,
      final String? description}) = _$SearchProductUserDtoImpl;

  factory _SearchProductUserDto.fromJson(Map<String, dynamic> json) =
      _$SearchProductUserDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get image;
  @override
  String? get description;

  /// Create a copy of SearchProductUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductUserDtoImplCopyWith<_$SearchProductUserDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchProductVariantDto _$SearchProductVariantDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchProductVariantDto.fromJson(json);
}

/// @nodoc
mixin _$SearchProductVariantDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;

  /// Serializes this SearchProductVariantDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductVariantDtoCopyWith<SearchProductVariantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductVariantDtoCopyWith<$Res> {
  factory $SearchProductVariantDtoCopyWith(SearchProductVariantDto value,
          $Res Function(SearchProductVariantDto) then) =
      _$SearchProductVariantDtoCopyWithImpl<$Res, SearchProductVariantDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(fromJson: _toDouble) double? price,
      int? stock,
      @JsonKey(fromJson: _toDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class _$SearchProductVariantDtoCopyWithImpl<$Res,
        $Val extends SearchProductVariantDto>
    implements $SearchProductVariantDtoCopyWith<$Res> {
  _$SearchProductVariantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductVariantDtoImplCopyWith<$Res>
    implements $SearchProductVariantDtoCopyWith<$Res> {
  factory _$$SearchProductVariantDtoImplCopyWith(
          _$SearchProductVariantDtoImpl value,
          $Res Function(_$SearchProductVariantDtoImpl) then) =
      __$$SearchProductVariantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(fromJson: _toDouble) double? price,
      int? stock,
      @JsonKey(fromJson: _toDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class __$$SearchProductVariantDtoImplCopyWithImpl<$Res>
    extends _$SearchProductVariantDtoCopyWithImpl<$Res,
        _$SearchProductVariantDtoImpl>
    implements _$$SearchProductVariantDtoImplCopyWith<$Res> {
  __$$SearchProductVariantDtoImplCopyWithImpl(
      _$SearchProductVariantDtoImpl _value,
      $Res Function(_$SearchProductVariantDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$SearchProductVariantDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductVariantDtoImpl implements _SearchProductVariantDto {
  const _$SearchProductVariantDtoImpl(
      {this.id,
      @JsonKey(fromJson: _toDouble) this.price,
      this.stock,
      @JsonKey(fromJson: _toDouble) this.discount,
      @JsonKey(name: 'discount_type') this.discountType});

  factory _$SearchProductVariantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductVariantDtoImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(fromJson: _toDouble)
  final double? price;
  @override
  final int? stock;
  @override
  @JsonKey(fromJson: _toDouble)
  final double? discount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;

  @override
  String toString() {
    return 'SearchProductVariantDto(id: $id, price: $price, stock: $stock, discount: $discount, discountType: $discountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductVariantDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, price, stock, discount, discountType);

  /// Create a copy of SearchProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductVariantDtoImplCopyWith<_$SearchProductVariantDtoImpl>
      get copyWith => __$$SearchProductVariantDtoImplCopyWithImpl<
          _$SearchProductVariantDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductVariantDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchProductVariantDto implements SearchProductVariantDto {
  const factory _SearchProductVariantDto(
          {final int? id,
          @JsonKey(fromJson: _toDouble) final double? price,
          final int? stock,
          @JsonKey(fromJson: _toDouble) final double? discount,
          @JsonKey(name: 'discount_type') final String? discountType}) =
      _$SearchProductVariantDtoImpl;

  factory _SearchProductVariantDto.fromJson(Map<String, dynamic> json) =
      _$SearchProductVariantDtoImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(fromJson: _toDouble)
  double? get price;
  @override
  int? get stock;
  @override
  @JsonKey(fromJson: _toDouble)
  double? get discount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;

  /// Create a copy of SearchProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductVariantDtoImplCopyWith<_$SearchProductVariantDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchProductDeliveryDto _$SearchProductDeliveryDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchProductDeliveryDto.fromJson(json);
}

/// @nodoc
mixin _$SearchProductDeliveryDto {
  bool? get available => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get radius => throw _privateConstructorUsedError;

  /// Serializes this SearchProductDeliveryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductDeliveryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductDeliveryDtoCopyWith<SearchProductDeliveryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductDeliveryDtoCopyWith<$Res> {
  factory $SearchProductDeliveryDtoCopyWith(SearchProductDeliveryDto value,
          $Res Function(SearchProductDeliveryDto) then) =
      _$SearchProductDeliveryDtoCopyWithImpl<$Res, SearchProductDeliveryDto>;
  @useResult
  $Res call(
      {bool? available,
      String? type,
      String? time,
      String? price,
      String? radius});
}

/// @nodoc
class _$SearchProductDeliveryDtoCopyWithImpl<$Res,
        $Val extends SearchProductDeliveryDto>
    implements $SearchProductDeliveryDtoCopyWith<$Res> {
  _$SearchProductDeliveryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductDeliveryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? type = freezed,
    Object? time = freezed,
    Object? price = freezed,
    Object? radius = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductDeliveryDtoImplCopyWith<$Res>
    implements $SearchProductDeliveryDtoCopyWith<$Res> {
  factory _$$SearchProductDeliveryDtoImplCopyWith(
          _$SearchProductDeliveryDtoImpl value,
          $Res Function(_$SearchProductDeliveryDtoImpl) then) =
      __$$SearchProductDeliveryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? available,
      String? type,
      String? time,
      String? price,
      String? radius});
}

/// @nodoc
class __$$SearchProductDeliveryDtoImplCopyWithImpl<$Res>
    extends _$SearchProductDeliveryDtoCopyWithImpl<$Res,
        _$SearchProductDeliveryDtoImpl>
    implements _$$SearchProductDeliveryDtoImplCopyWith<$Res> {
  __$$SearchProductDeliveryDtoImplCopyWithImpl(
      _$SearchProductDeliveryDtoImpl _value,
      $Res Function(_$SearchProductDeliveryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductDeliveryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? type = freezed,
    Object? time = freezed,
    Object? price = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$SearchProductDeliveryDtoImpl(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductDeliveryDtoImpl implements _SearchProductDeliveryDto {
  const _$SearchProductDeliveryDtoImpl(
      {this.available, this.type, this.time, this.price, this.radius});

  factory _$SearchProductDeliveryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductDeliveryDtoImplFromJson(json);

  @override
  final bool? available;
  @override
  final String? type;
  @override
  final String? time;
  @override
  final String? price;
  @override
  final String? radius;

  @override
  String toString() {
    return 'SearchProductDeliveryDto(available: $available, type: $type, time: $time, price: $price, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductDeliveryDtoImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, available, type, time, price, radius);

  /// Create a copy of SearchProductDeliveryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductDeliveryDtoImplCopyWith<_$SearchProductDeliveryDtoImpl>
      get copyWith => __$$SearchProductDeliveryDtoImplCopyWithImpl<
          _$SearchProductDeliveryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductDeliveryDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchProductDeliveryDto implements SearchProductDeliveryDto {
  const factory _SearchProductDeliveryDto(
      {final bool? available,
      final String? type,
      final String? time,
      final String? price,
      final String? radius}) = _$SearchProductDeliveryDtoImpl;

  factory _SearchProductDeliveryDto.fromJson(Map<String, dynamic> json) =
      _$SearchProductDeliveryDtoImpl.fromJson;

  @override
  bool? get available;
  @override
  String? get type;
  @override
  String? get time;
  @override
  String? get price;
  @override
  String? get radius;

  /// Create a copy of SearchProductDeliveryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductDeliveryDtoImplCopyWith<_$SearchProductDeliveryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchStreamDto _$SearchStreamDtoFromJson(Map<String, dynamic> json) {
  return _SearchStreamDto.fromJson(json);
}

/// @nodoc
mixin _$SearchStreamDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_live')
  bool? get isLive => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int? get viewerCount => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  SearchStreamUserDto? get user => throw _privateConstructorUsedError;
  List<SearchStreamCategoryDto>? get categories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_thumbnail_url')
  String? get latestThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_gif_url')
  String? get latestGifUrl => throw _privateConstructorUsedError;

  /// Serializes this SearchStreamDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchStreamDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStreamDtoCopyWith<SearchStreamDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStreamDtoCopyWith<$Res> {
  factory $SearchStreamDtoCopyWith(
          SearchStreamDto value, $Res Function(SearchStreamDto) then) =
      _$SearchStreamDtoCopyWithImpl<$Res, SearchStreamDto>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? status,
      @JsonKey(name: 'is_live') bool? isLive,
      @JsonKey(name: 'viewer_count') int? viewerCount,
      String? thumbnail,
      SearchStreamUserDto? user,
      List<SearchStreamCategoryDto>? categories,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') String? latestGifUrl});

  $SearchStreamUserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$SearchStreamDtoCopyWithImpl<$Res, $Val extends SearchStreamDto>
    implements $SearchStreamDtoCopyWith<$Res> {
  _$SearchStreamDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchStreamDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? isLive = freezed,
    Object? viewerCount = freezed,
    Object? thumbnail = freezed,
    Object? user = freezed,
    Object? categories = freezed,
    Object? updatedAt = freezed,
    Object? latestThumbnailUrl = freezed,
    Object? latestGifUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewerCount: freezed == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SearchStreamUserDto?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchStreamCategoryDto>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      latestThumbnailUrl: freezed == latestThumbnailUrl
          ? _value.latestThumbnailUrl
          : latestThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGifUrl: freezed == latestGifUrl
          ? _value.latestGifUrl
          : latestGifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SearchStreamDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchStreamUserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $SearchStreamUserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStreamDtoImplCopyWith<$Res>
    implements $SearchStreamDtoCopyWith<$Res> {
  factory _$$SearchStreamDtoImplCopyWith(_$SearchStreamDtoImpl value,
          $Res Function(_$SearchStreamDtoImpl) then) =
      __$$SearchStreamDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? status,
      @JsonKey(name: 'is_live') bool? isLive,
      @JsonKey(name: 'viewer_count') int? viewerCount,
      String? thumbnail,
      SearchStreamUserDto? user,
      List<SearchStreamCategoryDto>? categories,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') String? latestGifUrl});

  @override
  $SearchStreamUserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SearchStreamDtoImplCopyWithImpl<$Res>
    extends _$SearchStreamDtoCopyWithImpl<$Res, _$SearchStreamDtoImpl>
    implements _$$SearchStreamDtoImplCopyWith<$Res> {
  __$$SearchStreamDtoImplCopyWithImpl(
      _$SearchStreamDtoImpl _value, $Res Function(_$SearchStreamDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchStreamDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? isLive = freezed,
    Object? viewerCount = freezed,
    Object? thumbnail = freezed,
    Object? user = freezed,
    Object? categories = freezed,
    Object? updatedAt = freezed,
    Object? latestThumbnailUrl = freezed,
    Object? latestGifUrl = freezed,
  }) {
    return _then(_$SearchStreamDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewerCount: freezed == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SearchStreamUserDto?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchStreamCategoryDto>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      latestThumbnailUrl: freezed == latestThumbnailUrl
          ? _value.latestThumbnailUrl
          : latestThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latestGifUrl: freezed == latestGifUrl
          ? _value.latestGifUrl
          : latestGifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchStreamDtoImpl implements _SearchStreamDto {
  const _$SearchStreamDtoImpl(
      {this.id,
      this.title,
      this.description,
      this.status,
      @JsonKey(name: 'is_live') this.isLive,
      @JsonKey(name: 'viewer_count') this.viewerCount,
      this.thumbnail,
      this.user,
      final List<SearchStreamCategoryDto>? categories,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'latest_thumbnail_url') this.latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url') this.latestGifUrl})
      : _categories = categories;

  factory _$SearchStreamDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchStreamDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? status;
  @override
  @JsonKey(name: 'is_live')
  final bool? isLive;
  @override
  @JsonKey(name: 'viewer_count')
  final int? viewerCount;
  @override
  final String? thumbnail;
  @override
  final SearchStreamUserDto? user;
  final List<SearchStreamCategoryDto>? _categories;
  @override
  List<SearchStreamCategoryDto>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'latest_thumbnail_url')
  final String? latestThumbnailUrl;
  @override
  @JsonKey(name: 'latest_gif_url')
  final String? latestGifUrl;

  @override
  String toString() {
    return 'SearchStreamDto(id: $id, title: $title, description: $description, status: $status, isLive: $isLive, viewerCount: $viewerCount, thumbnail: $thumbnail, user: $user, categories: $categories, updatedAt: $updatedAt, latestThumbnailUrl: $latestThumbnailUrl, latestGifUrl: $latestGifUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.latestThumbnailUrl, latestThumbnailUrl) ||
                other.latestThumbnailUrl == latestThumbnailUrl) &&
            (identical(other.latestGifUrl, latestGifUrl) ||
                other.latestGifUrl == latestGifUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      status,
      isLive,
      viewerCount,
      thumbnail,
      user,
      const DeepCollectionEquality().hash(_categories),
      updatedAt,
      latestThumbnailUrl,
      latestGifUrl);

  /// Create a copy of SearchStreamDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStreamDtoImplCopyWith<_$SearchStreamDtoImpl> get copyWith =>
      __$$SearchStreamDtoImplCopyWithImpl<_$SearchStreamDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchStreamDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchStreamDto implements SearchStreamDto {
  const factory _SearchStreamDto(
      {final int? id,
      final String? title,
      final String? description,
      final String? status,
      @JsonKey(name: 'is_live') final bool? isLive,
      @JsonKey(name: 'viewer_count') final int? viewerCount,
      final String? thumbnail,
      final SearchStreamUserDto? user,
      final List<SearchStreamCategoryDto>? categories,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'latest_thumbnail_url') final String? latestThumbnailUrl,
      @JsonKey(name: 'latest_gif_url')
      final String? latestGifUrl}) = _$SearchStreamDtoImpl;

  factory _SearchStreamDto.fromJson(Map<String, dynamic> json) =
      _$SearchStreamDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get status;
  @override
  @JsonKey(name: 'is_live')
  bool? get isLive;
  @override
  @JsonKey(name: 'viewer_count')
  int? get viewerCount;
  @override
  String? get thumbnail;
  @override
  SearchStreamUserDto? get user;
  @override
  List<SearchStreamCategoryDto>? get categories;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'latest_thumbnail_url')
  String? get latestThumbnailUrl;
  @override
  @JsonKey(name: 'latest_gif_url')
  String? get latestGifUrl;

  /// Create a copy of SearchStreamDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStreamDtoImplCopyWith<_$SearchStreamDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchStreamUserDto _$SearchStreamUserDtoFromJson(Map<String, dynamic> json) {
  return _SearchStreamUserDto.fromJson(json);
}

/// @nodoc
mixin _$SearchStreamUserDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this SearchStreamUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchStreamUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStreamUserDtoCopyWith<SearchStreamUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStreamUserDtoCopyWith<$Res> {
  factory $SearchStreamUserDtoCopyWith(
          SearchStreamUserDto value, $Res Function(SearchStreamUserDto) then) =
      _$SearchStreamUserDtoCopyWithImpl<$Res, SearchStreamUserDto>;
  @useResult
  $Res call({int? id, String? name, String? email, String? image});
}

/// @nodoc
class _$SearchStreamUserDtoCopyWithImpl<$Res, $Val extends SearchStreamUserDto>
    implements $SearchStreamUserDtoCopyWith<$Res> {
  _$SearchStreamUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchStreamUserDto
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
abstract class _$$SearchStreamUserDtoImplCopyWith<$Res>
    implements $SearchStreamUserDtoCopyWith<$Res> {
  factory _$$SearchStreamUserDtoImplCopyWith(_$SearchStreamUserDtoImpl value,
          $Res Function(_$SearchStreamUserDtoImpl) then) =
      __$$SearchStreamUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email, String? image});
}

/// @nodoc
class __$$SearchStreamUserDtoImplCopyWithImpl<$Res>
    extends _$SearchStreamUserDtoCopyWithImpl<$Res, _$SearchStreamUserDtoImpl>
    implements _$$SearchStreamUserDtoImplCopyWith<$Res> {
  __$$SearchStreamUserDtoImplCopyWithImpl(_$SearchStreamUserDtoImpl _value,
      $Res Function(_$SearchStreamUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchStreamUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SearchStreamUserDtoImpl(
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
class _$SearchStreamUserDtoImpl implements _SearchStreamUserDto {
  const _$SearchStreamUserDtoImpl({this.id, this.name, this.email, this.image});

  factory _$SearchStreamUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchStreamUserDtoImplFromJson(json);

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
    return 'SearchStreamUserDto(id: $id, name: $name, email: $email, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, image);

  /// Create a copy of SearchStreamUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStreamUserDtoImplCopyWith<_$SearchStreamUserDtoImpl> get copyWith =>
      __$$SearchStreamUserDtoImplCopyWithImpl<_$SearchStreamUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchStreamUserDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchStreamUserDto implements SearchStreamUserDto {
  const factory _SearchStreamUserDto(
      {final int? id,
      final String? name,
      final String? email,
      final String? image}) = _$SearchStreamUserDtoImpl;

  factory _SearchStreamUserDto.fromJson(Map<String, dynamic> json) =
      _$SearchStreamUserDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get image;

  /// Create a copy of SearchStreamUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStreamUserDtoImplCopyWith<_$SearchStreamUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchStreamCategoryDto _$SearchStreamCategoryDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchStreamCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$SearchStreamCategoryDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SearchStreamCategoryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchStreamCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStreamCategoryDtoCopyWith<SearchStreamCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStreamCategoryDtoCopyWith<$Res> {
  factory $SearchStreamCategoryDtoCopyWith(SearchStreamCategoryDto value,
          $Res Function(SearchStreamCategoryDto) then) =
      _$SearchStreamCategoryDtoCopyWithImpl<$Res, SearchStreamCategoryDto>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$SearchStreamCategoryDtoCopyWithImpl<$Res,
        $Val extends SearchStreamCategoryDto>
    implements $SearchStreamCategoryDtoCopyWith<$Res> {
  _$SearchStreamCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchStreamCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStreamCategoryDtoImplCopyWith<$Res>
    implements $SearchStreamCategoryDtoCopyWith<$Res> {
  factory _$$SearchStreamCategoryDtoImplCopyWith(
          _$SearchStreamCategoryDtoImpl value,
          $Res Function(_$SearchStreamCategoryDtoImpl) then) =
      __$$SearchStreamCategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$SearchStreamCategoryDtoImplCopyWithImpl<$Res>
    extends _$SearchStreamCategoryDtoCopyWithImpl<$Res,
        _$SearchStreamCategoryDtoImpl>
    implements _$$SearchStreamCategoryDtoImplCopyWith<$Res> {
  __$$SearchStreamCategoryDtoImplCopyWithImpl(
      _$SearchStreamCategoryDtoImpl _value,
      $Res Function(_$SearchStreamCategoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchStreamCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SearchStreamCategoryDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchStreamCategoryDtoImpl implements _SearchStreamCategoryDto {
  const _$SearchStreamCategoryDtoImpl({this.id, this.name});

  factory _$SearchStreamCategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchStreamCategoryDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SearchStreamCategoryDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamCategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SearchStreamCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStreamCategoryDtoImplCopyWith<_$SearchStreamCategoryDtoImpl>
      get copyWith => __$$SearchStreamCategoryDtoImplCopyWithImpl<
          _$SearchStreamCategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchStreamCategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchStreamCategoryDto implements SearchStreamCategoryDto {
  const factory _SearchStreamCategoryDto({final int? id, final String? name}) =
      _$SearchStreamCategoryDtoImpl;

  factory _SearchStreamCategoryDto.fromJson(Map<String, dynamic> json) =
      _$SearchStreamCategoryDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of SearchStreamCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStreamCategoryDtoImplCopyWith<_$SearchStreamCategoryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchUserDto _$SearchUserDtoFromJson(Map<String, dynamic> json) {
  return _SearchUserDto.fromJson(json);
}

/// @nodoc
mixin _$SearchUserDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  int? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

  /// Serializes this SearchUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUserDtoCopyWith<SearchUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserDtoCopyWith<$Res> {
  factory $SearchUserDtoCopyWith(
          SearchUserDto value, $Res Function(SearchUserDto) then) =
      _$SearchUserDtoCopyWithImpl<$Res, SearchUserDto>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? image,
      String? description,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class _$SearchUserDtoCopyWithImpl<$Res, $Val extends SearchUserDto>
    implements $SearchUserDtoCopyWith<$Res> {
  _$SearchUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? favoritesCount = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUserDtoImplCopyWith<$Res>
    implements $SearchUserDtoCopyWith<$Res> {
  factory _$$SearchUserDtoImplCopyWith(
          _$SearchUserDtoImpl value, $Res Function(_$SearchUserDtoImpl) then) =
      __$$SearchUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? image,
      String? description,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class __$$SearchUserDtoImplCopyWithImpl<$Res>
    extends _$SearchUserDtoCopyWithImpl<$Res, _$SearchUserDtoImpl>
    implements _$$SearchUserDtoImplCopyWith<$Res> {
  __$$SearchUserDtoImplCopyWithImpl(
      _$SearchUserDtoImpl _value, $Res Function(_$SearchUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_$SearchUserDtoImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchUserDtoImpl implements _SearchUserDto {
  const _$SearchUserDtoImpl(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.description,
      @JsonKey(name: 'personal_rating') this.personalRating,
      @JsonKey(name: 'personal_rating_count') this.personalRatingCount,
      @JsonKey(name: 'favorites_count') this.favoritesCount});

  factory _$SearchUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchUserDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? image;
  @override
  final String? description;
  @override
  @JsonKey(name: 'personal_rating')
  final int? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @override
  String toString() {
    return 'SearchUserDto(id: $id, name: $name, email: $email, image: $image, description: $description, personalRating: $personalRating, personalRatingCount: $personalRatingCount, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, image,
      description, personalRating, personalRatingCount, favoritesCount);

  /// Create a copy of SearchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserDtoImplCopyWith<_$SearchUserDtoImpl> get copyWith =>
      __$$SearchUserDtoImplCopyWithImpl<_$SearchUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchUserDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchUserDto implements SearchUserDto {
  const factory _SearchUserDto(
      {final int? id,
      final String? name,
      final String? email,
      final String? image,
      final String? description,
      @JsonKey(name: 'personal_rating') final int? personalRating,
      @JsonKey(name: 'personal_rating_count') final int? personalRatingCount,
      @JsonKey(name: 'favorites_count')
      final int? favoritesCount}) = _$SearchUserDtoImpl;

  factory _SearchUserDto.fromJson(Map<String, dynamic> json) =
      _$SearchUserDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(name: 'personal_rating')
  int? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of SearchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUserDtoImplCopyWith<_$SearchUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
