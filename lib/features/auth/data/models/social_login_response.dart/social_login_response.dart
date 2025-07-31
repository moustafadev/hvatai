import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';

part 'social_login_response.freezed.dart';
part 'social_login_response.g.dart';

@freezed
class SocialLoginResponse with _$SocialLoginResponse {
  const factory SocialLoginResponse({
    bool? success,
    String? message,
    SocialLoginData? data,
  }) = _SocialLoginResponse;

  factory SocialLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginResponseFromJson(json);
}

@freezed
class SocialLoginData with _$SocialLoginData {
  const factory SocialLoginData({
    UserRegistrationData? user,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'token_type') String? tokenType,
  }) = _SocialLoginData;

  factory SocialLoginData.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginDataFromJson(json);
}
