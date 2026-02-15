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
  Set<int> get favoritedIds =>
      throw _privateConstructorUsedError; // Set of favorited item IDs by type
  Map<String, Set<int>> get favoritedByType =>
      throw _privateConstructorUsedError;

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
  $Res call({Set<int> favoritedIds, Map<String, Set<int>> favoritedByType});
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
    Object? favoritedIds = null,
    Object? favoritedByType = null,
  }) {
    return _then(_value.copyWith(
      favoritedIds: null == favoritedIds
          ? _value.favoritedIds
          : favoritedIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      favoritedByType: null == favoritedByType
          ? _value.favoritedByType
          : favoritedByType // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<int>>,
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
  $Res call({Set<int> favoritedIds, Map<String, Set<int>> favoritedByType});
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
    Object? favoritedIds = null,
    Object? favoritedByType = null,
  }) {
    return _then(_$ToggleFavoriteStateImpl(
      favoritedIds: null == favoritedIds
          ? _value._favoritedIds
          : favoritedIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      favoritedByType: null == favoritedByType
          ? _value._favoritedByType
          : favoritedByType // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<int>>,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteStateImpl implements _ToggleFavoriteState {
  const _$ToggleFavoriteStateImpl(
      {final Set<int> favoritedIds = const {},
      final Map<String, Set<int>> favoritedByType = const {}})
      : _favoritedIds = favoritedIds,
        _favoritedByType = favoritedByType;

  final Set<int> _favoritedIds;
  @override
  @JsonKey()
  Set<int> get favoritedIds {
    if (_favoritedIds is EqualUnmodifiableSetView) return _favoritedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favoritedIds);
  }

// Set of favorited item IDs by type
  final Map<String, Set<int>> _favoritedByType;
// Set of favorited item IDs by type
  @override
  @JsonKey()
  Map<String, Set<int>> get favoritedByType {
    if (_favoritedByType is EqualUnmodifiableMapView) return _favoritedByType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_favoritedByType);
  }

  @override
  String toString() {
    return 'ToggleFavoriteState(favoritedIds: $favoritedIds, favoritedByType: $favoritedByType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoritedIds, _favoritedIds) &&
            const DeepCollectionEquality()
                .equals(other._favoritedByType, _favoritedByType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoritedIds),
      const DeepCollectionEquality().hash(_favoritedByType));

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
      {final Set<int> favoritedIds,
      final Map<String, Set<int>> favoritedByType}) = _$ToggleFavoriteStateImpl;

  @override
  Set<int> get favoritedIds; // Set of favorited item IDs by type
  @override
  Map<String, Set<int>> get favoritedByType;

  /// Create a copy of ToggleFavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteStateImplCopyWith<_$ToggleFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
