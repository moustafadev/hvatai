// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delivery_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateDeliveryAddressState {
  bool get doNewAddress => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<UserRegistrationData> get deliveryModel =>
      throw _privateConstructorUsedError;
  UserRegistrationData get user => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDeliveryAddressStateCopyWith<UpdateDeliveryAddressState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDeliveryAddressStateCopyWith<$Res> {
  factory $UpdateDeliveryAddressStateCopyWith(UpdateDeliveryAddressState value,
          $Res Function(UpdateDeliveryAddressState) then) =
      _$UpdateDeliveryAddressStateCopyWithImpl<$Res,
          UpdateDeliveryAddressState>;
  @useResult
  $Res call(
      {bool doNewAddress,
      bool isLoading,
      String errorMessage,
      List<UserRegistrationData> deliveryModel,
      UserRegistrationData user});

  $UserRegistrationDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UpdateDeliveryAddressStateCopyWithImpl<$Res,
        $Val extends UpdateDeliveryAddressState>
    implements $UpdateDeliveryAddressStateCopyWith<$Res> {
  _$UpdateDeliveryAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doNewAddress = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? deliveryModel = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      doNewAddress: null == doNewAddress
          ? _value.doNewAddress
          : doNewAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryModel: null == deliveryModel
          ? _value.deliveryModel
          : deliveryModel // ignore: cast_nullable_to_non_nullable
              as List<UserRegistrationData>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
    ) as $Val);
  }

  /// Create a copy of UpdateDeliveryAddressState
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
abstract class _$$UpdateDeliveryAddressStateImplCopyWith<$Res>
    implements $UpdateDeliveryAddressStateCopyWith<$Res> {
  factory _$$UpdateDeliveryAddressStateImplCopyWith(
          _$UpdateDeliveryAddressStateImpl value,
          $Res Function(_$UpdateDeliveryAddressStateImpl) then) =
      __$$UpdateDeliveryAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool doNewAddress,
      bool isLoading,
      String errorMessage,
      List<UserRegistrationData> deliveryModel,
      UserRegistrationData user});

  @override
  $UserRegistrationDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateDeliveryAddressStateImplCopyWithImpl<$Res>
    extends _$UpdateDeliveryAddressStateCopyWithImpl<$Res,
        _$UpdateDeliveryAddressStateImpl>
    implements _$$UpdateDeliveryAddressStateImplCopyWith<$Res> {
  __$$UpdateDeliveryAddressStateImplCopyWithImpl(
      _$UpdateDeliveryAddressStateImpl _value,
      $Res Function(_$UpdateDeliveryAddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateDeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doNewAddress = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? deliveryModel = null,
    Object? user = null,
  }) {
    return _then(_$UpdateDeliveryAddressStateImpl(
      doNewAddress: null == doNewAddress
          ? _value.doNewAddress
          : doNewAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryModel: null == deliveryModel
          ? _value._deliveryModel
          : deliveryModel // ignore: cast_nullable_to_non_nullable
              as List<UserRegistrationData>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
    ));
  }
}

/// @nodoc

class _$UpdateDeliveryAddressStateImpl implements _UpdateDeliveryAddressState {
  const _$UpdateDeliveryAddressStateImpl(
      {this.doNewAddress = true,
      this.isLoading = false,
      this.errorMessage = '',
      final List<UserRegistrationData> deliveryModel = const [],
      required this.user})
      : _deliveryModel = deliveryModel;

  @override
  @JsonKey()
  final bool doNewAddress;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<UserRegistrationData> _deliveryModel;
  @override
  @JsonKey()
  List<UserRegistrationData> get deliveryModel {
    if (_deliveryModel is EqualUnmodifiableListView) return _deliveryModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryModel);
  }

  @override
  final UserRegistrationData user;

  @override
  String toString() {
    return 'UpdateDeliveryAddressState(doNewAddress: $doNewAddress, isLoading: $isLoading, errorMessage: $errorMessage, deliveryModel: $deliveryModel, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDeliveryAddressStateImpl &&
            (identical(other.doNewAddress, doNewAddress) ||
                other.doNewAddress == doNewAddress) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._deliveryModel, _deliveryModel) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doNewAddress, isLoading,
      errorMessage, const DeepCollectionEquality().hash(_deliveryModel), user);

  /// Create a copy of UpdateDeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDeliveryAddressStateImplCopyWith<_$UpdateDeliveryAddressStateImpl>
      get copyWith => __$$UpdateDeliveryAddressStateImplCopyWithImpl<
          _$UpdateDeliveryAddressStateImpl>(this, _$identity);
}

abstract class _UpdateDeliveryAddressState
    implements UpdateDeliveryAddressState {
  const factory _UpdateDeliveryAddressState(
          {final bool doNewAddress,
          final bool isLoading,
          final String errorMessage,
          final List<UserRegistrationData> deliveryModel,
          required final UserRegistrationData user}) =
      _$UpdateDeliveryAddressStateImpl;

  @override
  bool get doNewAddress;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<UserRegistrationData> get deliveryModel;
  @override
  UserRegistrationData get user;

  /// Create a copy of UpdateDeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDeliveryAddressStateImplCopyWith<_$UpdateDeliveryAddressStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
