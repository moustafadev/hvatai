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
  AddressModel get address => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get lastUpdated => throw _privateConstructorUsedError;
  List<AddressModel> get deliveryModel => throw _privateConstructorUsedError;

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
  $Res call(
      {AddressModel address,
      bool isLoading,
      String errorMessage,
      int lastUpdated,
      List<AddressModel> deliveryModel});

  $AddressModelCopyWith<$Res> get address;
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
    Object? address = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? lastUpdated = null,
    Object? deliveryModel = null,
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
      deliveryModel: null == deliveryModel
          ? _value.deliveryModel
          : deliveryModel // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ) as $Val);
  }

  /// Create a copy of DeliveryAddressState
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
abstract class _$$DeliveryAddressStateImplCopyWith<$Res>
    implements $DeliveryAddressStateCopyWith<$Res> {
  factory _$$DeliveryAddressStateImplCopyWith(_$DeliveryAddressStateImpl value,
          $Res Function(_$DeliveryAddressStateImpl) then) =
      __$$DeliveryAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressModel address,
      bool isLoading,
      String errorMessage,
      int lastUpdated,
      List<AddressModel> deliveryModel});

  @override
  $AddressModelCopyWith<$Res> get address;
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
    Object? address = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? lastUpdated = null,
    Object? deliveryModel = null,
  }) {
    return _then(_$DeliveryAddressStateImpl(
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
      deliveryModel: null == deliveryModel
          ? _value._deliveryModel
          : deliveryModel // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$DeliveryAddressStateImpl implements _DeliveryAddressState {
  const _$DeliveryAddressStateImpl(
      {this.address = const AddressModel(),
      this.isLoading = false,
      this.errorMessage = '',
      this.lastUpdated = 0,
      final List<AddressModel> deliveryModel = const []})
      : _deliveryModel = deliveryModel;

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
  final List<AddressModel> _deliveryModel;
  @override
  @JsonKey()
  List<AddressModel> get deliveryModel {
    if (_deliveryModel is EqualUnmodifiableListView) return _deliveryModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryModel);
  }

  @override
  String toString() {
    return 'DeliveryAddressState(address: $address, isLoading: $isLoading, errorMessage: $errorMessage, lastUpdated: $lastUpdated, deliveryModel: $deliveryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAddressStateImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._deliveryModel, _deliveryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, isLoading, errorMessage,
      lastUpdated, const DeepCollectionEquality().hash(_deliveryModel));

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
      {final AddressModel address,
      final bool isLoading,
      final String errorMessage,
      final int lastUpdated,
      final List<AddressModel> deliveryModel}) = _$DeliveryAddressStateImpl;

  @override
  AddressModel get address;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  int get lastUpdated;
  @override
  List<AddressModel> get deliveryModel;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAddressStateImplCopyWith<_$DeliveryAddressStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
