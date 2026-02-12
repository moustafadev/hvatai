import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite_code_response.freezed.dart';
part 'invite_code_response.g.dart';

@freezed
class InviteCodeResponse with _$InviteCodeResponse {
  const factory InviteCodeResponse({
    String? message,
    InviteCodeData? data,
  }) = _InviteCodeResponse;

  factory InviteCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$InviteCodeResponseFromJson(json);
}

@freezed
class InviteCodeData with _$InviteCodeData {
  const factory InviteCodeData({
    @JsonKey(name: 'invite_code') required String inviteCode,
    @JsonKey(name: 'joined_users_count') @Default(0) int joinedUsersCount,
  }) = _InviteCodeData;

  factory InviteCodeData.fromJson(Map<String, dynamic> json) =>
      _$InviteCodeDataFromJson(json);
}
