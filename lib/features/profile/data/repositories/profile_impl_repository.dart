import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/profile/data/datasources/api_service_profile.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class ProfileImplRepository implements ProfileRepository {
  final ApiServiceProfile _apiServiceProfile;

  ProfileImplRepository(this._apiServiceProfile);

  @override
  Future<Either<String, UserProfileModel>> getProfileData() async {
    return executeAndHandleError<UserProfileModel>(() async {
      final res = await _apiServiceProfile.getProfileData();
      return res;
    });
  }
}
