import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/change_password/domain/repositories/change_password_repository.dart';

class ChangePasswordUsecase
    implements UseCase<UserRegistrationData, ChangePasswordParams> {
  final ChangePasswordRepository _changePasswordRepository;

  ChangePasswordUsecase(this._changePasswordRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(
      ChangePasswordParams params) {
    return _changePasswordRepository.changePassword(params);
  }
}

class ChangePasswordParams {
  final UserRegistrationData userRegistrationData;

  ChangePasswordParams({
    required this.userRegistrationData,
  });

  Map<String, dynamic> toJson() {
    return userRegistrationData.toJson();
  }
}
