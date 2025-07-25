import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/login_model/login_model.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class CheckOtpUseCase implements UseCase<LoginModel, CheckOtpParams> {
  final AuthRepository _authRepository;

  CheckOtpUseCase(this._authRepository);

  @override
  Future<Either<String, LoginModel>> call(CheckOtpParams params) {
    return _authRepository.checkOtp(params);
  }
}

class CheckOtpParams {
  final String email;
  final String code;

  CheckOtpParams({required this.email, required this.code});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'otp': code,
    };
  }
}
