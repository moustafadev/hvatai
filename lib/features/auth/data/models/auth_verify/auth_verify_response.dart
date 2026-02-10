// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_verify_response.freezed.dart';
part 'auth_verify_response.g.dart';

@freezed
class VerifyAuthUser with _$VerifyAuthUser {
  const factory VerifyAuthUser({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String phone,
    String? image,
  }) = _VerifyAuthUser;

  factory VerifyAuthUser.fromJson(Map<String, dynamic> json) =>
      _$VerifyAuthUserFromJson(json);
}

@freezed
class AuthVerifyResponse with _$AuthVerifyResponse {
  const factory AuthVerifyResponse({
    @Default('') String message,
    @Default('') String token,
    @JsonKey(name: 'user') VerifyAuthUser? user,
    @JsonKey(name: 'user_id') @Default(0) int userId,
    @JsonKey(name: 'is_setup') @Default(false) bool isSetup,
  }) = _AuthVerifyResponse;

  factory AuthVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthVerifyResponseFromJson(json);
}
