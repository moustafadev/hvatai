import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

abstract class ProfileRepository {
  Future<Either<String, UserProfileModel>> getProfileData();
  Future<Either<String, UserProfileModel>> updateProfileData(
      UpdateProfileParams params);
}
