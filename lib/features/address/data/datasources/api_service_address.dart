import 'package:dartz/dartz.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';

class ApiServiceAddress extends ApiBase {
  Future<List<UserRegistrationData>> getDeliveryAddress() async {
    return executeAndHandleErrorServer<List<UserRegistrationData>>(() async {
      final response = await get(ServerConfig.deliveryAddress);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json;
        return data.map((e) => UserRegistrationData.fromJson(e)).toList();
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

  Future<Unit> deleteAddress(DeleteAddressParams params) async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response =
          await delete(ServerConfig.deliveryAddressId(params.addressId));
      if ([200, 201, 204].contains(response.statusCode)) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> editDeliveryAddress(
      EditDeliveryAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      if (params.userRegistrationData.id == null) {
        throw Exception("Address ID is null, cannot update");
      }
      final response = await put(
        ServerConfig.deliveryAddressId(params.userRegistrationData.id!),
        body: params.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
