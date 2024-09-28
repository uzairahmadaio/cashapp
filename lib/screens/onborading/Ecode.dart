import 'package:cashapp/screens/onborading/email.dart';
import 'package:cashapp/screens/onborading/personal.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Ecode extends StatefulWidget {
  const Ecode({super.key});

  @override
  State<Ecode> createState() => _EcodeState();
}

class _EcodeState extends State<Ecode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF00D6BC),
      appBar: AppBar(
        // backgroundColor: Color(0xFF00D6BC),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: Text(
              '?',
              style: TextStyle(
                fontSize: 25,
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
              'Confirmation Code',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please enter the confirmation code sent to your Email Address',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Color(0xFF00D6BC),
                  inactiveFillColor: Color(0xFF00D6BC),
                  selectedFillColor: Color(0xFF00D6BC),
                  activeColor: Color(0xFF00D6BC),
                  inactiveColor: Color(0xFF00D6BC),
                  selectedColor: Color(0xFF00D6BC),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Next',
              onTap: () {
                Get.to(Personal());
              },
            ),
          ],
        ),
      ),
    );
  }
}
