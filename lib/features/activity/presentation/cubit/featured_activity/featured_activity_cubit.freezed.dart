// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeaturedActivityState {
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  List<AuctionProduct> get products => throw _privateConstructorUsedError;
  List<LiveStreamModel> get liveStreams => throw _privateConstructorUsedError;

  /// Create a copy of FeaturedActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturedActivityStateCopyWith<FeaturedActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedActivityStateCopyWith<$Res> {
  factory $FeaturedActivityStateCopyWith(FeaturedActivityState value,
          $Res Function(FeaturedActivityState) then) =
      _$FeaturedActivityStateCopyWithImpl<$Res, FeaturedActivityState>;
  @useResult
  $Res call(
      {int selectedCategoryIndex,
      List<AuctionProduct> products,
      List<LiveStreamModel> liveStreams});
}

/// @nodoc
class _$FeaturedActivityStateCopyWithImpl<$Res,
        $Val extends FeaturedActivityState>
    implements $FeaturedActivityStateCopyWith<$Res> {
  _$FeaturedActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryIndex = null,
    Object? products = null,
    Object? liveStreams = null,
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
      liveStreams: null == liveStreams
          ? _value.liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<LiveStreamModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedActivityStateImplCopyWith<$Res>
    implements $FeaturedActivityStateCopyWith<$Res> {
  factory _$$FeaturedActivityStateImplCopyWith(
          _$FeaturedActivityStateImpl value,
          $Res Function(_$FeaturedActivityStateImpl) then) =
      __$$FeaturedActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedCategoryIndex,
      List<AuctionProduct> products,
      List<LiveStreamModel> liveStreams});
}

/// @nodoc
class __$$FeaturedActivityStateImplCopyWithImpl<$Res>
    extends _$FeaturedActivityStateCopyWithImpl<$Res,
        _$FeaturedActivityStateImpl>
    implements _$$FeaturedActivityStateImplCopyWith<$Res> {
  __$$FeaturedActivityStateImplCopyWithImpl(_$FeaturedActivityStateImpl _value,
      $Res Function(_$FeaturedActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeaturedActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryIndex = null,
    Object? products = null,
    Object? liveStreams = null,
  }) {
    return _then(_$FeaturedActivityStateImpl(
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AuctionProduct>,
      liveStreams: null == liveStreams
          ? _value._liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<LiveStreamModel>,
    ));
  }
}

/// @nodoc

class _$FeaturedActivityStateImpl implements _FeaturedActivityState {
  const _$FeaturedActivityStateImpl(
      {required this.selectedCategoryIndex,
      required final List<AuctionProduct> products,
      required final List<LiveStreamModel> liveStreams})
      : _products = products,
        _liveStreams = liveStreams;

  @override
  final int selectedCategoryIndex;
  final List<AuctionProduct> _products;
  @override
  List<AuctionProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<LiveStreamModel> _liveStreams;
  @override
  List<LiveStreamModel> get liveStreams {
    if (_liveStreams is EqualUnmodifiableListView) return _liveStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveStreams);
  }

  @override
  String toString() {
    return 'FeaturedActivityState(selectedCategoryIndex: $selectedCategoryIndex, products: $products, liveStreams: $liveStreams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedActivityStateImpl &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._liveStreams, _liveStreams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCategoryIndex,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_liveStreams));

  /// Create a copy of FeaturedActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedActivityStateImplCopyWith<_$FeaturedActivityStateImpl>
      get copyWith => __$$FeaturedActivityStateImplCopyWithImpl<
          _$FeaturedActivityStateImpl>(this, _$identity);
}

abstract class _FeaturedActivityState implements FeaturedActivityState {
  const factory _FeaturedActivityState(
          {required final int selectedCategoryIndex,
          required final List<AuctionProduct> products,
          required final List<LiveStreamModel> liveStreams}) =
      _$FeaturedActivityStateImpl;

  @override
  int get selectedCategoryIndex;
  @override
  List<AuctionProduct> get products;
  @override
  List<LiveStreamModel> get liveStreams;

  /// Create a copy of FeaturedActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedActivityStateImplCopyWith<_$FeaturedActivityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
