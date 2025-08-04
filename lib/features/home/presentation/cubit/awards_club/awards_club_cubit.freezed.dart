// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'awards_club_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AwardsClubState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get addThankYouNote => throw _privateConstructorUsedError;
  int get selectedMethodIndex => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of AwardsClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AwardsClubStateCopyWith<AwardsClubState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwardsClubStateCopyWith<$Res> {
  factory $AwardsClubStateCopyWith(
          AwardsClubState value, $Res Function(AwardsClubState) then) =
      _$AwardsClubStateCopyWithImpl<$Res, AwardsClubState>;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      bool addThankYouNote,
      int selectedMethodIndex,
      int? selectedIndex});
}

/// @nodoc
class _$AwardsClubStateCopyWithImpl<$Res, $Val extends AwardsClubState>
    implements $AwardsClubStateCopyWith<$Res> {
  _$AwardsClubStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AwardsClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? addThankYouNote = null,
    Object? selectedMethodIndex = null,
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      addThankYouNote: null == addThankYouNote
          ? _value.addThankYouNote
          : addThankYouNote // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedMethodIndex: null == selectedMethodIndex
          ? _value.selectedMethodIndex
          : selectedMethodIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AwardsClubStateImplCopyWith<$Res>
    implements $AwardsClubStateCopyWith<$Res> {
  factory _$$AwardsClubStateImplCopyWith(_$AwardsClubStateImpl value,
          $Res Function(_$AwardsClubStateImpl) then) =
      __$$AwardsClubStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      bool addThankYouNote,
      int selectedMethodIndex,
      int? selectedIndex});
}

/// @nodoc
class __$$AwardsClubStateImplCopyWithImpl<$Res>
    extends _$AwardsClubStateCopyWithImpl<$Res, _$AwardsClubStateImpl>
    implements _$$AwardsClubStateImplCopyWith<$Res> {
  __$$AwardsClubStateImplCopyWithImpl(
      _$AwardsClubStateImpl _value, $Res Function(_$AwardsClubStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AwardsClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? addThankYouNote = null,
    Object? selectedMethodIndex = null,
    Object? selectedIndex = freezed,
  }) {
    return _then(_$AwardsClubStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      addThankYouNote: null == addThankYouNote
          ? _value.addThankYouNote
          : addThankYouNote // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedMethodIndex: null == selectedMethodIndex
          ? _value.selectedMethodIndex
          : selectedMethodIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AwardsClubStateImpl implements _AwardsClubState {
  const _$AwardsClubStateImpl(
      {this.isLoading = false,
      this.errorMessage = '',
      this.addThankYouNote = false,
      this.selectedMethodIndex = 0,
      this.selectedIndex});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool addThankYouNote;
  @override
  @JsonKey()
  final int selectedMethodIndex;
  @override
  final int? selectedIndex;

  @override
  String toString() {
    return 'AwardsClubState(isLoading: $isLoading, errorMessage: $errorMessage, addThankYouNote: $addThankYouNote, selectedMethodIndex: $selectedMethodIndex, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AwardsClubStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.addThankYouNote, addThankYouNote) ||
                other.addThankYouNote == addThankYouNote) &&
            (identical(other.selectedMethodIndex, selectedMethodIndex) ||
                other.selectedMethodIndex == selectedMethodIndex) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      addThankYouNote, selectedMethodIndex, selectedIndex);

  /// Create a copy of AwardsClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AwardsClubStateImplCopyWith<_$AwardsClubStateImpl> get copyWith =>
      __$$AwardsClubStateImplCopyWithImpl<_$AwardsClubStateImpl>(
          this, _$identity);
}

abstract class _AwardsClubState implements AwardsClubState {
  const factory _AwardsClubState(
      {final bool isLoading,
      final String errorMessage,
      final bool addThankYouNote,
      final int selectedMethodIndex,
      final int? selectedIndex}) = _$AwardsClubStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  bool get addThankYouNote;
  @override
  int get selectedMethodIndex;
  @override
  int? get selectedIndex;

  /// Create a copy of AwardsClubState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AwardsClubStateImplCopyWith<_$AwardsClubStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
