part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscurePassword,
    @Default(false) bool isLoading,
    @Default(false) bool successLogin,
    @Default('') String errorMessage,
  }) = _LoginState;
}
