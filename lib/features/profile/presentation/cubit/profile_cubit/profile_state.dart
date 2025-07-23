part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default('') String passwordError,
    String? emailError,
    @Default([]) List<Map<String, dynamic>> settingsOptions,
    @Default([]) List<Map<String, dynamic>> helpAndContact,
    @Default([]) List<Map<String, dynamic>> changeInfoProfile,
    @Default([]) List<Map<String, dynamic>> streamerOptions,
    @Default('') String errorMessage,
    required UserRegistrationData userProfileModel,
  }) = _ProfileState;
}
