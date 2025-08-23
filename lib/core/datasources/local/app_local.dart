import 'package:hvatai/core/datasources/local/cache_helper.dart';

class AppLocal extends CacheHelper {
  final String _token = 'token';
  final String _currentUserId = 'userId';
  final String _onboarding = 'onboarding';
  final String _isSetup = 'is_setup';
  final String _user = 'user';
  Future<bool> saveToken(String? token) async {
    if (token == null) return false;
    return await saveData(key: _token, value: token);
  }

  Future<bool> saveIsSetup(bool? isSetup) async {
    if (isSetup == null) return false;
    return await saveData(key: _isSetup, value: isSetup);
  }

  bool getIsSetup() {
    try {
      return getData(_isSetup);
    } catch (e) {
      return false;
    }
  }

  Future<bool> removeIsSetup() async {
    return await removeData(key: _isSetup);
  }

  int getUserId() {
    try {
      return getData(_currentUserId);
    } catch (e) {
      return 0;
    }
  }

   Future<bool> saveUserId(int? userId) async {
    if (userId == null) return false;
    return await saveData(key: _currentUserId, value: userId);
  }

  Future<bool> removeUserId() async {
    return await removeData(key: _currentUserId);
  }

  String? getToken() {
    try {
      return getData(_token);
    } catch (e) {
      return null;
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

  Future<bool> removeToken() async {
    return await removeData(key: _token);
  }

  Future clearCache() async {
    return await clearData();
  }
}
