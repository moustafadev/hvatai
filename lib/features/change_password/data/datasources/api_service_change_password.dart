import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/change_password/domain/usecases/change_password_usecase.dart';

class ApiServiceChangePassword extends ApiBase {
  Future<UserRegistrationData> changePassword(
      ChangePasswordParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response =
          await post(ServerConfig.changePassword, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
