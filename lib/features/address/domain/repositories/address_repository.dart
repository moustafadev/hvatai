import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';

abstract class AddressRepository {
  Future<Either<String, List<UserRegistrationData>>> getDeliveryAddress();
  Future<Either<String, UserRegistrationData>> addNewAddress(
      AddNewAddressParams params);
  Future<Either<String, Unit>> deleteAddress(DeleteAddressParams params);
  Future<Either<String, UserRegistrationData>> editDeliveryAddress(
      EditDeliveryAddressParams params);
}
