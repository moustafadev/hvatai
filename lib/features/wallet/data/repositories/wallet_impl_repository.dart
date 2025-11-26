import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/wallet/data/datasources/api_service_wallet.dart';
import 'package:hvatai/features/wallet/data/models/transaction_model/transaction_model.dart';
import 'package:hvatai/features/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:hvatai/features/wallet/domain/repositories/wallet_repository.dart';

class WalletImplRepository implements WalletRepository {
  final ApiServiceWallet _apiServiceWallet;

  WalletImplRepository(this._apiServiceWallet);

  @override
  Future<Either<String, WalletResponse>> getWallet(int walletId) {
    return executeAndHandleError<WalletResponse>(() async {
      final res = await _apiServiceWallet.getWallet(walletId);
      return res;
    });
  }

  @override
  Future<Either<String, TransactionResponse>> getWalletTransactions(int walletId) {
    return executeAndHandleError<TransactionResponse>(() async {
      final res = await _apiServiceWallet.getWalletTransactions(walletId);
      return res;
    });
  }

  @override
  Future<Either<String, WithdrawResponse>> withdrawToCard({
    required int walletId,
    required double amount,
  }) {
    return executeAndHandleError<WithdrawResponse>(() async {
      final res = await _apiServiceWallet.withdrawToCard(
        walletId: walletId,
        amount: amount,
      );
      return res;
    });
  }
}

