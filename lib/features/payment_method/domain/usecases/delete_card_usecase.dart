import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/payment_method/domain/repositories/payment_method_repository.dart';

class DeleteCardUsecase implements UseCase<Unit, DeleteCardParams> {
  final PaymentMethodRepository _paymentMethodRepository;

  DeleteCardUsecase(this._paymentMethodRepository);

  @override
  Future<Either<String, Unit>> call(DeleteCardParams params) {
    return _paymentMethodRepository.deleteCard(params);
  }
}

class DeleteCardParams {
  final int cardId;

  DeleteCardParams({required this.cardId});

  Map<String, dynamic> toJson() => {
        'id': cardId,
      };
}
