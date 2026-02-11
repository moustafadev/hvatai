import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:hvatai/features/wallet/domain/repositories/wallet_repository.dart';

class GetWalletsUsecase implements UseCase<WalletsListResponse, Unit> {
  final WalletRepository _walletRepository;

  GetWalletsUsecase(this._walletRepository);

  @override
  Future<Either<String, WalletsListResponse>> call(Unit params) {
    return _walletRepository.getWallets();
  }
}
