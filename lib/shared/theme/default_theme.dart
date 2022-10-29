import 'package:flutter/material.dart';
import 'theme.dart';

class InputTheme {
  static const inputTheme = TextStyle(
    fontFamily: 'Inter-Medium',
    fontSize: 14,
  );
}

class SmallButtonTheme {
  static const smallButtonTheme = TextStyle(
    fontFamily: 'Inter-Medium',
    fontSize: 12,
  );
}

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
    textTheme: const TextTheme(
      headline2: TextStyle(
        fontFamily: 'Inter-SemiBold',
        fontSize: 28,
      ),
      headline3: TextStyle(
        fontFamily: 'Inter-Medium',
        fontSize: 24,
      ),
      headline4: TextStyle(
        fontFamily: 'Inter-Medium',
        fontSize: 22,
      ),
      headline5: TextStyle(
        fontFamily: 'Inter-Regular',
        fontSize: 20,
      ),
      headline6: TextStyle(
        fontFamily: 'Inter-Regular',
        fontSize: 18,
      ),
      subtitle1: TextStyle(
        fontFamily: 'Inter-Regular',
        fontSize: 16,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Inter-Light',
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Inter-Light',
        fontSize: 16,
      ),
      button: TextStyle(
        fontFamily: 'Inter-Medium',
        fontSize: 18,
      ),
      caption: TextStyle(
        fontFamily: 'Inter-Light',
        fontSize: 12,
      ),
    ),
  );
}
