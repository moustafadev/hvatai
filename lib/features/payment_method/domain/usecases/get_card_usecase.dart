import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/payment_method/data/model/card_model/card_model.dart';
import 'package:hvatai/features/payment_method/domain/repositories/payment_method_repository.dart';

class GetCardUsecase implements UseCase<List<CardModel>, Unit> {
  final PaymentMethodRepository _paymentMethodRepository;

  GetCardUsecase(this._paymentMethodRepository);

  @override
  Future<Either<String, List<CardModel>>> call(Unit params) {
    return _paymentMethodRepository.getAllCards();
  }
}
