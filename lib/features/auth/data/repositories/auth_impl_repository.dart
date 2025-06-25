import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/datasources/local/app_local.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/locator.dart';
import 'package:dartz/dartz.dart';

class AuthImplRepository implements AuthRepository {
  final ApiServiceAuth _apiServiceAuth;
  final AppLocal appLocal = locator<AppLocal>();

  AuthImplRepository(this._apiServiceAuth);

  @override
  Future<Either<String, bool>> login(LoginParams params) async {
    return executeAndHandleError<bool>(() async {
      final res = await _apiServiceAuth.login(params);
      return res;
    });
  }
}
