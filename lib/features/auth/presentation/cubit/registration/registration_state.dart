// registration_state.dart
part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isAbove18,
    @Default(false) bool agreedToTerms,
    String? gender,
    String? country,
    @Default(false) bool obscurePassword,
    @Default(0.0) double passwordStrength,
    @Default('') String passwordStrengthText,
    String? emailError,
  }) = _RegistrationState;
}

extension RegistrationStateMapper on RegistrationState {
  UserRegistrationData toUserRegistrationData() {
    return UserRegistrationData(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      gender: gender,
      country: country,
      isSignUpWithGoogle: false, // or true if you're tracking it
    );
  }
}
