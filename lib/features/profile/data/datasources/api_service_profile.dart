import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

class ApiServiceProfile extends ApiBase {
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

  Future<List<UserRegistrationData>> getDeliveryAddress() async {
    return executeAndHandleErrorServer<List<UserRegistrationData>>(() async {
      final response = await get(ServerConfig.deliveryAddress);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json;

        return data
            .map(
                (e) => UserRegistrationData.fromJson(e as Map<String, dynamic>))
            .toList();
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

        return data
            .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> updateProfileData(
      UpdateProfileParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final body = params.toJson();
      body['phone'] = '3553224324';
      final response = await post(ServerConfig.profile, body: body);
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

  Future<UserRegistrationData> addNewAddress(AddNewAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response =
          await post(ServerConfig.deliveryAddress, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
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

  Future<UserRegistrationData> editDeliveryAddress(
      EditDeliveryAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final addressId = params.userRegistrationData.id;
      final endpoint = ServerConfig.editDeliveryAddress(addressId!);
      final response = await patch(endpoint, body: params.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
