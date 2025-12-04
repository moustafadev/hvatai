import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_card_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';

class ApiServiceProfile extends ApiBase {
  Future<ProductModel> addNewProduct(FormData formData) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      // print the form data

      final response = await post(
        ServerConfig.products,
        body: formData,
        contentType: 'multipart/form-data',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.json);
      }
      throw Exception;
    });
  }

  Future<UserRegistrationData> getProfileData() async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await get(ServerConfig.profile);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = Map<String, dynamic>.from(response.json['data']);
        data['terms_agreement'] = (data['terms_agreement'] == 1);
        data['age_confirmation'] = (data['age_confirmation'] == 1);
        return UserRegistrationData.fromJson(data);
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> deleteAccount() async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response = await delete(ServerConfig.deleteAccount);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> signOut() async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response = await get(ServerConfig.signOut);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }


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

  Future<List<ProductModel>> getMyProducts({
    required List<int> categoryIds,
  }) async {
    return executeAndHandleErrorServer<List<ProductModel>>(() async {
      final queryParameters = categoryIds.isNotEmpty
          ? {
              'category_ids[]': categoryIds,
            }
          : null;
      final response =
          await get(ServerConfig.products, queryParameters: queryParameters);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => ProductModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<List<MainCategoryModel>> getProductCategory() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.categories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> updateProfileType() async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await post(ServerConfig.upgrade);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json['data']);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> updateProfileData(FormData formData) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await post(
        ServerConfig.profile,
        body: formData,
        contentType: 'multipart/form-data',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json['data']);
      }
      throw Exception;
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

  Future<StreamResponseModel> createStream(CreateStreamModel model) async {
    return executeAndHandleErrorServer<StreamResponseModel>(() async {
      final response = await post(ServerConfig.streams, body: model.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return StreamResponseModel.fromJson(response.json);
      } else {
        throw Exception('Failed to create stream: ${response.statusCode}');
      }
    });
  }

  Future<ProductModel> updateProduct({
    required int productId,
    required FormData formData,
  }) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final response = await post(
        ServerConfig.updateProduct(productId),
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.json);
      }
      throw Exception;
    });
  }
}
