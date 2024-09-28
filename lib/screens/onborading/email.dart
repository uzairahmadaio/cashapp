import 'package:cashapp/screens/onborading/Ecode.dart';
import 'package:cashapp/screens/onborading/Phone_Num.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_form_field/phone_form_field.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF00D6BC),
      appBar: AppBar(
        // backgroundColor: Color(0xFF00D6BC),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: GestureDetector(
              onTap: () {
                Get.to('');
              },
              child: Text(
                '?',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            Text(
              'Enter your Email Address',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(PhoneNum());
                  },
                  child: Text(
                    'Use your Phone Number Instead',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF00D6BC),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              text: 'Next',
              onTap: () {
                Get.to(Ecode());
              },
            ),
          ],
        ),
      ),
    );
  }
}
