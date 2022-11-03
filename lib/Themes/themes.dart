import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Themes/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class Themes extends GetxController {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light()
          .copyWith(primary: orangeColor, secondary: orangeColor),
      appBarTheme: const AppBarTheme(backgroundColor: orangeColor),
      primaryColor: orangeColor,
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: orangeColor),
      scaffoldBackgroundColor: lightBackgroundColor);

  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: darkBackgroundColor,
    colorScheme: const ColorScheme.dark()
        .copyWith(primary: orangeColor, secondary: orangeColor),
    appBarTheme: const AppBarTheme(backgroundColor: orangeColor),
    primaryColor: orangeColor,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: orangeColor),
  );

  static ThemeData getThemeMode() {
    return sharredPrefs!.getBool("isDarkTheme") ?? false
        ? Themes.customDarkTheme
        : Themes.customLightTheme;
  }

 }
