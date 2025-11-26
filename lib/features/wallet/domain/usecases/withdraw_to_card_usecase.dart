import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/wallet/data/models/transaction_model/transaction_model.dart';
import 'package:hvatai/features/wallet/domain/repositories/wallet_repository.dart';

class WithdrawToCardUsecase
    implements UseCase<WithdrawResponse, WithdrawToCardParams> {
  final WalletRepository _walletRepository;

  WithdrawToCardUsecase(this._walletRepository);

  @override
  Future<Either<String, WithdrawResponse>> call(WithdrawToCardParams params) {
    return _walletRepository.withdrawToCard(
      walletId: params.walletId,
      amount: params.amount,
    );
  }
}

class WithdrawToCardParams {
  final int walletId;
  final double amount;
  WithdrawToCardParams({required this.walletId, required this.amount});
}

