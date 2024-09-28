import 'package:cashapp/screens/onborading/Verification2.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/CustomTextField1.dart';
import 'package:cashapp/widgets/CustomTextField3.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification1 extends StatefulWidget {
  const Verification1({super.key});

  @override
  State<Verification1> createState() => _Verification1State();
}

class _Verification1State extends State<Verification1> {
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
              CustomTextField3(
                text: 'Country of Residence',
                icon: (EvaIcons.arrowDown),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField3(
                text: 'Professions',
                icon: (EvaIcons.arrowDown),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField3(
                text: 'Professional Sector',
                icon: (EvaIcons.arrowDown),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField3(
                text: 'Country of Profession',
                icon: (EvaIcons.arrowDown),
              ),
              SizedBox(
                height: 80,
              ),
              CustomButton(
                text: 'Proceed',
                onTap: () {
                  Get.to(Verification2());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
