import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hvatai/blocs_observer.dart';
import 'package:hvatai/core/datasources/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/firebase_options.dart';
import 'package:media_kit/media_kit.dart';                      // Provides [Player], [Media], [Playlist] etc.

import '../locator.dart';

class InitApp {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

    await Future.value([
      await setupLocator(),
      await EasyLocalization.ensureInitialized(),
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
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
