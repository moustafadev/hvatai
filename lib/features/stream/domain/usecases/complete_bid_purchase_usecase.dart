import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/address/data/models/address_model/address_model.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class CompleteBidPurchaseUsecase
    implements UseCase<bool, CompleteBidPurchaseParams> {
  final StreamRepository _repo;
  CompleteBidPurchaseUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(CompleteBidPurchaseParams params) {
    return _repo.completeBidPurchase(
      bidPurchaseId: params.bidPurchaseId,
      paymentMethod: params.paymentMethod,
      walletId: params.walletId,
      shippingAddress: params.shippingAddress,
    );
  }
}

class CompleteBidPurchaseParams {
  final int bidPurchaseId;
  final String paymentMethod;
  final int? walletId;
  final AddressModel shippingAddress;

  CompleteBidPurchaseParams({
    required this.bidPurchaseId,
    required this.paymentMethod,
    this.walletId,
    required this.shippingAddress,
  });
}
