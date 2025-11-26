part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingTransactions,
    @Default(false) bool isWithdrawing,
    @Default('') String errorMessage,
    WalletModel? wallet,
    @Default([]) List<TransactionModel> transactions,
    PaginationModel? pagination,
    @Default(false) bool showWithdrawSheet,
    @Default(false) bool showLoadingScreen,
    @Default(false) bool showSuccessScreen,
    double? withdrawalAmount,
  }) = _WalletState;
}

