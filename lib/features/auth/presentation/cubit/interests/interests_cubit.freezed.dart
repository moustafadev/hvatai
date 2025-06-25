// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterestsState {
  UserRegistrationData? get userData => throw _privateConstructorUsedError;
  List<String> get selectedInterests => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestsStateCopyWith<InterestsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsStateCopyWith<$Res> {
  factory $InterestsStateCopyWith(
          InterestsState value, $Res Function(InterestsState) then) =
      _$InterestsStateCopyWithImpl<$Res, InterestsState>;
  @useResult
  $Res call(
      {UserRegistrationData? userData,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      bool isLoading});

  $UserRegistrationDataCopyWith<$Res>? get userData;
}

/// @nodoc
class _$InterestsStateCopyWithImpl<$Res, $Val extends InterestsState>
    implements $InterestsStateCopyWith<$Res> {
  _$InterestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData?,
      selectedInterests: null == selectedInterests
          ? _value.selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndices: null == selectedIndices
          ? _value.selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationDataCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserRegistrationDataCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterestsStateImplCopyWith<$Res>
    implements $InterestsStateCopyWith<$Res> {
  factory _$$InterestsStateImplCopyWith(_$InterestsStateImpl value,
          $Res Function(_$InterestsStateImpl) then) =
      __$$InterestsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRegistrationData? userData,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      bool isLoading});

  @override
  $UserRegistrationDataCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$InterestsStateImplCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res, _$InterestsStateImpl>
    implements _$$InterestsStateImplCopyWith<$Res> {
  __$$InterestsStateImplCopyWithImpl(
      _$InterestsStateImpl _value, $Res Function(_$InterestsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? isLoading = null,
  }) {
    return _then(_$InterestsStateImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData?,
      selectedInterests: null == selectedInterests
          ? _value._selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndices: null == selectedIndices
          ? _value._selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InterestsStateImpl implements _InterestsState {
  const _$InterestsStateImpl(
      {this.userData,
      final List<String> selectedInterests = const [],
      final Set<int> selectedIndices = const {},
      this.isLoading = false})
      : _selectedInterests = selectedInterests,
        _selectedIndices = selectedIndices;

  @override
  final UserRegistrationData? userData;
  final List<String> _selectedInterests;
  @override
  @JsonKey()
  List<String> get selectedInterests {
    if (_selectedInterests is EqualUnmodifiableListView)
      return _selectedInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedInterests);
  }

  final Set<int> _selectedIndices;
  @override
  @JsonKey()
  Set<int> get selectedIndices {
    if (_selectedIndices is EqualUnmodifiableSetView) return _selectedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIndices);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'InterestsState(userData: $userData, selectedInterests: $selectedInterests, selectedIndices: $selectedIndices, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            const DeepCollectionEquality()
                .equals(other._selectedInterests, _selectedInterests) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userData,
      const DeepCollectionEquality().hash(_selectedInterests),
      const DeepCollectionEquality().hash(_selectedIndices),
      isLoading);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsStateImplCopyWith<_$InterestsStateImpl> get copyWith =>
      __$$InterestsStateImplCopyWithImpl<_$InterestsStateImpl>(
          this, _$identity);
}

abstract class _InterestsState implements InterestsState {
  const factory _InterestsState(
      {final UserRegistrationData? userData,
      final List<String> selectedInterests,
      final Set<int> selectedIndices,
      final bool isLoading}) = _$InterestsStateImpl;

  @override
  UserRegistrationData? get userData;
  @override
  List<String> get selectedInterests;
  @override
  Set<int> get selectedIndices;
  @override
  bool get isLoading;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsStateImplCopyWith<_$InterestsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
