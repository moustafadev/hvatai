// ignore_for_file: deprecated_member_use

import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/custom_theme.dart';
import 'package:hvatai/core/theme/fonts.dart';
import 'package:hvatai/core/theme/theme_test_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static List<CustomTheme> themes = [light];

  static CustomTheme light = CustomTheme(
    name: 'Light',
    data: ThemeData(
      fontFamily: FontFamily.manrope,
      brightness: Brightness.light,
      canvasColor: AppColors.white,
      primaryColor: AppColors.hotPink,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: const ColorScheme.light(primary: AppColors.hotPink),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: false,
        scrolledUnderElevation: 0,
        foregroundColor: AppColors.graniteGray,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
        ),
      ),
      dividerTheme: const DividerThemeData(color: AppColors.graniteGray),
      extensions: [ThemeTextStyles.light],
    ),
  );
}
