// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_goods_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyGoodsState {
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  List<AuctionProduct> get products => throw _privateConstructorUsedError;

  /// Create a copy of MyGoodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyGoodsStateCopyWith<MyGoodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGoodsStateCopyWith<$Res> {
  factory $MyGoodsStateCopyWith(
          MyGoodsState value, $Res Function(MyGoodsState) then) =
      _$MyGoodsStateCopyWithImpl<$Res, MyGoodsState>;
  @useResult
  $Res call({int selectedCategoryIndex, List<AuctionProduct> products});
}

/// @nodoc
class _$MyGoodsStateCopyWithImpl<$Res, $Val extends MyGoodsState>
    implements $MyGoodsStateCopyWith<$Res> {
  _$MyGoodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyGoodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryIndex = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AuctionProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyGoodsStateImplCopyWith<$Res>
    implements $MyGoodsStateCopyWith<$Res> {
  factory _$$MyGoodsStateImplCopyWith(
          _$MyGoodsStateImpl value, $Res Function(_$MyGoodsStateImpl) then) =
      __$$MyGoodsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedCategoryIndex, List<AuctionProduct> products});
}

/// @nodoc
class __$$MyGoodsStateImplCopyWithImpl<$Res>
    extends _$MyGoodsStateCopyWithImpl<$Res, _$MyGoodsStateImpl>
    implements _$$MyGoodsStateImplCopyWith<$Res> {
  __$$MyGoodsStateImplCopyWithImpl(
      _$MyGoodsStateImpl _value, $Res Function(_$MyGoodsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyGoodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryIndex = null,
    Object? products = null,
  }) {
    return _then(_$MyGoodsStateImpl(
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AuctionProduct>,
    ));
  }
}

/// @nodoc

class _$MyGoodsStateImpl implements _MyGoodsState {
  const _$MyGoodsStateImpl(
      {this.selectedCategoryIndex = 0,
      final List<AuctionProduct> products = const []})
      : _products = products;

  @override
  @JsonKey()
  final int selectedCategoryIndex;
  final List<AuctionProduct> _products;
  @override
  @JsonKey()
  List<AuctionProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'MyGoodsState(selectedCategoryIndex: $selectedCategoryIndex, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyGoodsStateImpl &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategoryIndex,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of MyGoodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyGoodsStateImplCopyWith<_$MyGoodsStateImpl> get copyWith =>
      __$$MyGoodsStateImplCopyWithImpl<_$MyGoodsStateImpl>(this, _$identity);
}

abstract class _MyGoodsState implements MyGoodsState {
  const factory _MyGoodsState(
      {final int selectedCategoryIndex,
      final List<AuctionProduct> products}) = _$MyGoodsStateImpl;

  @override
  int get selectedCategoryIndex;
  @override
  List<AuctionProduct> get products;

  /// Create a copy of MyGoodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyGoodsStateImplCopyWith<_$MyGoodsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
