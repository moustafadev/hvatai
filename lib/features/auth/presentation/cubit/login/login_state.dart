part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool obscurePassword,
    @Default(false) bool isLoading,
  }) = _LoginState;
}
