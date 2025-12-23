// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_product_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyProductDetailsState {
  ProductModel? get product => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  PageController? get pageController => throw _privateConstructorUsedError;

  /// Create a copy of MyProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyProductDetailsStateCopyWith<MyProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductDetailsStateCopyWith<$Res> {
  factory $MyProductDetailsStateCopyWith(MyProductDetailsState value,
          $Res Function(MyProductDetailsState) then) =
      _$MyProductDetailsStateCopyWithImpl<$Res, MyProductDetailsState>;
  @useResult
  $Res call(
      {ProductModel? product,
      int currentImageIndex,
      PageController? pageController});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$MyProductDetailsStateCopyWithImpl<$Res,
        $Val extends MyProductDetailsState>
    implements $MyProductDetailsStateCopyWith<$Res> {
  _$MyProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? currentImageIndex = null,
    Object? pageController = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: freezed == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
    ) as $Val);
  }

  /// Create a copy of MyProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyProductDetailsStateImplCopyWith<$Res>
    implements $MyProductDetailsStateCopyWith<$Res> {
  factory _$$MyProductDetailsStateImplCopyWith(
          _$MyProductDetailsStateImpl value,
          $Res Function(_$MyProductDetailsStateImpl) then) =
      __$$MyProductDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel? product,
      int currentImageIndex,
      PageController? pageController});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$MyProductDetailsStateImplCopyWithImpl<$Res>
    extends _$MyProductDetailsStateCopyWithImpl<$Res,
        _$MyProductDetailsStateImpl>
    implements _$$MyProductDetailsStateImplCopyWith<$Res> {
  __$$MyProductDetailsStateImplCopyWithImpl(_$MyProductDetailsStateImpl _value,
      $Res Function(_$MyProductDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? currentImageIndex = null,
    Object? pageController = freezed,
  }) {
    return _then(_$MyProductDetailsStateImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: freezed == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
    ));
  }
}

/// @nodoc

class _$MyProductDetailsStateImpl implements _MyProductDetailsState {
  const _$MyProductDetailsStateImpl(
      {this.product = null, this.currentImageIndex = 0, this.pageController});

  @override
  @JsonKey()
  final ProductModel? product;
  @override
  @JsonKey()
  final int currentImageIndex;
  @override
  final PageController? pageController;

  @override
  String toString() {
    return 'MyProductDetailsState(product: $product, currentImageIndex: $currentImageIndex, pageController: $pageController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProductDetailsStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex) &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, product, currentImageIndex, pageController);

  /// Create a copy of MyProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProductDetailsStateImplCopyWith<_$MyProductDetailsStateImpl>
      get copyWith => __$$MyProductDetailsStateImplCopyWithImpl<
          _$MyProductDetailsStateImpl>(this, _$identity);
}

abstract class _MyProductDetailsState implements MyProductDetailsState {
  const factory _MyProductDetailsState(
      {final ProductModel? product,
      final int currentImageIndex,
      final PageController? pageController}) = _$MyProductDetailsStateImpl;

  @override
  ProductModel? get product;
  @override
  int get currentImageIndex;
  @override
  PageController? get pageController;

  /// Create a copy of MyProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyProductDetailsStateImplCopyWith<_$MyProductDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
