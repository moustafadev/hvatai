part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default('') String errorMessage,
    required UserRegistrationData user,
    @Default(0.0) double passwordStrength,
    @Default('') String passwordStrengthText,
    @Default(false) bool obscurePassword,
    @Default(false) bool obscureNewPassword,
    @Default(false) bool obscureConfirmPassword,
  }) = _ChangePasswordState;
}
