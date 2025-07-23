// registration_state.dart

part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(false) bool obscurePassword,
    @Default(0.0) double passwordStrength,
    @Default('') String passwordStrengthText,
    String? emailError,
    @Default(false) bool isRegisterLoading,
    @Default(false) bool successRegister,
    @Default('') String errorMessage,
    required UserRegistrationData user,
  }) = _RegistrationState;
}

extension RegistrationStateMapper on RegistrationState {
  toUserRegistrationData() {
    return RegisterParams(
      userRegistrationData: user,
    );
  }
}
