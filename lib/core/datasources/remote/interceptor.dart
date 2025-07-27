// interceptor.dart

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/go_router.dart';

class AuthInterceptor extends QueuedInterceptor {
  final appLocal = locator<AppLocal>();
  bool _isHandling401 = false;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await appLocal.getToken();

    print('Token in interceptor: $token');

    if (token != null && token.isNotEmpty && token != 'null') {
      options.headers['Authorization'] = 'Bearer $token';
      print('Authorization header added: Bearer $token');
    } else {
      options.headers.remove('Authorization');
      print('No valid token found, Authorization header removed');
    }

    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    BuildContext? context = navigatorKey.currentContext;

    if (err.response?.statusCode == 401 && context != null) {
      if (_isHandling401) {
        handler.next(err);
        return;
      }
      _isHandling401 = true;

      try {
        appLocal.saveToken('');
        ServerConfig.token = '';
        context.go(AppRoutes.socialLogin);
      } finally {
        _isHandling401 = false;
      }
    }

    handler.next(err);
  }
}
