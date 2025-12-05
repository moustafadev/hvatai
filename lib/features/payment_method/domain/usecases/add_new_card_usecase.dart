import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/payment_method/data/model/card_model/card_model.dart';
import 'package:hvatai/features/payment_method/domain/repositories/payment_method_repository.dart';

class AddNewCardUsecase implements UseCase<CardModel, AddNewCardParams> {
  final PaymentMethodRepository _paymentMethodRepository;

  AddNewCardUsecase(this._paymentMethodRepository);

  @override
  Future<Either<String, CardModel>> call(AddNewCardParams params) {
    return _paymentMethodRepository.addNewCard(params);
  }
}

class AddNewCardParams {
  final CardModel cardModel;

  AddNewCardParams({
    required this.cardModel,
  });

  Map<String, dynamic> toJson() {
    return cardModel.toJson();
  }
}
