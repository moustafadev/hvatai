import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/wallet/data/models/transaction_model/transaction_model.dart';
import 'package:hvatai/features/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:hvatai/features/wallet/domain/usecases/get_wallet_transactions_usecase.dart';
import 'package:hvatai/features/wallet/domain/usecases/get_wallet_usecase.dart';
import 'package:hvatai/features/wallet/domain/usecases/withdraw_to_card_usecase.dart';

part 'wallet_cubit.freezed.dart';
part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit(
    this._getWalletUsecase,
    this._getWalletTransactionsUsecase,
    this._withdrawToCardUsecase,
  ) : super(const WalletState());

  final GetWalletUsecase _getWalletUsecase;
  final GetWalletTransactionsUsecase _getWalletTransactionsUsecase;
  final WithdrawToCardUsecase _withdrawToCardUsecase;

  Future<void> loadWallet(int walletId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await _getWalletUsecase(GetWalletParams(walletId: walletId));
    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure,
      )),
      (response) => emit(state.copyWith(
        isLoading: false,
        wallet: response.data,
        errorMessage: '',
      )),
    );
  }

  Future<void> loadTransactions(int walletId) async {
    emit(state.copyWith(isLoadingTransactions: true, errorMessage: ''));
    final result = await _getWalletTransactionsUsecase(
      GetWalletTransactionsParams(walletId: walletId),
    );
    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingTransactions: false,
        errorMessage: failure,
      )),
      (response) => emit(state.copyWith(
        isLoadingTransactions: false,
        transactions: response.data?.transactions ?? [],
        pagination: response.data?.pagination,
        errorMessage: '',
      )),
    );
  }

  void showWithdrawSheet() {
    emit(state.copyWith(showWithdrawSheet: true));
  }

  void hideWithdrawSheet() {
    emit(state.copyWith(showWithdrawSheet: false));
  }

  Future<void> withdrawToCard({
    required int walletId,
    required double amount,
    required BuildContext context,
  }) async {
    emit(state.copyWith(
      isWithdrawing: true,
      showWithdrawSheet: false,
      showLoadingScreen: true,
      errorMessage: '',
      withdrawalAmount: amount,
    ));

    final result = await _withdrawToCardUsecase(
      WithdrawToCardParams(walletId: walletId, amount: amount),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isWithdrawing: false,
          showLoadingScreen: false,
          errorMessage: failure,
          withdrawalAmount: null,
        ));
        showFloatingMessageError(failure);
      },
      (response) {
        emit(state.copyWith(
          isWithdrawing: false,
          showLoadingScreen: false,
          showSuccessScreen: true,
        ));
        // Reload wallet and transactions after successful withdrawal
        loadWallet(walletId);
        loadTransactions(walletId);
      },
    );
  }

  void hideLoadingScreen() {
    emit(state.copyWith(showLoadingScreen: false));
  }

  void hideSuccessScreen() {
    emit(state.copyWith(showSuccessScreen: false));
  }
}

