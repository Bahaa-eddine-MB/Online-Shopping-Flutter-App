import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:products_application/Home/HomePage.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
             const SizedBox(
              height: 80,
            ),
            Center(child: Lottie.asset('images/email.json',height: 300)),
            const SizedBox(
              height: 40,
            ),
           const  Text("We have sent you a verification email\ncheck your inbox",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
           const SizedBox(
            height: 30,
           ),
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
              onPressed: () {
                Get.to(()=>const HomePage());
              }, 
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  gradient: LinearGradient(colors: <Color>[Colors.deepOrange,Colors.orange])
                ),
                padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 14),
                child: const Text("Resend",style: TextStyle(fontSize: 18),),
            )
            ),
          ],
        ),
      ),
    );
  }
}