import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/data/models/login_model/login_model.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/data/models/social_login_response.dart/social_login_response.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';
import 'package:dartz/dartz.dart';

class AuthImplRepository implements AuthRepository {
  final ApiServiceAuth _apiServiceAuth;
  final AppLocal _appLocal;

  AuthImplRepository(this._apiServiceAuth, this._appLocal);

  @override
  Future<Either<String, LoginModel>> checkOtp(CheckOtpParams params) async {
    return executeAndHandleError<LoginModel>(() async {
      final res = await _apiServiceAuth.checkOtp(params);
      await _appLocal.saveIsSetup(res.isSetup);

      if (res.token != null) {
        await _appLocal.saveToken(res.token!);
      }
      return res;
    });
  }

  @override
  Future<Either<String, LoginModel>> login(LoginParams params) async {
    return executeAndHandleError<LoginModel>(() async {
      final res = await _apiServiceAuth.login(params);
      await _appLocal.saveIsSetup(res.isSetup);
      if (res.token != null) {
        await _appLocal.saveToken(res.token!);
        await _appLocal.saveUserId(res.userId!);
      }
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> register(
      RegisterParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceAuth.register(params);
      print("===================================");
      print(res.id);
      print("===================================");

      await _appLocal.saveUserId(res.id);

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
  Future<Either<String, SocialLoginResponse>> loginWithGoogle() async {
    return executeAndHandleError<SocialLoginResponse>(() async {
      final res = await _apiServiceAuth.loginWithGoogle();
      _appLocal.saveToken(res.data?.accessToken);
      await _appLocal.saveUserId(res.data?.user?.id);

      return res;
    });
  }

  @override
  Future<Either<String, SocialLoginResponse>> loginWithApple() async {
    return executeAndHandleError<SocialLoginResponse>(() async {
      final res = await _apiServiceAuth.loginWithApple();
      _appLocal.saveToken(res.data?.accessToken);
      await _appLocal.saveUserId(res.data?.user?.id);

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
