import 'package:cashapp/screens/onborading/Verification.dart';
import 'package:cashapp/screens/onborading/invitefriend.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:cashapp/widgets/invite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addbank.dart';

class Cashapp extends StatefulWidget {
  const Cashapp({super.key});

  @override
  State<Cashapp> createState() => _CashappState();
}

class _CashappState extends State<Cashapp> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icon.png',
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'See Which Friends are on Cash App',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Allow contacts access and make it easy to find friends, protect\nyour account, and prevent spam.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'You can change these permissions at anytime in settings',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  text: 'Next',
                  onTap: () {
                    Get.to(Invitefriend());
                  },
                ),
                SizedBox(
                  height: 26,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Verification());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFF00D6BC),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF00D6BC),
                          fontSize: 20.46,
                          // fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
