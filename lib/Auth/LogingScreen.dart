import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Auth/ConfirmPassword.dart';
import 'package:products_application/Auth/ForgetPasswordPage.dart';
import 'package:products_application/Auth/RegistrationPage.dart';

class LogingScreen extends StatefulWidget {
  const LogingScreen({Key? key}) : super(key: key);

  @override
  State<LogingScreen> createState() => _LogingScreenState();
}

class _LogingScreenState extends State<LogingScreen> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "images/logo.jpg",
              height: 150,
            ),
            const Text("PRODUCTS\nAPPLICATION",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 60,
            ),
            Text(
              "LogingScreen1".tr,
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  labelText: "LogingScreen2".tr,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: !isVisible,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    labelText: "LogingScreen3".tr,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.orange,
                    ),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(!isVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: TextButton(
                onPressed: () {
                  Get.to(() => const ForgetPasswordPage());
                },
                child: Text(
                  "LogingScreen4".tr,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                onPrimary: Colors.white,
                elevation: 0.0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                Get.to(() => const ConfirmPassword());
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 14),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: <Color>[Colors.deepOrange, Colors.orange])),
                child: Text(
                  "LogingScreen5".tr,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LogingScreen6".tr),
                TextButton(
                  onPressed: () {
                    Get.to(() => const RegistrationPage());
                  },
                  child: Text(
                    "LogingScreen7".tr,
                    style: const TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ]),
        ),
      ),
    );
  }
}
