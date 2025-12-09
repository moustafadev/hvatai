import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/otp_request/otp_request.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class SendOtpUseCase implements UseCase<OtpRequestResponse, SendOtpParams> {
  final AuthRepository _authRepository;

  SendOtpUseCase(this._authRepository);

  @override
  Future<Either<String, OtpRequestResponse>> call(SendOtpParams params) {
    return _authRepository.requestOtp(params);
  }
}

class SendOtpParams {
  final String phone;

  SendOtpParams({required this.phone});

  Map<String, dynamic> toJson() => {'phone': phone};
}
