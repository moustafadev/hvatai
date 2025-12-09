import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/auth_verify/auth_verify_response.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class CheckOtpUseCase implements UseCase<AuthVerifyResponse, CheckOtpParams> {
  final AuthRepository _authRepository;

  CheckOtpUseCase(this._authRepository);

  @override
  Future<Either<String, AuthVerifyResponse>> call(CheckOtpParams params) {
    return _authRepository.checkOtp(params);
  }
}

class CheckOtpParams {
  final String phone;
  final String code;

  CheckOtpParams({required this.phone, required this.code});

  Map<String, dynamic> toJson() {
    return {
      "phone": phone,
      "otp": code,
    };
  }
}
