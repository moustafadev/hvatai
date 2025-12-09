import 'package:dartz/dartz.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/send_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/update_name_usecase.dart';
import 'package:hvatai/features/auth/data/models/otp_request/otp_request.dart';
import 'package:hvatai/features/auth/data/models/auth_verify/auth_verify_response.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';

class ApiServiceAuth extends ApiBase {
  Future<OtpRequestResponse> requestOtp(SendOtpParams params) async {
    return executeAndHandleErrorServer<OtpRequestResponse>(() async {
      final response = await post(ServerConfig.auth, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return OtpRequestResponse.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<AuthVerifyResponse> checkOtp(CheckOtpParams params) async {
    return executeAndHandleErrorServer<AuthVerifyResponse>(() async {
      final response =
          await post(ServerConfig.verifyAuthOtp, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return AuthVerifyResponse.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> updateName(UpdateNameParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await post(ServerConfig.profile, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<CategoryModel> getCategories() async {
    return executeAndHandleErrorServer<CategoryModel>(() async {
      final response = await get(ServerConfig.categories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return CategoryModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<CategoryModel> getFavCategories() async {
    return executeAndHandleErrorServer<CategoryModel>(() async {
      final response = await get(ServerConfig.favFilter);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return CategoryModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> addFavCategory(AddFavCategoryParams params) async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response =
          await post(ServerConfig.favCategory, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }
}
