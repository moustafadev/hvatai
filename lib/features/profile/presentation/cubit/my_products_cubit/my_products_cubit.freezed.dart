// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyProductsState {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;

  /// Create a copy of MyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyProductsStateCopyWith<MyProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductsStateCopyWith<$Res> {
  factory $MyProductsStateCopyWith(
          MyProductsState value, $Res Function(MyProductsState) then) =
      _$MyProductsStateCopyWithImpl<$Res, MyProductsState>;
  @useResult
  $Res call(
      {List<ProductModel> products,
      bool isLoading,
      String errorMessage,
      int selectedCategoryIndex});
}

/// @nodoc
class _$MyProductsStateCopyWithImpl<$Res, $Val extends MyProductsState>
    implements $MyProductsStateCopyWith<$Res> {
  _$MyProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyProductsStateImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$MyProductsStateImplCopyWith(_$MyProductsStateImpl value,
          $Res Function(_$MyProductsStateImpl) then) =
      __$$MyProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> products,
      bool isLoading,
      String errorMessage,
      int selectedCategoryIndex});
}

/// @nodoc
class __$$MyProductsStateImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$MyProductsStateImpl>
    implements _$$MyProductsStateImplCopyWith<$Res> {
  __$$MyProductsStateImplCopyWithImpl(
      _$MyProductsStateImpl _value, $Res Function(_$MyProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_$MyProductsStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MyProductsStateImpl implements _MyProductsState {
  const _$MyProductsStateImpl(
      {final List<ProductModel> products = const [],
      this.isLoading = false,
      this.errorMessage = '',
      this.selectedCategoryIndex = 0})
      : _products = products;

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
  final String errorMessage;
  @override
  @JsonKey()
  final int selectedCategoryIndex;

  @override
  String toString() {
    return 'MyProductsState(products: $products, isLoading: $isLoading, errorMessage: $errorMessage, selectedCategoryIndex: $selectedCategoryIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProductsStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      isLoading,
      errorMessage,
      selectedCategoryIndex);

  /// Create a copy of MyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProductsStateImplCopyWith<_$MyProductsStateImpl> get copyWith =>
      __$$MyProductsStateImplCopyWithImpl<_$MyProductsStateImpl>(
          this, _$identity);
}

abstract class _MyProductsState implements MyProductsState {
  const factory _MyProductsState(
      {final List<ProductModel> products,
      final bool isLoading,
      final String errorMessage,
      final int selectedCategoryIndex}) = _$MyProductsStateImpl;

  @override
  List<ProductModel> get products;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  int get selectedCategoryIndex;

  /// Create a copy of MyProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyProductsStateImplCopyWith<_$MyProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
