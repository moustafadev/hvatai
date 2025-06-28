abstract class ServerConfig {
  static const String domen = "https://api.super-app.shop:8066/api"; //prod
  // static const String domen = ""; //test
  static const baseUrl = "${domen}api/";
  static String token = "";
  static String login = "${baseUrl}login";
  static String interestsCategories = "${baseUrl}interestsCategories";
}
