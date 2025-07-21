import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';
import 'package:hvatai/locator.dart';
import 'package:dartz/dartz.dart';

class AuthImplRepository implements AuthRepository {
  final ApiServiceAuth _apiServiceAuth;
  final AppLocal appLocal = locator<AppLocal>();

  AuthImplRepository(this._apiServiceAuth);

  @override
  Future<Either<String, UserRegistrationData>> login(LoginParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.login(params);
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> checkOtp(
      CheckOtpParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.checkOtp(params);

      if (res.token != null) {
        appLocal.saveToken(res.token!);
        print('Token saved: ${res.token}');
      }

      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> register(
      RegisterParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.register(params);
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> deliveryAddress(
      DeliveryAddressParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.deliveryAddress(params);
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> loginWithGoogle() {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.loginWithGoogle();
      return res;
    });
  }
}
