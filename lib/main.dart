import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Auth/SplashScreen.dart';
import 'package:products_application/Services/locale.dart';
import 'package:products_application/Themes/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharredPrefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharredPrefs = await SharedPreferences.getInstance();
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: MyLocale.initLang(),
        translations: MyLocale(),
        title: 'Products application',
        theme: Themes.getThemeMode(),
        home: const SplashScreen());
  }
}
