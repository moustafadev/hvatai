part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    @Default('') String code,
    @Default(false) bool isVerifying,
    @Default(false) bool success,
    @Default('') String errorMessage,
    required UserRegistrationData user,
  }) = _OtpState;
}
