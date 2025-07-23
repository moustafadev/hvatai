abstract class ServerConfig {
  static const String domen = "https://khvatai.ru/"; //prod
  static const baseUrl = "${domen}api/v1/";
  static String token = "";

  static const String login = "sign-in";
  static const String register = "sign-up";
  static const String checkOtp = "submit-otp";
  static const String logout = "sign-out";
  static const String interestsCategories = "interestsCategories";
  static const String loginWithGoogle = "auth/google";
  static const String deliveryAddress = "addresses";
  static const String profile = "profile";
}
