import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

class ApiServiceProfile extends ApiBase {
  Future<UserProfileModel> getProfileData() async {
    return executeAndHandleErrorServer<UserProfileModel>(() async {
      final response = await get(ServerConfig.profile);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserProfileModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserProfileModel> updateProfileData(UpdateProfileParams params) async {
    return executeAndHandleErrorServer<UserProfileModel>(() async {
      final response =
          await post(ServerConfig.updateProfile, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserProfileModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
