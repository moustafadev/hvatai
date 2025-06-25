import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/datasources/remote/api_base.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';

class ApiServiceAuth extends ApiBase {
  Future<bool> login(LoginParams params) async {
    return executeAndHandleErrorServer<bool>(() async {
      final response = await post(ServerConfig.login, body: params.toJson());
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception;
      }
    });
  }
}
