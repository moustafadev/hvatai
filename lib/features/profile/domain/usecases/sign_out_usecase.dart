import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class SignOutUsecase implements UseCase<Unit, Unit> {
  final ProfileRepository _profileRepository;

  SignOutUsecase(this._profileRepository);

  @override
  Future<Either<String, Unit>> call(Unit params) {
    return _profileRepository.signOut();
  }
}
