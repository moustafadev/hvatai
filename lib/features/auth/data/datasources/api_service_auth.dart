import 'package:google_sign_in/google_sign_in.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/login_model/login_model.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';

class ApiServiceAuth extends ApiBase {
  Future<LoginModel> login(LoginParams params) async {
    return executeAndHandleErrorServer<LoginModel>(() async {
      final response = await post(ServerConfig.login, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return LoginModel.fromJson(response.json['data']);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> loginWithGoogle() async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;
      final idToken = googleAuth?.idToken;

      if (idToken == null) throw Exception("Google ID Token is null");

      final response = await post(
        ServerConfig.loginWithGoogle,
        body: {'id_token': idToken},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<LoginModel> checkOtp(CheckOtpParams params) async {
    return executeAndHandleErrorServer<LoginModel>(() async {
      final response = await post(ServerConfig.checkOtp, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return LoginModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> register(RegisterParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await post(ServerConfig.register, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> deliveryAddress(
      DeliveryAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response =
          await post(ServerConfig.deliveryAddress, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
