import 'package:dartz/dartz.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/payment_method/data/model/card_model/card_model.dart';
import 'package:hvatai/features/payment_method/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/payment_method/domain/usecases/delete_card_usecase.dart';

class ApiServicePaymentMethod extends ApiBase {
  Future<List<CardModel>> getAllCards() async {
    return executeAndHandleErrorServer<List<CardModel>>(() async {
      final response = await get(ServerConfig.cards);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json;
        return data.map((e) => CardModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> deleteCard(DeleteCardParams params) async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response = await delete(ServerConfig.cardId(params.cardId));
      if ([200, 201, 204].contains(response.statusCode)) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<CardModel> addNewCard(AddNewCardParams params) async {
    return executeAndHandleErrorServer<CardModel>(() async {
      final response = await post(ServerConfig.cards, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return CardModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
