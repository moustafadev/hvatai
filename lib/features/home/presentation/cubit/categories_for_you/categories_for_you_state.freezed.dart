// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_for_you_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesForYouState {
  Set<int> get selectedIds => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesForYouState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesForYouStateCopyWith<CategoriesForYouState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesForYouStateCopyWith<$Res> {
  factory $CategoriesForYouStateCopyWith(CategoriesForYouState value,
          $Res Function(CategoriesForYouState) then) =
      _$CategoriesForYouStateCopyWithImpl<$Res, CategoriesForYouState>;
  @useResult
  $Res call({Set<int> selectedIds});
}

/// @nodoc
class _$CategoriesForYouStateCopyWithImpl<$Res,
        $Val extends CategoriesForYouState>
    implements $CategoriesForYouStateCopyWith<$Res> {
  _$CategoriesForYouStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesForYouState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIds = null,
  }) {
    return _then(_value.copyWith(
      selectedIds: null == selectedIds
          ? _value.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesForYouStateImplCopyWith<$Res>
    implements $CategoriesForYouStateCopyWith<$Res> {
  factory _$$CategoriesForYouStateImplCopyWith(
          _$CategoriesForYouStateImpl value,
          $Res Function(_$CategoriesForYouStateImpl) then) =
      __$$CategoriesForYouStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<int> selectedIds});
}

/// @nodoc
class __$$CategoriesForYouStateImplCopyWithImpl<$Res>
    extends _$CategoriesForYouStateCopyWithImpl<$Res,
        _$CategoriesForYouStateImpl>
    implements _$$CategoriesForYouStateImplCopyWith<$Res> {
  __$$CategoriesForYouStateImplCopyWithImpl(_$CategoriesForYouStateImpl _value,
      $Res Function(_$CategoriesForYouStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesForYouState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIds = null,
  }) {
    return _then(_$CategoriesForYouStateImpl(
      selectedIds: null == selectedIds
          ? _value._selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$CategoriesForYouStateImpl implements _CategoriesForYouState {
  const _$CategoriesForYouStateImpl({final Set<int> selectedIds = const {}})
      : _selectedIds = selectedIds;

  final Set<int> _selectedIds;
  @override
  @JsonKey()
  Set<int> get selectedIds {
    if (_selectedIds is EqualUnmodifiableSetView) return _selectedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIds);
  }

  @override
  String toString() {
    return 'CategoriesForYouState(selectedIds: $selectedIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesForYouStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedIds, _selectedIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedIds));

  /// Create a copy of CategoriesForYouState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesForYouStateImplCopyWith<_$CategoriesForYouStateImpl>
      get copyWith => __$$CategoriesForYouStateImplCopyWithImpl<
          _$CategoriesForYouStateImpl>(this, _$identity);
}

abstract class _CategoriesForYouState implements CategoriesForYouState {
  const factory _CategoriesForYouState({final Set<int> selectedIds}) =
      _$CategoriesForYouStateImpl;

  @override
  Set<int> get selectedIds;

  /// Create a copy of CategoriesForYouState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesForYouStateImplCopyWith<_$CategoriesForYouStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
