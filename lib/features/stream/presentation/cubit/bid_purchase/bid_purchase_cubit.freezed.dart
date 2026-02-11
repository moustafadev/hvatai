// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_purchase_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BidPurchaseState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingAddresses => throw _privateConstructorUsedError;
  bool get isLoadingWallet => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get hasDeliveryAddress => throw _privateConstructorUsedError;
  String get selectedPaymentMethod => throw _privateConstructorUsedError;
  int? get selectedWalletId => throw _privateConstructorUsedError;
  AddressModel? get selectedAddress => throw _privateConstructorUsedError;
  List<AddressModel> get addresses => throw _privateConstructorUsedError;
  bool get showFirstSheet => throw _privateConstructorUsedError;
  bool get showSecondSheet => throw _privateConstructorUsedError;

  /// Create a copy of BidPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidPurchaseStateCopyWith<BidPurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidPurchaseStateCopyWith<$Res> {
  factory $BidPurchaseStateCopyWith(
          BidPurchaseState value, $Res Function(BidPurchaseState) then) =
      _$BidPurchaseStateCopyWithImpl<$Res, BidPurchaseState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingAddresses,
      bool isLoadingWallet,
      String errorMessage,
      bool hasDeliveryAddress,
      String selectedPaymentMethod,
      int? selectedWalletId,
      AddressModel? selectedAddress,
      List<AddressModel> addresses,
      bool showFirstSheet,
      bool showSecondSheet});

  $AddressModelCopyWith<$Res>? get selectedAddress;
}

