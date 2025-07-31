import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/social_login_response.dart/social_login_response.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginWithGoogleUseCase implements UseCase<SocialLoginResponse, Unit> {
  final AuthRepository _authRepository;

  LoginWithGoogleUseCase(this._authRepository);

  @override
  Future<Either<String, SocialLoginResponse>> call(Unit params) {
    return _authRepository.loginWithGoogle();
  }
}
