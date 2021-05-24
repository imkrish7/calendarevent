import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: primaryColor,
    accentColor: accentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
        secondary: secondaryLightColor, surface: Colors.white),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: bodyTextColorLight),
    accentIconTheme: IconThemeData(color: accentIconLightColor),
    primaryIconTheme: IconThemeData(color: primaryIconLightColor),
  );
}

// Dark Theme
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    accentColor: accentDarkColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: secondaryDarkColor,
      surface: surfaceDarkColor,
    ),
    backgroundColor: backgroundDarkColor,
    iconTheme: IconThemeData(color: bodyTextColorDark),
    accentIconTheme: IconThemeData(color: accentIconDarkColor),
    primaryIconTheme: IconThemeData(color: primaryIconDarkColor),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 1);
