part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String phone,
    @Default(false) bool isLoading,
    @Default(false) bool successLogin,
    @Default('') String errorMessage,
  }) = _LoginState;
}
