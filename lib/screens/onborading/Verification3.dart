import 'package:cashapp/screens/onborading/Verification4.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/CustomTextField3.dart';
import 'package:cashapp/widgets/CustomTextField4.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification3 extends StatefulWidget {
  const Verification3({super.key});

  @override
  State<Verification3> createState() => _Verification3State();
}

class _Verification3State extends State<Verification3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Verification',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Congratulations!!!You have successfully fill in your details and\nsubmitthe necessary document for verification',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/Sample 1.png'),
            ),
            SizedBox(
              height: 120,
            ),
            CustomButton(
              text: 'Complete Verification',
              onTap: () {
                Get.to(Verification4());
              },
            ),
          ],
        ),
      ),
    );
  }
}
