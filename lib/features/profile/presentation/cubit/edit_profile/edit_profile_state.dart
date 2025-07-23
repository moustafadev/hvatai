part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default('') String errorMessage,
    required UserRegistrationData user,
    @Default(true) bool streamsFromSubscriptions,
    @Default(false) bool streamsISaved,
    @Default(false) bool obscurePassword,
    @Default(0.0) double passwordStrength,
    @Default('') String passwordStrengthText,
    @Default(true) bool recommendedStreams,
    @Default(true) bool newSubscriber,
    @Default(true) bool bookmarksFromStreams,
    @Default(false) bool isAllSelected,
    String? type,
    @Default([]) List<Map<String, dynamic>> changeInfoProfile,
  }) = _EditProfileState;
}

extension UpdateProfileStateMapper on EditProfileState {
  UpdateProfileParams toUpdateProfileParams() {
    return UpdateProfileParams(
      userRegistrationData: user,
    );
  }
}
