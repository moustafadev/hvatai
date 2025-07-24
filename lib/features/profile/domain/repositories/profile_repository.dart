import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

abstract class ProfileRepository {
  Future<Either<String, UserRegistrationData>> getProfileData();
  Future<Either<String, UserRegistrationData>> updateProfileData(
      UpdateProfileParams params);

  Future<Either<String, List<UserRegistrationData>>> getDeliveryAddress();

  Future<Either<String, UserRegistrationData>> addNewAddress(
      AddNewAddressParams params);

  Future<Either<String, UserRegistrationData>> editDeliveryAddress(
      EditDeliveryAddressParams params);
}
