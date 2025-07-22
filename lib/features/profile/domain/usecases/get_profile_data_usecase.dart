import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetProfileDataUsecase implements UseCase<UserProfileModel, Unit> {
  final ProfileRepository _profileRepository;

  GetProfileDataUsecase(this._profileRepository);

  @override
  Future<Either<String, UserProfileModel>> call(Unit params) {
    return _profileRepository.getProfileData();
  }
}
