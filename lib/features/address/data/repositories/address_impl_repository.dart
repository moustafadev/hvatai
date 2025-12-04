import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/data/datasources/api_service_address.dart';
import 'package:hvatai/features/address/domain/repositories/address_repository.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';

class AddressImplRepository implements AddressRepository {
  final ApiServiceAddress _apiServiceAddress;

  AddressImplRepository(this._apiServiceAddress);

  @override
  Future<Either<String, List<UserRegistrationData>>>
      getDeliveryAddress() async {
    return executeAndHandleError<List<UserRegistrationData>>(() async {
      final res = await _apiServiceAddress.getDeliveryAddress();
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> addNewAddress(
      AddNewAddressParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAddress.addNewAddress(params);
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> deleteAddress(DeleteAddressParams params) async {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceAddress.deleteAddress(params);
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> editDeliveryAddress(
      EditDeliveryAddressParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAddress.editDeliveryAddress(params);
      return res;
    });
  }
}
