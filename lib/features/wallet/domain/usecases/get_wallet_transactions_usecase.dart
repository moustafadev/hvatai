import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/wallet/data/models/transaction_model/transaction_model.dart';
import 'package:hvatai/features/wallet/domain/repositories/wallet_repository.dart';

class GetWalletTransactionsUsecase
    implements UseCase<TransactionResponse, GetWalletTransactionsParams> {
  final WalletRepository _walletRepository;

  GetWalletTransactionsUsecase(this._walletRepository);

  @override
  Future<Either<String, TransactionResponse>> call(
      GetWalletTransactionsParams params) {
    return _walletRepository.getWalletTransactions(params.walletId);
  }
}

class GetWalletTransactionsParams {
  final int walletId;
  GetWalletTransactionsParams({required this.walletId});
}

