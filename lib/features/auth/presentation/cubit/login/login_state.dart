part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool obscurePassword,
    @Default(false) bool isLoading,
    @Default(false) bool successLogin,
    @Default('') String errorMessage,
  }) = _LoginState;
}

extension LoginStateMapper on LoginState {
  LoginParams toUserLoginData() {
    return LoginParams(
      email: email,
      password: password,
    );
  }
}
