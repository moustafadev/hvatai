part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    @Default('') String code,
    String? error,
  }) = _VerificationState;
}
