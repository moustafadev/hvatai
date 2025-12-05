import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/payment_method/data/datasources/api_service_payment_method.dart';
import 'package:hvatai/features/payment_method/data/model/card_model/card_model.dart';
import 'package:hvatai/features/payment_method/domain/repositories/payment_method_repository.dart';
import 'package:hvatai/features/payment_method/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/payment_method/domain/usecases/delete_card_usecase.dart';

class PaymentMethodImplRepository implements PaymentMethodRepository {
  final ApiServicePaymentMethod _apiServicePaymentMethod;

  PaymentMethodImplRepository(this._apiServicePaymentMethod);

  @override
  Future<Either<String, List<CardModel>>> getAllCards() async {
    return executeAndHandleError<List<CardModel>>(() async {
      final res = await _apiServicePaymentMethod.getAllCards();
      return res;
    });
  }

  @override
  Future<Either<String, CardModel>> addNewCard(AddNewCardParams params) async {
    return executeAndHandleError<CardModel>(() async {
      final res = await _apiServicePaymentMethod.addNewCard(params);
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> deleteCard(DeleteCardParams params) async {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServicePaymentMethod.deleteCard(params);
      return res;
    });
  }
}
