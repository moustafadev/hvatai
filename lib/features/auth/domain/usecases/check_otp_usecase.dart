import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class CheckOtpUseCase implements UseCase<UserRegistrationData, CheckOtpParams> {
  final AuthRepository _authRepository;

  CheckOtpUseCase(this._authRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(CheckOtpParams params) {
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
