import 'package:cashapp/screens/onborading/cashapp.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'personal.dart';

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
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
            Text(
              'Choose a £Cashtag',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Choose a unique name for getting paid by anyone',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            CustomTextField1(
              text: '£Cashtag',
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Next',
              onTap: () {
                Get.to(Cashapp());
              },
            ),
          ],
        ),
      ),
    );
  }
}
