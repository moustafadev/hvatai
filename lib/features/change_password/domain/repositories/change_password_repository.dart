import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/change_password/domain/usecases/change_password_usecase.dart';

abstract class ChangePasswordRepository {
  Future<Either<String, UserRegistrationData>> changePassword(
      ChangePasswordParams params);
}
