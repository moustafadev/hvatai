// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationState {
  String get code => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
  @useResult
  $Res call({String code, String? error});
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationStateImplCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$$VerificationStateImplCopyWith(_$VerificationStateImpl value,
          $Res Function(_$VerificationStateImpl) then) =
      __$$VerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String? error});
}

/// @nodoc
class __$$VerificationStateImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerificationStateImpl>
    implements _$$VerificationStateImplCopyWith<$Res> {
  __$$VerificationStateImplCopyWithImpl(_$VerificationStateImpl _value,
      $Res Function(_$VerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
  }) {
    return _then(_$VerificationStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerificationStateImpl implements _VerificationState {
  const _$VerificationStateImpl({this.code = '', this.error});

  @override
  @JsonKey()
  final String code;
  @override
  final String? error;

  @override
  String toString() {
    return 'VerificationState(code: $code, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, error);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationStateImplCopyWith<_$VerificationStateImpl> get copyWith =>
      __$$VerificationStateImplCopyWithImpl<_$VerificationStateImpl>(
          this, _$identity);
}

abstract class _VerificationState implements VerificationState {
  const factory _VerificationState({final String code, final String? error}) =
      _$VerificationStateImpl;

  @override
  String get code;
  @override
  String? get error;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationStateImplCopyWith<_$VerificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
