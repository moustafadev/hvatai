import 'package:flutter/material.dart';

class AppColors {
  // ✅ Existing Colors

  static const Color white = Color(0xFFFFFFFF);
  static const Color hotPink = Color(0xFFEC3078);
  static const Color raspberryRed = Color(0xFFF24259);
  static const Color graniteGray = Color(0xFF707070);
  static const Color eerieBlack = Color(0xFF1B1B1B);
  static const Color gray = Color(0xFFECECEC);
  static const Color primary = Color(0xFFA1F4A8);
  static const Color transparent = Colors.transparent;
  static const Color lightGray = Color(0xFFD9D9D9);
  static Color get grey100 =>
      Colors.grey[100]!; // Lightest grey from Material swatch

  // ✅ New Added Colors
  static const Color purple = Color(0xFF8385E6);
  static const Color purple1 = Color(0xFF815BFF);
  static const Color greyLite = Color(0xFFD0D0D0);
  static const Color raspberryPink = Color(0xFFFF3369);
  static const Color primaryColor = Color(0xFF7BE4EE);
  static const Color disabledColor = Color(0xFFD2FBFF);
  static const Color blackColorIcon = Color(0xFF2A2A2A);
  static const Color grey = Color(0xFFB3B3B3);
  static const Color blackLite = Color(0xFF3D3D3D);
  static const Color blackDark = Color(0xFF181818);
  static const Color pink = Color(0xFFE569DB);
  static const Color blueLite = Color(0xFF3392FF);
  static const Color purpleLite = Color(0xFF7F5BFF);
  static const Color deepPurple = Color(0xFFE356D7);
  static const Color conLine = Color(0xFFE9E9E9);
  static const Color greyButton = Color(0xFFF2F2F2);
  static const Color red = Color(0xFFFA0330);
  static const Color greyBorder = Color(0xFFE6E6E6);
  static const Color lightGreyBackground = Color(0xFFF6F6F6);
  static const Color blackTransparent40 = Color(0x662A2A2A);
  static const Color green = Color(0xFF48994F);
  static const Color primaryPink = Color(0xFFF4A8A1);
  static const Color disabledPink = Color(0xFFFBD7D3);
  static const Color goldenColor = Color(0xFFF6DD00);
  static const Color background = Color(0xFFFBFBFB);

  // ✅ Colors with Opacity
  static Color greyLiteLine = const Color(0xFF808080).withOpacity(0.5);
  static Color view = const Color(0xFF000000).withOpacity(0.5);
  static Color button = const Color(0xFF007AFF).withOpacity(0.2);
  static Color text = const Color(0xFF2A2A2A);
  static const Color violetPink = Color(0xFFE26ADC); // New color added

  // ✅ Gradients
  static LinearGradient primaryGradient = LinearGradient(
    colors: [blueLite, purpleLite, deepPurple],
  );

  static LinearGradient secondaryGradient = LinearGradient(
    colors: [white, white, white],
  );
}
