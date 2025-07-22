import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';

abstract class ProfileRepository {
  Future<Either<String, UserProfileModel>> getProfileData();
}
