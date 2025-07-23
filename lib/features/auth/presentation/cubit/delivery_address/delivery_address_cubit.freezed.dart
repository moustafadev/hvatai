// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryAddressState {
  UserRegistrationData get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAddressStateCopyWith<DeliveryAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressStateCopyWith<$Res> {
  factory $DeliveryAddressStateCopyWith(DeliveryAddressState value,
          $Res Function(DeliveryAddressState) then) =
      _$DeliveryAddressStateCopyWithImpl<$Res, DeliveryAddressState>;
  @useResult
  $Res call({UserRegistrationData user, bool isLoading, String errorMessage});

  $UserRegistrationDataCopyWith<$Res> get user;
}

/// @nodoc
class _$DeliveryAddressStateCopyWithImpl<$Res,
        $Val extends DeliveryAddressState>
    implements $DeliveryAddressStateCopyWith<$Res> {
  _$DeliveryAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
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

  /// Create a copy of DeliveryAddressState
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
abstract class _$$DeliveryAddressStateImplCopyWith<$Res>
    implements $DeliveryAddressStateCopyWith<$Res> {
  factory _$$DeliveryAddressStateImplCopyWith(_$DeliveryAddressStateImpl value,
          $Res Function(_$DeliveryAddressStateImpl) then) =
      __$$DeliveryAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRegistrationData user, bool isLoading, String errorMessage});

  @override
  $UserRegistrationDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$DeliveryAddressStateImplCopyWithImpl<$Res>
    extends _$DeliveryAddressStateCopyWithImpl<$Res, _$DeliveryAddressStateImpl>
    implements _$$DeliveryAddressStateImplCopyWith<$Res> {
  __$$DeliveryAddressStateImplCopyWithImpl(_$DeliveryAddressStateImpl _value,
      $Res Function(_$DeliveryAddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DeliveryAddressStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
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

class _$DeliveryAddressStateImpl implements _DeliveryAddressState {
  const _$DeliveryAddressStateImpl(
      {required this.user, this.isLoading = false, this.errorMessage = ''});

  @override
  final UserRegistrationData user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DeliveryAddressState(user: $user, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAddressStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, errorMessage);

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAddressStateImplCopyWith<_$DeliveryAddressStateImpl>
      get copyWith =>
          __$$DeliveryAddressStateImplCopyWithImpl<_$DeliveryAddressStateImpl>(
              this, _$identity);
}

abstract class _DeliveryAddressState implements DeliveryAddressState {
  const factory _DeliveryAddressState(
      {required final UserRegistrationData user,
      final bool isLoading,
      final String errorMessage}) = _$DeliveryAddressStateImpl;

  @override
  UserRegistrationData get user;
  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAddressStateImplCopyWith<_$DeliveryAddressStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
