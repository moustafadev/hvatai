import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle mediumM;
  final TextStyle mediumS;
  final TextStyle mediumXS;
  final TextStyle regularM;
  final TextStyle regularS;
  final TextStyle regularXS;
  final TextStyle regularXXS;

  const ThemeTextStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.mediumM,
    required this.mediumS,
    required this.mediumXS,
    required this.regularM,
    required this.regularS,
    required this.regularXS,
    required this.regularXXS,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? mediumM,
    TextStyle? mediumS,
    TextStyle? mediumXS,
    TextStyle? regularM,
    TextStyle? regularS,
    TextStyle? regularXS,
    TextStyle? regularXXS,
  }) {
    return ThemeTextStyles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      mediumM: mediumM ?? this.mediumM,
      mediumS: mediumS ?? this.mediumS,
      mediumXS: mediumXS ?? this.mediumXS,
      regularM: regularM ?? this.regularM,
      regularS: regularS ?? this.regularS,
      regularXS: regularXS ?? this.regularXS,
      regularXXS: regularXXS ?? this.regularXXS,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      mediumM: TextStyle.lerp(mediumM, other.mediumM, t)!,
      mediumS: TextStyle.lerp(mediumS, other.mediumS, t)!,
      mediumXS: TextStyle.lerp(mediumXS, other.mediumXS, t)!,
      regularM: TextStyle.lerp(regularM, other.regularM, t)!,
      regularS: TextStyle.lerp(regularS, other.regularS, t)!,
      regularXS: TextStyle.lerp(regularXS, other.regularXS, t)!,
      regularXXS: TextStyle.lerp(regularXXS, other.regularXXS, t)!,
    );
  }

  static ThemeTextStyles get light => const ThemeTextStyles(
        h1: TextStyle(
          height: 1.2,
          fontSize: 28,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.manrope,
        ),
        h2: TextStyle(
          height: 1.2,
          fontSize: 24,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.manrope,
        ),
        h3: TextStyle(
          height: 1.2,
          fontSize: 20,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.manrope,
        ),
        h4: TextStyle(
          height: 1.2,
          fontSize: 16,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.manrope,
        ),
        mediumM: TextStyle(
          height: 1.4,
          fontSize: 16,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.manrope,
        ),
        mediumS: TextStyle(
          height: 1.4,
          fontSize: 14,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.manrope,
        ),
        mediumXS: TextStyle(
          height: 1.25,
          fontSize: 12,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.manrope,
        ),
        regularM: TextStyle(
          height: 1.4,
          fontSize: 16,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.manrope,
        ),
        regularS: TextStyle(
          height: 1.4,
          fontSize: 14,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.manrope,
        ),
        regularXS: TextStyle(
          height: 1.4,
          fontSize: 12,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.manrope,
        ),
        regularXXS: TextStyle(
          height: 1.4,
          fontSize: 10,
          color: AppColors.eerieBlack,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.manrope,
        ),
      );
}
