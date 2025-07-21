part of 'social_login_cubit.dart';

@freezed
class SocialLoginState with _$SocialLoginState {
  const factory SocialLoginState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool successLogin,
  }) = _SocialLoginState;
}
