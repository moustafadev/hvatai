import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/change_password/data/datasources/api_service_change_password.dart';
import 'package:hvatai/features/change_password/domain/repositories/change_password_repository.dart';
import 'package:hvatai/features/change_password/domain/usecases/change_password_usecase.dart';
import 'package:dartz/dartz.dart';

class ChangePasswordImplRepository implements ChangePasswordRepository {
  final ApiServiceChangePassword _apiServiceChangePassword;

  ChangePasswordImplRepository(
    this._apiServiceChangePassword,
  );

  @override
  Future<Either<String, UserRegistrationData>> changePassword(
      ChangePasswordParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceChangePassword.changePassword(params);
      return res;
    });
  }
}
