import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/data/models/otp_request/otp_request.dart';
import 'package:hvatai/features/auth/data/models/auth_verify/auth_verify_response.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/send_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/update_name_usecase.dart';
import 'package:dartz/dartz.dart';

class AuthImplRepository implements AuthRepository {
  final ApiServiceAuth _apiServiceAuth;
  final AppLocal _appLocal;

  AuthImplRepository(this._apiServiceAuth, this._appLocal);

  @override
  Future<Either<String, OtpRequestResponse>> requestOtp(
      SendOtpParams params) async {
    return executeAndHandleError<OtpRequestResponse>(() async {
      final res = await _apiServiceAuth.requestOtp(params);
      await _appLocal.saveUserId(res.userId);
      return res;
    });
  }

  @override
  Future<Either<String, AuthVerifyResponse>> checkOtp(
      CheckOtpParams params) async {
    return executeAndHandleError<AuthVerifyResponse>(() async {
      final res = await _apiServiceAuth.checkOtp(params);
      if (res.token.isNotEmpty) {
        await _appLocal.saveToken(res.token);
        await _appLocal.saveUserId(res.userId);
      }
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> updateName(
      UpdateNameParams params) {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.updateName(params);
      return res;
    });
  }

  @override
  Future<Either<String, CategoryModel>> getCategories() {
    return executeAndHandleError<CategoryModel>(() async {
      final res = await _apiServiceAuth.getCategories();
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> addFavCategory(AddFavCategoryParams params) {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceAuth.addFavCategory(params);
      return res;
    });
  }

  @override
  Future<Either<String, CategoryModel>> getFavCategories() {
    return executeAndHandleError<CategoryModel>(() async {
      final res = await _apiServiceAuth.getFavCategories();
      return res;
    });
  }
}
