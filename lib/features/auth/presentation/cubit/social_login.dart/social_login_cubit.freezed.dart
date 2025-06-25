// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SocialLoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SocialLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialLoginStateCopyWith<SocialLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginStateCopyWith<$Res> {
  factory $SocialLoginStateCopyWith(
          SocialLoginState value, $Res Function(SocialLoginState) then) =
      _$SocialLoginStateCopyWithImpl<$Res, SocialLoginState>;
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class _$SocialLoginStateCopyWithImpl<$Res, $Val extends SocialLoginState>
    implements $SocialLoginStateCopyWith<$Res> {
  _$SocialLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialLoginStateImplCopyWith<$Res>
    implements $SocialLoginStateCopyWith<$Res> {
  factory _$$SocialLoginStateImplCopyWith(_$SocialLoginStateImpl value,
          $Res Function(_$SocialLoginStateImpl) then) =
      __$$SocialLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class __$$SocialLoginStateImplCopyWithImpl<$Res>
    extends _$SocialLoginStateCopyWithImpl<$Res, _$SocialLoginStateImpl>
    implements _$$SocialLoginStateImplCopyWith<$Res> {
  __$$SocialLoginStateImplCopyWithImpl(_$SocialLoginStateImpl _value,
      $Res Function(_$SocialLoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SocialLoginStateImpl(
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

class _$SocialLoginStateImpl implements _SocialLoginState {
  const _$SocialLoginStateImpl(
      {this.isLoading = false, this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SocialLoginState(isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage);

  /// Create a copy of SocialLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginStateImplCopyWith<_$SocialLoginStateImpl> get copyWith =>
      __$$SocialLoginStateImplCopyWithImpl<_$SocialLoginStateImpl>(
          this, _$identity);
}

abstract class _SocialLoginState implements SocialLoginState {
  const factory _SocialLoginState(
      {final bool isLoading,
      final String errorMessage}) = _$SocialLoginStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of SocialLoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLoginStateImplCopyWith<_$SocialLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
