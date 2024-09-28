import 'package:cashapp/screens/onborading/Verification3.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/CustomTextField3.dart';
import 'package:cashapp/widgets/CustomTextField4.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification2 extends StatefulWidget {
  const Verification2({super.key});

  @override
  State<Verification2> createState() => _Verification2State();
}

class _Verification2State extends State<Verification2> {
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
              Customtextfield4(
                text: 'Your Image',
                text1: 'image.png',
                icon: EvaIcons.upload,
              ),
              SizedBox(
                height: 16,
              ),
              Customtextfield4(
                text: 'chosoe Documents',
                text1: 'NIN',
                icon: (EvaIcons.arrowDown),
              ),
              SizedBox(
                height: 16,
              ),
              Customtextfield4(
                text: 'Document Front',
                text1: 'image.png',
                icon: EvaIcons.upload,
              ),
              SizedBox(
                height: 16,
              ),
              Customtextfield4(
                text: 'Document Back',
                text1: 'image.png',
                icon: EvaIcons.upload,
              ),
              SizedBox(
                height: 80,
              ),
              CustomButton(
                text: 'Complete Verification',
                onTap: () {
                  Get.to(Verification3());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
