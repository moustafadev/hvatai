// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_violation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportViolationState {
  String get selectedReason => throw _privateConstructorUsedError;
  String get customReason => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ReportViolationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportViolationStateCopyWith<ReportViolationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportViolationStateCopyWith<$Res> {
  factory $ReportViolationStateCopyWith(ReportViolationState value,
          $Res Function(ReportViolationState) then) =
      _$ReportViolationStateCopyWithImpl<$Res, ReportViolationState>;
  @useResult
  $Res call(
      {String selectedReason,
      String customReason,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$ReportViolationStateCopyWithImpl<$Res,
        $Val extends ReportViolationState>
    implements $ReportViolationStateCopyWith<$Res> {
  _$ReportViolationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportViolationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedReason = null,
    Object? customReason = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      selectedReason: null == selectedReason
          ? _value.selectedReason
          : selectedReason // ignore: cast_nullable_to_non_nullable
              as String,
      customReason: null == customReason
          ? _value.customReason
          : customReason // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportViolationStateImplCopyWith<$Res>
    implements $ReportViolationStateCopyWith<$Res> {
  factory _$$ReportViolationStateImplCopyWith(_$ReportViolationStateImpl value,
          $Res Function(_$ReportViolationStateImpl) then) =
      __$$ReportViolationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectedReason,
      String customReason,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$$ReportViolationStateImplCopyWithImpl<$Res>
    extends _$ReportViolationStateCopyWithImpl<$Res, _$ReportViolationStateImpl>
    implements _$$ReportViolationStateImplCopyWith<$Res> {
  __$$ReportViolationStateImplCopyWithImpl(_$ReportViolationStateImpl _value,
      $Res Function(_$ReportViolationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportViolationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedReason = null,
    Object? customReason = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ReportViolationStateImpl(
      selectedReason: null == selectedReason
          ? _value.selectedReason
          : selectedReason // ignore: cast_nullable_to_non_nullable
              as String,
      customReason: null == customReason
          ? _value.customReason
          : customReason // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReportViolationStateImpl implements _ReportViolationState {
  const _$ReportViolationStateImpl(
      {this.selectedReason = '',
      this.customReason = '',
      this.isLoading = false,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final String selectedReason;
  @override
  @JsonKey()
  final String customReason;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ReportViolationState(selectedReason: $selectedReason, customReason: $customReason, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportViolationStateImpl &&
            (identical(other.selectedReason, selectedReason) ||
                other.selectedReason == selectedReason) &&
            (identical(other.customReason, customReason) ||
                other.customReason == customReason) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedReason, customReason, isLoading, errorMessage);

  /// Create a copy of ReportViolationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportViolationStateImplCopyWith<_$ReportViolationStateImpl>
      get copyWith =>
          __$$ReportViolationStateImplCopyWithImpl<_$ReportViolationStateImpl>(
              this, _$identity);
}

abstract class _ReportViolationState implements ReportViolationState {
  const factory _ReportViolationState(
      {final String selectedReason,
      final String customReason,
      final bool isLoading,
      final String errorMessage}) = _$ReportViolationStateImpl;

  @override
  String get selectedReason;
  @override
  String get customReason;
  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of ReportViolationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportViolationStateImplCopyWith<_$ReportViolationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
