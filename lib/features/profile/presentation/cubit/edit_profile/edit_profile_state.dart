part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(false) bool isLoading,
    @Default('') String gender,
    @Default('') String country,
    @Default('') String email,
    @Default(false) bool sms,
    @Default(false) bool push,
    @Default(false) bool sendEmail,
    @Default('') String fcmToken,
    @Default('') String phone,
    @Default(false) bool success,
    @Default('') String errorMessage,
    required UserProfileModel user,
    File? image,
    File? imageBusiness,
    @Default([]) List<Map<String, dynamic>> changeInfoProfile,
  }) = _EditProfileState;
}

extension UpdateProfileStateMapper on EditProfileState {
  UpdateProfileParams toUpdateProfileParams() {
    return UpdateProfileParams(
      name: firstName.trim(),
      lastName: lastName.trim(),
      gender: gender,
      country: country.trim(),
      email: email.trim(),
      phone: phone,
      sms: sms,
      push: push,
      sendEmail: sendEmail,
      fcmToken: fcmToken,
    );
  }
}
