import 'package:cashapp/screens/onborading/Verification1.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Verifiy and complete your personal details',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField1(text: 'First Name'),
              SizedBox(
                height: 16,
              ),
              CustomTextField1(text: 'Last Name'),
              SizedBox(
                height: 16,
              ),
              CustomTextField1(text: 'Date of Birth'),
              SizedBox(
                height: 80,
              ),
              CustomButton(
                text: 'Proceed',
                onTap: () {
                  Get.to(Verification1());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
