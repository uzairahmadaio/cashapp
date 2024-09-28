import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification4 extends StatefulWidget {
  const Verification4({super.key});

  @override
  State<Verification4> createState() => _Verification4State();
}

class _Verification4State extends State<Verification4> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset('assets/ok.png'),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Welcome to KwikLynk',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              text: 'Continue',
              onTap: () {
                Get.to(());
              },
            ),
          ],
        ),
      ),
    );
  }
}
