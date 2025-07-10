part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('User') String firstName,
    String? profileImageUrl,
    @Default(false) bool isLoading,
    @Default(true) bool streamsFromSubscriptions,
    @Default(false) bool streamsISaved,
    @Default(true) bool recommendedStreams,
    @Default(true) bool newSubscriber,
    @Default(true) bool bookmarksFromStreams,
    @Default(false) bool isAllSelected,
    @Default([]) List<Map<String, dynamic>> settingsOptions,
    @Default([]) List<Map<String, dynamic>> helpAndContact,
    required int uid,
    required String channelId,
    String? type,
  }) = _ProfileState;
}
