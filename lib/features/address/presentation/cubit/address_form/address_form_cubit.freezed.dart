// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get lastUpdated => throw _privateConstructorUsedError;
  UserRegistrationData get user => throw _privateConstructorUsedError;
  AddressFormMode get mode => throw _privateConstructorUsedError;

  /// Create a copy of AddressFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressFormStateCopyWith<AddressFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressFormStateCopyWith<$Res> {
  factory $AddressFormStateCopyWith(
          AddressFormState value, $Res Function(AddressFormState) then) =
      _$AddressFormStateCopyWithImpl<$Res, AddressFormState>;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      int lastUpdated,
      UserRegistrationData user,
      AddressFormMode mode});

  $UserRegistrationDataCopyWith<$Res> get user;
}

/// @nodoc
class _$AddressFormStateCopyWithImpl<$Res, $Val extends AddressFormState>
    implements $AddressFormStateCopyWith<$Res> {
  _$AddressFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? lastUpdated = null,
    Object? user = null,
    Object? mode = null,
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddressFormMode,
    ) as $Val);
  }

  /// Create a copy of AddressFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationDataCopyWith<$Res> get user {
    return $UserRegistrationDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressFormStateImplCopyWith<$Res>
    implements $AddressFormStateCopyWith<$Res> {
  factory _$$AddressFormStateImplCopyWith(_$AddressFormStateImpl value,
          $Res Function(_$AddressFormStateImpl) then) =
      __$$AddressFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      int lastUpdated,
      UserRegistrationData user,
      AddressFormMode mode});

  @override
  $UserRegistrationDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$AddressFormStateImplCopyWithImpl<$Res>
    extends _$AddressFormStateCopyWithImpl<$Res, _$AddressFormStateImpl>
    implements _$$AddressFormStateImplCopyWith<$Res> {
  __$$AddressFormStateImplCopyWithImpl(_$AddressFormStateImpl _value,
      $Res Function(_$AddressFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? lastUpdated = null,
    Object? user = null,
    Object? mode = null,
  }) {
    return _then(_$AddressFormStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddressFormMode,
    ));
  }
}

/// @nodoc

class _$AddressFormStateImpl implements _AddressFormState {
  const _$AddressFormStateImpl(
      {this.isLoading = false,
      this.errorMessage = '',
      this.lastUpdated = 0,
      this.user = const UserRegistrationData(),
      this.mode = AddressFormMode.add});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final int lastUpdated;
  @override
  @JsonKey()
  final UserRegistrationData user;
  @override
  @JsonKey()
  final AddressFormMode mode;

  @override
  String toString() {
    return 'AddressFormState(isLoading: $isLoading, errorMessage: $errorMessage, lastUpdated: $lastUpdated, user: $user, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressFormStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, errorMessage, lastUpdated, user, mode);

  /// Create a copy of AddressFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressFormStateImplCopyWith<_$AddressFormStateImpl> get copyWith =>
      __$$AddressFormStateImplCopyWithImpl<_$AddressFormStateImpl>(
          this, _$identity);
}

abstract class _AddressFormState implements AddressFormState {
  const factory _AddressFormState(
      {final bool isLoading,
      final String errorMessage,
      final int lastUpdated,
      final UserRegistrationData user,
      final AddressFormMode mode}) = _$AddressFormStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  int get lastUpdated;
  @override
  UserRegistrationData get user;
  @override
  AddressFormMode get mode;

  /// Create a copy of AddressFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressFormStateImplCopyWith<_$AddressFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
