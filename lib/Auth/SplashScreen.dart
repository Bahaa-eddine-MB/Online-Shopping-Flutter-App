import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:products_application/Auth/LogingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigation();
  }

  _navigation() async {
    await Future.delayed(const Duration(milliseconds: 3000),(){});
    Get.to(()=>const LogingScreen(),
    duration: const Duration(milliseconds: 1500),
    transition: Transition.fade
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.orange,
    body: Center(
      child: Lottie.asset('images/product.json',height: 250),
    ),
    );
  }
}
