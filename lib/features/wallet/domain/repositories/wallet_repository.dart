import 'package:dartz/dartz.dart';
import 'package:hvatai/features/wallet/data/models/transaction_model/transaction_model.dart';
import 'package:hvatai/features/wallet/data/models/wallet_model/wallet_model.dart';

abstract class WalletRepository {
  Future<Either<String, WalletResponse>> getWallet(int walletId);
  Future<Either<String, TransactionResponse>> getWalletTransactions(int walletId);
  Future<Either<String, WithdrawResponse>> withdrawToCard({
    required int walletId,
    required double amount,
  });
}

