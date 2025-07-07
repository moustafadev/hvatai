// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuctionSearchState {
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  List<AuctionProductSearch> get products => throw _privateConstructorUsedError;

  /// Create a copy of AuctionSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionSearchStateCopyWith<AuctionSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionSearchStateCopyWith<$Res> {
  factory $AuctionSearchStateCopyWith(
          AuctionSearchState value, $Res Function(AuctionSearchState) then) =
      _$AuctionSearchStateCopyWithImpl<$Res, AuctionSearchState>;
  @useResult
  $Res call({int selectedCategoryIndex, List<AuctionProductSearch> products});
}

/// @nodoc
class _$AuctionSearchStateCopyWithImpl<$Res, $Val extends AuctionSearchState>
    implements $AuctionSearchStateCopyWith<$Res> {
  _$AuctionSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionSearchState
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
              as List<AuctionProductSearch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionSearchStateImplCopyWith<$Res>
    implements $AuctionSearchStateCopyWith<$Res> {
  factory _$$AuctionSearchStateImplCopyWith(_$AuctionSearchStateImpl value,
          $Res Function(_$AuctionSearchStateImpl) then) =
      __$$AuctionSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedCategoryIndex, List<AuctionProductSearch> products});
}

/// @nodoc
class __$$AuctionSearchStateImplCopyWithImpl<$Res>
    extends _$AuctionSearchStateCopyWithImpl<$Res, _$AuctionSearchStateImpl>
    implements _$$AuctionSearchStateImplCopyWith<$Res> {
  __$$AuctionSearchStateImplCopyWithImpl(_$AuctionSearchStateImpl _value,
      $Res Function(_$AuctionSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryIndex = null,
    Object? products = null,
  }) {
    return _then(_$AuctionSearchStateImpl(
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AuctionProductSearch>,
    ));
  }
}

/// @nodoc

class _$AuctionSearchStateImpl implements _AuctionSearchState {
  const _$AuctionSearchStateImpl(
      {this.selectedCategoryIndex = 0,
      final List<AuctionProductSearch> products = const []})
      : _products = products;

  @override
  @JsonKey()
  final int selectedCategoryIndex;
  final List<AuctionProductSearch> _products;
  @override
  @JsonKey()
  List<AuctionProductSearch> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AuctionSearchState(selectedCategoryIndex: $selectedCategoryIndex, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionSearchStateImpl &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategoryIndex,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of AuctionSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionSearchStateImplCopyWith<_$AuctionSearchStateImpl> get copyWith =>
      __$$AuctionSearchStateImplCopyWithImpl<_$AuctionSearchStateImpl>(
          this, _$identity);
}

abstract class _AuctionSearchState implements AuctionSearchState {
  const factory _AuctionSearchState(
      {final int selectedCategoryIndex,
      final List<AuctionProductSearch> products}) = _$AuctionSearchStateImpl;

  @override
  int get selectedCategoryIndex;
  @override
  List<AuctionProductSearch> get products;

  /// Create a copy of AuctionSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionSearchStateImplCopyWith<_$AuctionSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
