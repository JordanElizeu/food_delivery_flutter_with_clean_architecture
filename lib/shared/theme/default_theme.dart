import 'package:flutter/material.dart';
import 'theme.dart';

class DefaultTheme {
  static final defaultTheme = ThemeData(
    colorScheme: const ColorScheme(
      onBackground: Colors.white,
      onSecondary: DefaultColors.secondaryColor,
      onError: DefaultColors.errorColor,
      error: DefaultColors.errorColor,
      brightness: Brightness.light,
      onPrimary: DefaultColors.primaryColor,
      surface: DefaultColors.secondaryColor,
      secondary: DefaultColors.background,
      primary: DefaultColors.primaryColor,
      onSurface: DefaultColors.secondaryColor,
      background: DefaultColors.background,
    ),
  );
}
