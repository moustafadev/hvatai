// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToggleFavoriteState {
  Set<int> get favoritedStreamIds => throw _privateConstructorUsedError;
  Map<int, int> get streamFavoriteCounts => throw _privateConstructorUsedError;

  /// Create a copy of ToggleFavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToggleFavoriteStateCopyWith<ToggleFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleFavoriteStateCopyWith<$Res> {
  factory $ToggleFavoriteStateCopyWith(
          ToggleFavoriteState value, $Res Function(ToggleFavoriteState) then) =
      _$ToggleFavoriteStateCopyWithImpl<$Res, ToggleFavoriteState>;
  @useResult
  $Res call({Set<int> favoritedStreamIds, Map<int, int> streamFavoriteCounts});
}

/// @nodoc
class _$ToggleFavoriteStateCopyWithImpl<$Res, $Val extends ToggleFavoriteState>
    implements $ToggleFavoriteStateCopyWith<$Res> {
  _$ToggleFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToggleFavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritedStreamIds = null,
    Object? streamFavoriteCounts = null,
  }) {
    return _then(_value.copyWith(
      favoritedStreamIds: null == favoritedStreamIds
          ? _value.favoritedStreamIds
          : favoritedStreamIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      streamFavoriteCounts: null == streamFavoriteCounts
          ? _value.streamFavoriteCounts
          : streamFavoriteCounts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleFavoriteStateImplCopyWith<$Res>
    implements $ToggleFavoriteStateCopyWith<$Res> {
  factory _$$ToggleFavoriteStateImplCopyWith(_$ToggleFavoriteStateImpl value,
          $Res Function(_$ToggleFavoriteStateImpl) then) =
      __$$ToggleFavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<int> favoritedStreamIds, Map<int, int> streamFavoriteCounts});
}

/// @nodoc
class __$$ToggleFavoriteStateImplCopyWithImpl<$Res>
    extends _$ToggleFavoriteStateCopyWithImpl<$Res, _$ToggleFavoriteStateImpl>
    implements _$$ToggleFavoriteStateImplCopyWith<$Res> {
  __$$ToggleFavoriteStateImplCopyWithImpl(_$ToggleFavoriteStateImpl _value,
      $Res Function(_$ToggleFavoriteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToggleFavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritedStreamIds = null,
    Object? streamFavoriteCounts = null,
  }) {
    return _then(_$ToggleFavoriteStateImpl(
      favoritedStreamIds: null == favoritedStreamIds
          ? _value._favoritedStreamIds
          : favoritedStreamIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      streamFavoriteCounts: null == streamFavoriteCounts
          ? _value._streamFavoriteCounts
          : streamFavoriteCounts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteStateImpl implements _ToggleFavoriteState {
  const _$ToggleFavoriteStateImpl(
      {final Set<int> favoritedStreamIds = const <int>{},
      final Map<int, int> streamFavoriteCounts = const <int, int>{}})
      : _favoritedStreamIds = favoritedStreamIds,
        _streamFavoriteCounts = streamFavoriteCounts;

  final Set<int> _favoritedStreamIds;
  @override
  @JsonKey()
  Set<int> get favoritedStreamIds {
    if (_favoritedStreamIds is EqualUnmodifiableSetView)
      return _favoritedStreamIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favoritedStreamIds);
  }

  final Map<int, int> _streamFavoriteCounts;
  @override
  @JsonKey()
  Map<int, int> get streamFavoriteCounts {
    if (_streamFavoriteCounts is EqualUnmodifiableMapView)
      return _streamFavoriteCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_streamFavoriteCounts);
  }

  @override
  String toString() {
    return 'ToggleFavoriteState(favoritedStreamIds: $favoritedStreamIds, streamFavoriteCounts: $streamFavoriteCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoritedStreamIds, _favoritedStreamIds) &&
            const DeepCollectionEquality()
                .equals(other._streamFavoriteCounts, _streamFavoriteCounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoritedStreamIds),
      const DeepCollectionEquality().hash(_streamFavoriteCounts));

  /// Create a copy of ToggleFavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteStateImplCopyWith<_$ToggleFavoriteStateImpl> get copyWith =>
      __$$ToggleFavoriteStateImplCopyWithImpl<_$ToggleFavoriteStateImpl>(
          this, _$identity);
}

abstract class _ToggleFavoriteState implements ToggleFavoriteState {
  const factory _ToggleFavoriteState(
      {final Set<int> favoritedStreamIds,
      final Map<int, int> streamFavoriteCounts}) = _$ToggleFavoriteStateImpl;

  @override
  Set<int> get favoritedStreamIds;
  @override
  Map<int, int> get streamFavoriteCounts;

  /// Create a copy of ToggleFavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteStateImplCopyWith<_$ToggleFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
