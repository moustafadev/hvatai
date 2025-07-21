import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginWithGoogleUseCase implements UseCase<UserRegistrationData, Unit> {
  final AuthRepository _authRepository;

  LoginWithGoogleUseCase(this._authRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(Unit params) {
    return _authRepository.loginWithGoogle();
  }
}
