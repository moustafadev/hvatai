// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterestsDetailState {
  List<String> get generalInterests => throw _privateConstructorUsedError;
  Set<String> get selectedDetails => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestsDetailStateCopyWith<InterestsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsDetailStateCopyWith<$Res> {
  factory $InterestsDetailStateCopyWith(InterestsDetailState value,
          $Res Function(InterestsDetailState) then) =
      _$InterestsDetailStateCopyWithImpl<$Res, InterestsDetailState>;
  @useResult
  $Res call(
      {List<String> generalInterests,
      Set<String> selectedDetails,
      bool isLoading});
}

/// @nodoc
class _$InterestsDetailStateCopyWithImpl<$Res,
        $Val extends InterestsDetailState>
    implements $InterestsDetailStateCopyWith<$Res> {
  _$InterestsDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalInterests = null,
    Object? selectedDetails = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      generalInterests: null == generalInterests
          ? _value.generalInterests
          : generalInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDetails: null == selectedDetails
          ? _value.selectedDetails
          : selectedDetails // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestsDetailStateImplCopyWith<$Res>
    implements $InterestsDetailStateCopyWith<$Res> {
  factory _$$InterestsDetailStateImplCopyWith(_$InterestsDetailStateImpl value,
          $Res Function(_$InterestsDetailStateImpl) then) =
      __$$InterestsDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> generalInterests,
      Set<String> selectedDetails,
      bool isLoading});
}

/// @nodoc
class __$$InterestsDetailStateImplCopyWithImpl<$Res>
    extends _$InterestsDetailStateCopyWithImpl<$Res, _$InterestsDetailStateImpl>
    implements _$$InterestsDetailStateImplCopyWith<$Res> {
  __$$InterestsDetailStateImplCopyWithImpl(_$InterestsDetailStateImpl _value,
      $Res Function(_$InterestsDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalInterests = null,
    Object? selectedDetails = null,
    Object? isLoading = null,
  }) {
    return _then(_$InterestsDetailStateImpl(
      generalInterests: null == generalInterests
          ? _value._generalInterests
          : generalInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDetails: null == selectedDetails
          ? _value._selectedDetails
          : selectedDetails // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InterestsDetailStateImpl implements _InterestsDetailState {
  const _$InterestsDetailStateImpl(
      {final List<String> generalInterests = const [],
      final Set<String> selectedDetails = const {},
      this.isLoading = false})
      : _generalInterests = generalInterests,
        _selectedDetails = selectedDetails;

  final List<String> _generalInterests;
  @override
  @JsonKey()
  List<String> get generalInterests {
    if (_generalInterests is EqualUnmodifiableListView)
      return _generalInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generalInterests);
  }

  final Set<String> _selectedDetails;
  @override
  @JsonKey()
  Set<String> get selectedDetails {
    if (_selectedDetails is EqualUnmodifiableSetView) return _selectedDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedDetails);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'InterestsDetailState(generalInterests: $generalInterests, selectedDetails: $selectedDetails, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsDetailStateImpl &&
            const DeepCollectionEquality()
                .equals(other._generalInterests, _generalInterests) &&
            const DeepCollectionEquality()
                .equals(other._selectedDetails, _selectedDetails) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_generalInterests),
      const DeepCollectionEquality().hash(_selectedDetails),
      isLoading);

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsDetailStateImplCopyWith<_$InterestsDetailStateImpl>
      get copyWith =>
          __$$InterestsDetailStateImplCopyWithImpl<_$InterestsDetailStateImpl>(
              this, _$identity);
}

abstract class _InterestsDetailState implements InterestsDetailState {
  const factory _InterestsDetailState(
      {final List<String> generalInterests,
      final Set<String> selectedDetails,
      final bool isLoading}) = _$InterestsDetailStateImpl;

  @override
  List<String> get generalInterests;
  @override
  Set<String> get selectedDetails;
  @override
  bool get isLoading;

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsDetailStateImplCopyWith<_$InterestsDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
