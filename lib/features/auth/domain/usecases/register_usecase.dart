import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase implements UseCase<UserRegistrationData, RegisterParams> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(RegisterParams params) {
    return _authRepository.register(params);
  }
}

class RegisterParams {
  final UserRegistrationData userRegistrationData;

  RegisterParams({required this.userRegistrationData});

  Map<String, dynamic> toJson() {
    return userRegistrationData.toJson();
  }
}
