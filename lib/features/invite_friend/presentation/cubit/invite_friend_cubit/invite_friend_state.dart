part of 'invite_friend_cubit.dart';

@freezed
class InviteFriendState with _$InviteFriendState {
  const factory InviteFriendState({
    @Default('') String inviteCode,
    @Default(0) int joinedUsersCount,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _InviteFriendState;
}
