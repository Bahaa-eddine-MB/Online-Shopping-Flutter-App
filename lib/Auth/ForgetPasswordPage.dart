import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import 'LogingScreen.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);


  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}


class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Center(child: Lottie.asset('images/forget.json',height: 350)),
            const Text('Enter your email and a notification will be sent to you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                elevation: 0,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                shape: const RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(12))
                )
              ),
              onPressed: () {}, 
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  gradient: LinearGradient(colors: <Color>[Colors.deepOrange,Colors.orange])
                ),
                padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 14),
                child: const Text("Send",style: TextStyle(fontSize: 18),),
            )
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You already have an accout ?'),
                TextButton(
                  onPressed: () {
                    Get.to(() => const LogingScreen());
                  },
                  child: const Text(
                    "Log-in",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}