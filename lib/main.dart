import 'package:cashapp/screens/HOME/home.dart';
import 'package:cashapp/screens/onborading/Choose%20a%20%C2%A3Cashtag.dart';
import 'package:cashapp/screens/onborading/Pcode.dart';
import 'package:cashapp/screens/onborading/Splash.dart';
import 'package:cashapp/screens/onborading/Verification.dart';
import 'package:cashapp/screens/onborading/Verification1.dart';
import 'package:cashapp/screens/onborading/Verification2.dart';
import 'package:cashapp/screens/onborading/Verification3.dart';
import 'package:cashapp/screens/onborading/invitefriend.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Splash(),
    );
  }
}
