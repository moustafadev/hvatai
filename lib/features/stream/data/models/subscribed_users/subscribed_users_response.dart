import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribed_users_response.freezed.dart';
part 'subscribed_users_response.g.dart';

@freezed
class SubscribedUsersResponse with _$SubscribedUsersResponse {
  const factory SubscribedUsersResponse({
    String? message,
    @Default(<SubscribedUser>[]) List<SubscribedUser> data,
  }) = _SubscribedUsersResponse;

  factory SubscribedUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscribedUsersResponseFromJson(json);
}

@freezed
class SubscribedUser with _$SubscribedUser {
  const factory SubscribedUser({
    int? id,
    String? name,
    String? email,
    String? image,
  }) = _SubscribedUser;

  factory SubscribedUser.fromJson(Map<String, dynamic> json) =>
      _$SubscribedUserFromJson(json);
}

