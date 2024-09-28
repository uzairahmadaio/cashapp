import 'package:cashapp/screens/onborading/addbank.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            Text(
              'Personal Details',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please fill in your personal details before you can continue',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            CustomTextField1(
              text: 'First Name',
            ),
            SizedBox(
              height: 26,
            ),
            CustomTextField1(
              text: 'Last Name',
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Next',
              onTap: () {
                Get.to(Addbank());
              },
            ),
          ],
        ),
      ),
    );
  }
}
