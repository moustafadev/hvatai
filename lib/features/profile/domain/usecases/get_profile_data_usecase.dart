import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetProfileDataUsecase implements UseCase<UserRegistrationData, Unit> {
  final ProfileRepository _profileRepository;

  GetProfileDataUsecase(this._profileRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(Unit params) {
    return _profileRepository.getProfileData();
  }
}
