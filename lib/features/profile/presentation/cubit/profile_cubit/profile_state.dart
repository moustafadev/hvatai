part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('User') String firstName,
    String? profileImageUrl,
    @Default(false) bool isLoading,
    @Default('') String gender,
    @Default('') String country,
    @Default(true) bool streamsFromSubscriptions,
    @Default(false) bool streamsISaved,
    @Default(true) bool recommendedStreams,
    @Default(true) bool newSubscriber,
    @Default(true) bool bookmarksFromStreams,
    @Default(false) bool isAllSelected,
    @Default('') String password,
    @Default('') String passwordError,
    @Default('') String confirmPassword,
    String? emailError,
    @Default([]) List<Map<String, dynamic>> settingsOptions,
    @Default([]) List<Map<String, dynamic>> helpAndContact,
    @Default([]) List<Map<String, dynamic>> changeInfoProfile,
    @Default([]) List<Map<String, dynamic>> streamerOptions,
    @Default(false) bool obscurePassword,
    @Default(0.0) double passwordStrength,
    @Default('') String passwordStrengthText,
    required int uid,
    required String channelId,
    String? type,
  }) = _ProfileState;
}
