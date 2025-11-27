// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  /// Create a copy of CompanyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyProductsStateCopyWith<CompanyProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyProductsStateCopyWith<$Res> {
  factory $CompanyProductsStateCopyWith(CompanyProductsState value,
          $Res Function(CompanyProductsState) then) =
      _$CompanyProductsStateCopyWithImpl<$Res, CompanyProductsState>;
  @useResult
  $Res call({bool isLoading, String errorMessage, List<ProductModel> products});
}

/// @nodoc
class _$CompanyProductsStateCopyWithImpl<$Res,
        $Val extends CompanyProductsState>
    implements $CompanyProductsStateCopyWith<$Res> {
  _$CompanyProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyProductsStateImplCopyWith<$Res>
    implements $CompanyProductsStateCopyWith<$Res> {
  factory _$$CompanyProductsStateImplCopyWith(_$CompanyProductsStateImpl value,
          $Res Function(_$CompanyProductsStateImpl) then) =
      __$$CompanyProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage, List<ProductModel> products});
}

/// @nodoc
class __$$CompanyProductsStateImplCopyWithImpl<$Res>
    extends _$CompanyProductsStateCopyWithImpl<$Res, _$CompanyProductsStateImpl>
    implements _$$CompanyProductsStateImplCopyWith<$Res> {
  __$$CompanyProductsStateImplCopyWithImpl(_$CompanyProductsStateImpl _value,
      $Res Function(_$CompanyProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? products = null,
  }) {
    return _then(_$CompanyProductsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$CompanyProductsStateImpl implements _CompanyProductsState {
  const _$CompanyProductsStateImpl(
      {this.isLoading = false,
      this.errorMessage = '',
      final List<ProductModel> products = const <ProductModel>[]})
      : _products = products;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CompanyProductsState(isLoading: $isLoading, errorMessage: $errorMessage, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyProductsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of CompanyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyProductsStateImplCopyWith<_$CompanyProductsStateImpl>
      get copyWith =>
          __$$CompanyProductsStateImplCopyWithImpl<_$CompanyProductsStateImpl>(
              this, _$identity);
}

abstract class _CompanyProductsState implements CompanyProductsState {
  const factory _CompanyProductsState(
      {final bool isLoading,
      final String errorMessage,
      final List<ProductModel> products}) = _$CompanyProductsStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<ProductModel> get products;

  /// Create a copy of CompanyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyProductsStateImplCopyWith<_$CompanyProductsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
