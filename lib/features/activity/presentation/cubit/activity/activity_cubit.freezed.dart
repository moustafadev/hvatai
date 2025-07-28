// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityState {
  int get selectedTabIndex => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  List<AuctionProduct> get products => throw _privateConstructorUsedError;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call(
      {int selectedTabIndex,
      int selectedCategoryIndex,
      List<AuctionProduct> products});
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? selectedCategoryIndex = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ActivityStateImplCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$ActivityStateImplCopyWith(
          _$ActivityStateImpl value, $Res Function(_$ActivityStateImpl) then) =
      __$$ActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedTabIndex,
      int selectedCategoryIndex,
      List<AuctionProduct> products});
}

/// @nodoc
class __$$ActivityStateImplCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$ActivityStateImpl>
    implements _$$ActivityStateImplCopyWith<$Res> {
  __$$ActivityStateImplCopyWithImpl(
      _$ActivityStateImpl _value, $Res Function(_$ActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? selectedCategoryIndex = null,
    Object? products = null,
  }) {
    return _then(_$ActivityStateImpl(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$ActivityStateImpl implements _ActivityState {
  const _$ActivityStateImpl(
      {this.selectedTabIndex = 0,
      this.selectedCategoryIndex = 0,
      final List<AuctionProduct> products = const []})
      : _products = products;

  @override
  @JsonKey()
  final int selectedTabIndex;
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
    return 'ActivityState(selectedTabIndex: $selectedTabIndex, selectedCategoryIndex: $selectedCategoryIndex, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTabIndex,
      selectedCategoryIndex, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {final int selectedTabIndex,
      final int selectedCategoryIndex,
      final List<AuctionProduct> products}) = _$ActivityStateImpl;

  @override
  int get selectedTabIndex;
  @override
  int get selectedCategoryIndex;
  @override
  List<AuctionProduct> get products;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
