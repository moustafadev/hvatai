import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:hvatai/features/wallet/domain/repositories/wallet_repository.dart';

class GetWalletUsecase implements UseCase<WalletResponse, GetWalletParams> {
  final WalletRepository _walletRepository;

  GetWalletUsecase(this._walletRepository);

  @override
  Future<Either<String, WalletResponse>> call(GetWalletParams params) {
    return _walletRepository.getWallet(params.walletId);
  }
}

class GetWalletParams {
  final int walletId;
  GetWalletParams({required this.walletId});
}

