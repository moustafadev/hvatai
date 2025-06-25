import 'package:hvatai/core/shared/datasources/local/cache_helper.dart';

class AppLocal extends CacheHelper {
  final String _token = 'token';
  final String _onboarding = 'onboarding';

  Future<bool> saveToken(String? token) async {
    if (token == null) return false;
    return await saveData(key: _token, value: token);
  }

  String getToken() {
    try {
      return getData(_token);
    } catch (e) {
      return "";
    }
  }

  Future<bool> saveOnboarding(bool? isOnboarding) async {
    if (isOnboarding == null) return false;
    return await saveData(key: _onboarding, value: isOnboarding);
  }

  bool getOnboarding() {
    try {
      return getData(_onboarding);
    } catch (e) {
      return false;
    }
  }

  Future clearCache() async {
    return await clearData();
  }
}
