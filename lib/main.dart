import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Auth/SplashScreen.dart';
import 'package:products_application/Themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Products application',
        theme: Themes.customLightTheme,
        home: const SplashScreen());
  }
}
