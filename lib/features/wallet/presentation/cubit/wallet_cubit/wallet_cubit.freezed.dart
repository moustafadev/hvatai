// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingTransactions => throw _privateConstructorUsedError;
  bool get isWithdrawing => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  WalletModel? get wallet => throw _privateConstructorUsedError;
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;
  bool get showWithdrawSheet => throw _privateConstructorUsedError;
  bool get showLoadingScreen => throw _privateConstructorUsedError;
  bool get showSuccessScreen => throw _privateConstructorUsedError;
  double? get withdrawalAmount => throw _privateConstructorUsedError;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingTransactions,
      bool isWithdrawing,
      String errorMessage,
      WalletModel? wallet,
      List<TransactionModel> transactions,
      PaginationModel? pagination,
      bool showWithdrawSheet,
      bool showLoadingScreen,
      bool showSuccessScreen,
      double? withdrawalAmount});

  $WalletModelCopyWith<$Res>? get wallet;
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingTransactions = null,
    Object? isWithdrawing = null,
    Object? errorMessage = null,
    Object? wallet = freezed,
    Object? transactions = null,
    Object? pagination = freezed,
    Object? showWithdrawSheet = null,
    Object? showLoadingScreen = null,
    Object? showSuccessScreen = null,
    Object? withdrawalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTransactions: null == isLoadingTransactions
          ? _value.isLoadingTransactions
          : isLoadingTransactions // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithdrawing: null == isWithdrawing
          ? _value.isWithdrawing
          : isWithdrawing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
      showWithdrawSheet: null == showWithdrawSheet
          ? _value.showWithdrawSheet
          : showWithdrawSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoadingScreen: null == showLoadingScreen
          ? _value.showLoadingScreen
          : showLoadingScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showSuccessScreen: null == showSuccessScreen
          ? _value.showSuccessScreen
          : showSuccessScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawalAmount: freezed == withdrawalAmount
          ? _value.withdrawalAmount
          : withdrawalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletModelCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletModelCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingTransactions,
      bool isWithdrawing,
      String errorMessage,
      WalletModel? wallet,
      List<TransactionModel> transactions,
      PaginationModel? pagination,
      bool showWithdrawSheet,
      bool showLoadingScreen,
      bool showSuccessScreen,
      double? withdrawalAmount});

  @override
  $WalletModelCopyWith<$Res>? get wallet;
  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingTransactions = null,
    Object? isWithdrawing = null,
    Object? errorMessage = null,
    Object? wallet = freezed,
    Object? transactions = null,
    Object? pagination = freezed,
    Object? showWithdrawSheet = null,
    Object? showLoadingScreen = null,
    Object? showSuccessScreen = null,
    Object? withdrawalAmount = freezed,
  }) {
    return _then(_$WalletStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTransactions: null == isLoadingTransactions
          ? _value.isLoadingTransactions
          : isLoadingTransactions // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithdrawing: null == isWithdrawing
          ? _value.isWithdrawing
          : isWithdrawing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
      showWithdrawSheet: null == showWithdrawSheet
          ? _value.showWithdrawSheet
          : showWithdrawSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoadingScreen: null == showLoadingScreen
          ? _value.showLoadingScreen
          : showLoadingScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showSuccessScreen: null == showSuccessScreen
          ? _value.showSuccessScreen
          : showSuccessScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawalAmount: freezed == withdrawalAmount
          ? _value.withdrawalAmount
          : withdrawalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl implements _WalletState {
  const _$WalletStateImpl(
      {this.isLoading = false,
      this.isLoadingTransactions = false,
      this.isWithdrawing = false,
      this.errorMessage = '',
      this.wallet,
      final List<TransactionModel> transactions = const [],
      this.pagination,
      this.showWithdrawSheet = false,
      this.showLoadingScreen = false,
      this.showSuccessScreen = false,
      this.withdrawalAmount})
      : _transactions = transactions;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingTransactions;
  @override
  @JsonKey()
  final bool isWithdrawing;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final WalletModel? wallet;
  final List<TransactionModel> _transactions;
  @override
  @JsonKey()
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final PaginationModel? pagination;
  @override
  @JsonKey()
  final bool showWithdrawSheet;
  @override
  @JsonKey()
  final bool showLoadingScreen;
  @override
  @JsonKey()
  final bool showSuccessScreen;
  @override
  final double? withdrawalAmount;

  @override
  String toString() {
    return 'WalletState(isLoading: $isLoading, isLoadingTransactions: $isLoadingTransactions, isWithdrawing: $isWithdrawing, errorMessage: $errorMessage, wallet: $wallet, transactions: $transactions, pagination: $pagination, showWithdrawSheet: $showWithdrawSheet, showLoadingScreen: $showLoadingScreen, showSuccessScreen: $showSuccessScreen, withdrawalAmount: $withdrawalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingTransactions, isLoadingTransactions) ||
                other.isLoadingTransactions == isLoadingTransactions) &&
            (identical(other.isWithdrawing, isWithdrawing) ||
                other.isWithdrawing == isWithdrawing) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.showWithdrawSheet, showWithdrawSheet) ||
                other.showWithdrawSheet == showWithdrawSheet) &&
            (identical(other.showLoadingScreen, showLoadingScreen) ||
                other.showLoadingScreen == showLoadingScreen) &&
            (identical(other.showSuccessScreen, showSuccessScreen) ||
                other.showSuccessScreen == showSuccessScreen) &&
            (identical(other.withdrawalAmount, withdrawalAmount) ||
                other.withdrawalAmount == withdrawalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingTransactions,
      isWithdrawing,
      errorMessage,
      wallet,
      const DeepCollectionEquality().hash(_transactions),
      pagination,
      showWithdrawSheet,
      showLoadingScreen,
      showSuccessScreen,
      withdrawalAmount);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {final bool isLoading,
      final bool isLoadingTransactions,
      final bool isWithdrawing,
      final String errorMessage,
      final WalletModel? wallet,
      final List<TransactionModel> transactions,
      final PaginationModel? pagination,
      final bool showWithdrawSheet,
      final bool showLoadingScreen,
      final bool showSuccessScreen,
      final double? withdrawalAmount}) = _$WalletStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoadingTransactions;
  @override
  bool get isWithdrawing;
  @override
  String get errorMessage;
  @override
  WalletModel? get wallet;
  @override
  List<TransactionModel> get transactions;
  @override
  PaginationModel? get pagination;
  @override
  bool get showWithdrawSheet;
  @override
  bool get showLoadingScreen;
  @override
  bool get showSuccessScreen;
  @override
  double? get withdrawalAmount;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
