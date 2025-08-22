import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/social_login_response.dart/social_login_response.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginWithAppleUsecase implements UseCase<SocialLoginResponse, Unit> {
  final AuthRepository _authRepository;

  LoginWithAppleUsecase(this._authRepository);

  @override
  Future<Either<String, SocialLoginResponse>> call(Unit params) {
    return _authRepository.loginWithApple();
  }
}
