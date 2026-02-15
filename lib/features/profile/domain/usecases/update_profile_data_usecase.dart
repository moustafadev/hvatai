import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class UpdateProfileDataUsecase
    implements UseCase<UserRegistrationData, UpdateProfileParams> {
  final ProfileRepository _profileRepository;

  UpdateProfileDataUsecase(this._profileRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(
      UpdateProfileParams params) {
    return _profileRepository.updateProfileData(params);
  }
}

class UpdateProfileParams {
  final UserRegistrationData userRegistrationData;

  UpdateProfileParams({required this.userRegistrationData});
}
