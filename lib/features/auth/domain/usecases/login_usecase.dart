import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements UseCase<bool, LoginParams> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<String, bool>> call(LoginParams params) {
    return _authRepository.login(params);
  }
}

class LoginParams {
  LoginParams();

  Map<String, dynamic> toJson() {
    return {};
  }
}
