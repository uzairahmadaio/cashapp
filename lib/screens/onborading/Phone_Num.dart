import 'package:cashapp/screens/onborading/Pcode.dart';
import 'package:cashapp/screens/onborading/email.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_form_field/phone_form_field.dart';

class PhoneNum extends StatefulWidget {
  const PhoneNum({super.key});

  @override
  State<PhoneNum> createState() => _PhoneNumState();
}

class _PhoneNumState extends State<PhoneNum> {
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
              'Enter your Mobile Number',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            PhoneFormField(
              initialValue: PhoneNumber.parse('+33'), // or use the controller

              countrySelectorNavigator: const CountrySelectorNavigator.page(),
              onChanged: (phoneNumber) => print('changed into $phoneNumber'),
              enabled: true,
              isCountrySelectionEnabled: true,
              isCountryButtonPersistent: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              countryButtonStyle: const CountryButtonStyle(
                  showDialCode: true,
                  showIsoCode: true,
                  showFlag: true,
                  flagSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(Email());
                  },
                  child: Text(
                    'Use your Email Instead',
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
                Get.to(Pcode());
              },
            ),
          ],
        ),
      ),
    );
  }
}
