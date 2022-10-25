import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themes extends GetxController{
 

  static ThemeData customLightTheme = ThemeData(
      primaryColor: Colors.orange,
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.grey[100]);
  static ThemeData customDarkTheme = ThemeData(
      colorScheme: const  ColorScheme.dark(
       primary: Colors.orange, 
       secondary: Colors.orange
      ),
      appBarTheme: const AppBarTheme(backgroundColor: Colors.orange),
      primaryColor: Colors.orange,
      primarySwatch: Colors.orange,
      );


}
