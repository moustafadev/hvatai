import 'package:dartz/dartz.dart';
import 'package:hvatai/features/payment_method/data/model/card_model/card_model.dart';
import 'package:hvatai/features/payment_method/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/payment_method/domain/usecases/delete_card_usecase.dart';

abstract class PaymentMethodRepository {
  Future<Either<String, List<CardModel>>> getAllCards();
  Future<Either<String, CardModel>> addNewCard(AddNewCardParams params);
  Future<Either<String, Unit>> deleteCard(DeleteCardParams params);
}
