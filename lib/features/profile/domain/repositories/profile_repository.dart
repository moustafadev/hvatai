import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/delivery_model/delivery_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

abstract class ProfileRepository {
  Future<Either<String, UserRegistrationData>> getProfileData();
  Future<Either<String, UserRegistrationData>> updateProfileData(
      UpdateProfileParams params);

  Future<Either<String, List<DeliveryModel>>> getDeliveryAddress();

  Future<Either<String, DeliveryModel>> addNewAddress(
      AddNewAddressParams params);
}
