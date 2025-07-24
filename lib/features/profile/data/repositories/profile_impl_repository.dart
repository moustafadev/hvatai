import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/datasources/api_service_profile.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

class ProfileImplRepository implements ProfileRepository {
  final ApiServiceProfile _apiServiceProfile;

  ProfileImplRepository(this._apiServiceProfile);

  @override
  Future<Either<String, UserRegistrationData>> getProfileData() async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.getProfileData();
      return res;
    });
  }

  @override
  Future<Either<String, List<UserRegistrationData>>>
      getDeliveryAddress() async {
    return executeAndHandleError<List<UserRegistrationData>>(() async {
      final res = await _apiServiceProfile.getDeliveryAddress();
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> updateProfileData(
      UpdateProfileParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.updateProfileData(params);
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> addNewAddress(
      AddNewAddressParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.addNewAddress(params);
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> editDeliveryAddress(
      EditDeliveryAddressParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.editDeliveryAddress(params);
      return res;
    });
  }
}
