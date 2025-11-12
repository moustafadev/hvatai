// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddStreamState {
  CreateStreamModel get createStreamModel => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProductsLoading => throw _privateConstructorUsedError;
  CategoryModel? get categories => throw _privateConstructorUsedError;
  bool get isCategoriesLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddStreamStateCopyWith<AddStreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStreamStateCopyWith<$Res> {
  factory $AddStreamStateCopyWith(
          AddStreamState value, $Res Function(AddStreamState) then) =
      _$AddStreamStateCopyWithImpl<$Res, AddStreamState>;
  @useResult
  $Res call(
      {CreateStreamModel createStreamModel,
      List<ProductModel> products,
      bool isLoading,
      bool isProductsLoading,
      CategoryModel? categories,
      bool isCategoriesLoading,
      String? error});

  $CreateStreamModelCopyWith<$Res> get createStreamModel;
  $CategoryModelCopyWith<$Res>? get categories;
}

/// @nodoc
class _$AddStreamStateCopyWithImpl<$Res, $Val extends AddStreamState>
    implements $AddStreamStateCopyWith<$Res> {
  _$AddStreamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createStreamModel = null,
    Object? products = null,
    Object? isLoading = null,
    Object? isProductsLoading = null,
    Object? categories = freezed,
    Object? isCategoriesLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      createStreamModel: null == createStreamModel
          ? _value.createStreamModel
          : createStreamModel // ignore: cast_nullable_to_non_nullable
              as CreateStreamModel,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateStreamModelCopyWith<$Res> get createStreamModel {
    return $CreateStreamModelCopyWith<$Res>(_value.createStreamModel, (value) {
      return _then(_value.copyWith(createStreamModel: value) as $Val);
    });
  }

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddStreamStateImplCopyWith<$Res>
    implements $AddStreamStateCopyWith<$Res> {
  factory _$$AddStreamStateImplCopyWith(_$AddStreamStateImpl value,
          $Res Function(_$AddStreamStateImpl) then) =
      __$$AddStreamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreateStreamModel createStreamModel,
      List<ProductModel> products,
      bool isLoading,
      bool isProductsLoading,
      CategoryModel? categories,
      bool isCategoriesLoading,
      String? error});

  @override
  $CreateStreamModelCopyWith<$Res> get createStreamModel;
  @override
  $CategoryModelCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$AddStreamStateImplCopyWithImpl<$Res>
    extends _$AddStreamStateCopyWithImpl<$Res, _$AddStreamStateImpl>
    implements _$$AddStreamStateImplCopyWith<$Res> {
  __$$AddStreamStateImplCopyWithImpl(
      _$AddStreamStateImpl _value, $Res Function(_$AddStreamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createStreamModel = null,
    Object? products = null,
    Object? isLoading = null,
    Object? isProductsLoading = null,
    Object? categories = freezed,
    Object? isCategoriesLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$AddStreamStateImpl(
      createStreamModel: null == createStreamModel
          ? _value.createStreamModel
          : createStreamModel // ignore: cast_nullable_to_non_nullable
              as CreateStreamModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddStreamStateImpl implements _AddStreamState {
  const _$AddStreamStateImpl(
      {required this.createStreamModel,
      final List<ProductModel> products = const [],
      this.isLoading = false,
      this.isProductsLoading = false,
      this.categories,
      this.isCategoriesLoading = false,
      this.error})
      : _products = products;

  @override
  final CreateStreamModel createStreamModel;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProductsLoading;
  @override
  final CategoryModel? categories;
  @override
  @JsonKey()
  final bool isCategoriesLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddStreamState(createStreamModel: $createStreamModel, products: $products, isLoading: $isLoading, isProductsLoading: $isProductsLoading, categories: $categories, isCategoriesLoading: $isCategoriesLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStreamStateImpl &&
            (identical(other.createStreamModel, createStreamModel) ||
                other.createStreamModel == createStreamModel) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProductsLoading, isProductsLoading) ||
                other.isProductsLoading == isProductsLoading) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.isCategoriesLoading, isCategoriesLoading) ||
                other.isCategoriesLoading == isCategoriesLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      createStreamModel,
      const DeepCollectionEquality().hash(_products),
      isLoading,
      isProductsLoading,
      categories,
      isCategoriesLoading,
      error);

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStreamStateImplCopyWith<_$AddStreamStateImpl> get copyWith =>
      __$$AddStreamStateImplCopyWithImpl<_$AddStreamStateImpl>(
          this, _$identity);
}

abstract class _AddStreamState implements AddStreamState {
  const factory _AddStreamState(
      {required final CreateStreamModel createStreamModel,
      final List<ProductModel> products,
      final bool isLoading,
      final bool isProductsLoading,
      final CategoryModel? categories,
      final bool isCategoriesLoading,
      final String? error}) = _$AddStreamStateImpl;

  @override
  CreateStreamModel get createStreamModel;
  @override
  List<ProductModel> get products;
  @override
  bool get isLoading;
  @override
  bool get isProductsLoading;
  @override
  CategoryModel? get categories;
  @override
  bool get isCategoriesLoading;
  @override
  String? get error;

  /// Create a copy of AddStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStreamStateImplCopyWith<_$AddStreamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
