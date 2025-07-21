import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
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
  final String name;
  final String lastName;
  final String email;
  final String password;
  final String gender;
  final String country;
  final bool ageConfirmation;
  final bool termsAgreement;

  RegisterParams({
    required this.name,
    required this.lastName,
    required this.email,
    required this.password,
    required this.gender,
    required this.country,
    required this.ageConfirmation,
    required this.termsAgreement,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "last_name": lastName,
      "email": email,
      "password": password,
      "gender": gender.toLowerCase(),
      "country": country,
      "password_confirmation": password,
      "age_confirmation": ageConfirmation,
      "terms_agreement": termsAgreement,
    };
  }
}
