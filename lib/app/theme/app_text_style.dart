import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_theme.dart';

// App Currency Formatter
// v.2.0.0
// by Elriz Wiraswara

// Custom font weight name
enum AppFontWeight {
  regular,
  medium,
  semibold,
  bold,
}

class AppTextStyle {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppTextStyle._();

  // Default font family
  static String defaultFontFamily = "Urbanist";

  // Default text color
  static Color defaultTextColor =
      AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white;

  // DEFAULT TEXT STYLES
  // Heading styles
  static TextStyle heading1({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      48,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }

  static TextStyle heading2({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      40,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }

  static TextStyle heading3({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      32,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }

  static TextStyle heading4({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      24,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }

  static TextStyle heading5({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      20,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }

  static TextStyle heading6({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      18,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }

  // Heading styles end
  //
  // Body styles
  static TextStyle bodyXLarge({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
    required AppFontWeight fontWeight,
  }) {
    return _textStyle(
      18,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      fontWeight,
    );
  }

  static TextStyle bodyLarge({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
    required AppFontWeight fontWeight,
  }) {
    return _textStyle(
      16,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      fontWeight,
    );
  }

  static TextStyle bodyMedium({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
    required AppFontWeight fontWeight,
  }) {
    return _textStyle(
      14,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      fontWeight,
    );
  }

  static TextStyle bodySmall({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
    required AppFontWeight fontWeight,
  }) {
    return _textStyle(
      12,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      fontWeight,
    );
  }

  static TextStyle bodyXSmall({
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
    required AppFontWeight fontWeight,
  }) {
    return _textStyle(
      10,
      color ?? (AppTheme.isLightMode ? AppColors.blackLv1 : AppColors.white),
      fontFamily,
      textDecoration,
      fontWeight,
    );
  }
  // Body styles end
  // DEFAULT TEXT STYLES END

  // CUSTOM TEXT STYLE
  static TextStyle regular({
    required double size,
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      size,
      color,
      fontFamily,
      textDecoration,
      AppFontWeight.regular,
    );
  }

  static TextStyle medium({
    required double size,
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      size,
      color,
      fontFamily,
      textDecoration,
      AppFontWeight.medium,
    );
  }

  static TextStyle semibold({
    required double size,
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      size,
      color,
      fontFamily,
      textDecoration,
      AppFontWeight.semibold,
    );
  }

  static TextStyle bold({
    required double size,
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
  }) {
    return _textStyle(
      size,
      color,
      fontFamily,
      textDecoration,
      AppFontWeight.bold,
    );
  }
  // CUSTOM TEXT STYLE END

  // TextStyle params
  static TextStyle _textStyle(
    double size,
    Color? color,
    String? fontFamily,
    TextDecoration? textDecoration,
    AppFontWeight fontWeight,
  ) {
    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultTextColor,
      fontSize: size,
      fontWeight: fontWeightSelector(fontWeight),
      decoration: textDecoration,
    );
  }

  // FontWeight selector
  static FontWeight fontWeightSelector(AppFontWeight weight) {
    switch (weight) {
      case AppFontWeight.bold:
        return FontWeight.w700;
      case AppFontWeight.semibold:
        return FontWeight.w600;
      case AppFontWeight.medium:
        return FontWeight.w500;
      case AppFontWeight.regular:
        return FontWeight.w400;
      default:
        return FontWeight.w500;
    }
  }
}
