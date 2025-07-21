import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:hvatai/blocs_observer.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/datasources/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../locator.dart';

class InitApp {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.value([
      await setupLocator(),
      await EasyLocalization.ensureInitialized(),
      await locator<CacheHelper>().init(),
    ]);
    HttpOverrides.global = MyHttpOverrides();
    Bloc.observer = BlocsObserver();
  }
}

//best way for ssl certification problem on all http requests
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    try {
      return super.createHttpClient(context)
        ..badCertificateCallback = (
          X509Certificate cert,
          String host,
          int port,
        ) {
          return true;
        };
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}
