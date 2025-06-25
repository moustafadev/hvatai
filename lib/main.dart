import 'package:easy_localization/easy_localization.dart';
import 'package:hvatai/app.dart';
import 'package:hvatai/core/init_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  await InitApp.initialize();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ru'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      child: DevicePreview(
        enabled: kDebugMode,
        builder: (context) => const Hvatai(),
      ),
    ),
  );
}