/// @nodoc
class _$BidPurchaseStateCopyWithImpl<$Res, $Val extends BidPurchaseState>
    implements $BidPurchaseStateCopyWith<$Res> {
  _$BidPurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingAddresses = null,
    Object? isLoadingWallet = null,
    Object? errorMessage = null,
    Object? hasDeliveryAddress = null,
    Object? selectedPaymentMethod = null,
    Object? selectedWalletId = freezed,
    Object? selectedAddress = freezed,
    Object? addresses = null,
    Object? showFirstSheet = null,
    Object? showSecondSheet = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAddresses: null == isLoadingAddresses
          ? _value.isLoadingAddresses
          : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingWallet: null == isLoadingWallet
          ? _value.isLoadingWallet
          : isLoadingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      hasDeliveryAddress: null == hasDeliveryAddress
          ? _value.hasDeliveryAddress
          : hasDeliveryAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      selectedWalletId: freezed == selectedWalletId
          ? _value.selectedWalletId
          : selectedWalletId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      showFirstSheet: null == showFirstSheet
          ? _value.showFirstSheet
          : showFirstSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      showSecondSheet: null == showSecondSheet
          ? _value.showSecondSheet
          : showSecondSheet // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of BidPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get selectedAddress {
    if (_value.selectedAddress == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.selectedAddress!, (value) {
      return _then(_value.copyWith(selectedAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidPurchaseStateImplCopyWith<$Res>
    implements $BidPurchaseStateCopyWith<$Res> {
  factory _$$BidPurchaseStateImplCopyWith(_$BidPurchaseStateImpl value,
          $Res Function(_$BidPurchaseStateImpl) then) =
      __$$BidPurchaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingAddresses,
      bool isLoadingWallet,
      String errorMessage,
      bool hasDeliveryAddress,
      String selectedPaymentMethod,
      int? selectedWalletId,
      AddressModel? selectedAddress,
      List<AddressModel> addresses,
      bool showFirstSheet,
      bool showSecondSheet});

  @override
  $AddressModelCopyWith<$Res>? get selectedAddress;
}

/// @nodoc
class __$$BidPurchaseStateImplCopyWithImpl<$Res>
    extends _$BidPurchaseStateCopyWithImpl<$Res, _$BidPurchaseStateImpl>
    implements _$$BidPurchaseStateImplCopyWith<$Res> {
  __$$BidPurchaseStateImplCopyWithImpl(_$BidPurchaseStateImpl _value,
      $Res Function(_$BidPurchaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingAddresses = null,
    Object? isLoadingWallet = null,
    Object? errorMessage = null,
    Object? hasDeliveryAddress = null,
    Object? selectedPaymentMethod = null,
    Object? selectedWalletId = freezed,
    Object? selectedAddress = freezed,
    Object? addresses = null,
    Object? showFirstSheet = null,
    Object? showSecondSheet = null,
  }) {
    return _then(_$BidPurchaseStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAddresses: null == isLoadingAddresses
          ? _value.isLoadingAddresses
          : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingWallet: null == isLoadingWallet
          ? _value.isLoadingWallet
          : isLoadingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      hasDeliveryAddress: null == hasDeliveryAddress
          ? _value.hasDeliveryAddress
          : hasDeliveryAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      selectedWalletId: freezed == selectedWalletId
          ? _value.selectedWalletId
          : selectedWalletId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      showFirstSheet: null == showFirstSheet
          ? _value.showFirstSheet
          : showFirstSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      showSecondSheet: null == showSecondSheet
          ? _value.showSecondSheet
          : showSecondSheet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BidPurchaseStateImpl implements _BidPurchaseState {
  const _$BidPurchaseStateImpl(
      {this.isLoading = false,
      this.isLoadingAddresses = false,
      this.isLoadingWallet = false,
      this.errorMessage = '',
      this.hasDeliveryAddress = false,
      this.selectedPaymentMethod = 'wallet',
      this.selectedWalletId,
      this.selectedAddress,
      final List<AddressModel> addresses = const [],
      this.showFirstSheet = false,
      this.showSecondSheet = false})
      : _addresses = addresses;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingAddresses;
  @override
  @JsonKey()
  final bool isLoadingWallet;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool hasDeliveryAddress;
  @override
  @JsonKey()
  final String selectedPaymentMethod;
  @override
  final int? selectedWalletId;
  @override
  final AddressModel? selectedAddress;
  final List<AddressModel> _addresses;
  @override
  @JsonKey()
  List<AddressModel> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  @JsonKey()
  final bool showFirstSheet;
  @override
  @JsonKey()
  final bool showSecondSheet;

  @override
  String toString() {
    return 'BidPurchaseState(isLoading: $isLoading, isLoadingAddresses: $isLoadingAddresses, isLoadingWallet: $isLoadingWallet, errorMessage: $errorMessage, hasDeliveryAddress: $hasDeliveryAddress, selectedPaymentMethod: $selectedPaymentMethod, selectedWalletId: $selectedWalletId, selectedAddress: $selectedAddress, addresses: $addresses, showFirstSheet: $showFirstSheet, showSecondSheet: $showSecondSheet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidPurchaseStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingAddresses, isLoadingAddresses) ||
                other.isLoadingAddresses == isLoadingAddresses) &&
            (identical(other.isLoadingWallet, isLoadingWallet) ||
                other.isLoadingWallet == isLoadingWallet) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.hasDeliveryAddress, hasDeliveryAddress) ||
                other.hasDeliveryAddress == hasDeliveryAddress) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.selectedWalletId, selectedWalletId) ||
                other.selectedWalletId == selectedWalletId) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.showFirstSheet, showFirstSheet) ||
                other.showFirstSheet == showFirstSheet) &&
            (identical(other.showSecondSheet, showSecondSheet) ||
                other.showSecondSheet == showSecondSheet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingAddresses,
      isLoadingWallet,
      errorMessage,
      hasDeliveryAddress,
      selectedPaymentMethod,
      selectedWalletId,
      selectedAddress,
      const DeepCollectionEquality().hash(_addresses),
      showFirstSheet,
      showSecondSheet);

  /// Create a copy of BidPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidPurchaseStateImplCopyWith<_$BidPurchaseStateImpl> get copyWith =>
      __$$BidPurchaseStateImplCopyWithImpl<_$BidPurchaseStateImpl>(
          this, _$identity);
}

abstract class _BidPurchaseState implements BidPurchaseState {
  const factory _BidPurchaseState(
      {final bool isLoading,
      final bool isLoadingAddresses,
      final bool isLoadingWallet,
      final String errorMessage,
      final bool hasDeliveryAddress,
      final String selectedPaymentMethod,
      final int? selectedWalletId,
      final AddressModel? selectedAddress,
      final List<AddressModel> addresses,
      final bool showFirstSheet,
      final bool showSecondSheet}) = _$BidPurchaseStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoadingAddresses;
  @override
  bool get isLoadingWallet;
  @override
  String get errorMessage;
  @override
  bool get hasDeliveryAddress;
  @override
  String get selectedPaymentMethod;
  @override
  int? get selectedWalletId;
  @override
  AddressModel? get selectedAddress;
  @override
  List<AddressModel> get addresses;
  @override
  bool get showFirstSheet;
  @override
  bool get showSecondSheet;

  /// Create a copy of BidPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidPurchaseStateImplCopyWith<_$BidPurchaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
