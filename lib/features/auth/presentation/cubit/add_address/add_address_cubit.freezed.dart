// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAddressState {
  AddressModel get address => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get lastUpdated => throw _privateConstructorUsedError;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAddressStateCopyWith<AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressStateCopyWith<$Res> {
  factory $AddAddressStateCopyWith(
          AddAddressState value, $Res Function(AddAddressState) then) =
      _$AddAddressStateCopyWithImpl<$Res, AddAddressState>;
  @useResult
  $Res call(
      {AddressModel address,
      bool isLoading,
      String errorMessage,
      int lastUpdated});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$AddAddressStateCopyWithImpl<$Res, $Val extends AddAddressState>
    implements $AddAddressStateCopyWith<$Res> {
  _$AddAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
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
    ) as $Val);
  }

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddAddressStateImplCopyWith<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  factory _$$AddAddressStateImplCopyWith(_$AddAddressStateImpl value,
          $Res Function(_$AddAddressStateImpl) then) =
      __$$AddAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressModel address,
      bool isLoading,
      String errorMessage,
      int lastUpdated});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$AddAddressStateImplCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res, _$AddAddressStateImpl>
    implements _$$AddAddressStateImplCopyWith<$Res> {
  __$$AddAddressStateImplCopyWithImpl(
      _$AddAddressStateImpl _value, $Res Function(_$AddAddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$AddAddressStateImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
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
    ));
  }
}

/// @nodoc

class _$AddAddressStateImpl implements _AddAddressState {
  const _$AddAddressStateImpl(
      {this.address = const AddressModel(),
      this.isLoading = false,
      this.errorMessage = '',
      this.lastUpdated = 0});

  @override
  @JsonKey()
  final AddressModel address;
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
  String toString() {
    return 'AddAddressState(address: $address, isLoading: $isLoading, errorMessage: $errorMessage, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressStateImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, isLoading, errorMessage, lastUpdated);

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      __$$AddAddressStateImplCopyWithImpl<_$AddAddressStateImpl>(
          this, _$identity);
}

abstract class _AddAddressState implements AddAddressState {
  const factory _AddAddressState(
      {final AddressModel address,
      final bool isLoading,
      final String errorMessage,
      final int lastUpdated}) = _$AddAddressStateImpl;

  @override
  AddressModel get address;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  int get lastUpdated;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
