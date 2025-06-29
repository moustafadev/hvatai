// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RatesActivityState {
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  List<AuctionProduct> get products => throw _privateConstructorUsedError;

  /// Create a copy of RatesActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatesActivityStateCopyWith<RatesActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesActivityStateCopyWith<$Res> {
  factory $RatesActivityStateCopyWith(
          RatesActivityState value, $Res Function(RatesActivityState) then) =
      _$RatesActivityStateCopyWithImpl<$Res, RatesActivityState>;
  @useResult
  $Res call({int selectedCategoryIndex, List<AuctionProduct> products});
}

/// @nodoc
class _$RatesActivityStateCopyWithImpl<$Res, $Val extends RatesActivityState>
    implements $RatesActivityStateCopyWith<$Res> {
  _$RatesActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatesActivityState
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
abstract class _$$RatesActivityStateImplCopyWith<$Res>
    implements $RatesActivityStateCopyWith<$Res> {
  factory _$$RatesActivityStateImplCopyWith(_$RatesActivityStateImpl value,
          $Res Function(_$RatesActivityStateImpl) then) =
      __$$RatesActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedCategoryIndex, List<AuctionProduct> products});
}

/// @nodoc
class __$$RatesActivityStateImplCopyWithImpl<$Res>
    extends _$RatesActivityStateCopyWithImpl<$Res, _$RatesActivityStateImpl>
    implements _$$RatesActivityStateImplCopyWith<$Res> {
  __$$RatesActivityStateImplCopyWithImpl(_$RatesActivityStateImpl _value,
      $Res Function(_$RatesActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatesActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryIndex = null,
    Object? products = null,
  }) {
    return _then(_$RatesActivityStateImpl(
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

class _$RatesActivityStateImpl implements _RatesActivityState {
  const _$RatesActivityStateImpl(
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
    return 'RatesActivityState(selectedCategoryIndex: $selectedCategoryIndex, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesActivityStateImpl &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategoryIndex,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of RatesActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatesActivityStateImplCopyWith<_$RatesActivityStateImpl> get copyWith =>
      __$$RatesActivityStateImplCopyWithImpl<_$RatesActivityStateImpl>(
          this, _$identity);
}

abstract class _RatesActivityState implements RatesActivityState {
  const factory _RatesActivityState(
      {final int selectedCategoryIndex,
      final List<AuctionProduct> products}) = _$RatesActivityStateImpl;

  @override
  int get selectedCategoryIndex;
  @override
  List<AuctionProduct> get products;

  /// Create a copy of RatesActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatesActivityStateImplCopyWith<_$RatesActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
