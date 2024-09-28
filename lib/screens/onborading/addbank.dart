import 'package:cashapp/screens/onborading/Choose%20a%20%C2%A3Cashtag.dart';
import 'package:cashapp/screens/onborading/cashapp.dart';
import 'package:cashapp/widgets/CustomTextField.dart';
import 'package:cashapp/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Addbank extends StatefulWidget {
  const Addbank({super.key});

  @override
  State<Addbank> createState() => _AddbankState();
}

class _AddbankState extends State<Addbank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            children: [
              Text(
                'Add a Bank',
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
                text: 'Card Number',
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField1(
                text: 'Expiry Date',
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField1(
                text: 'CVV',
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField1(
                text: 'Card Name',
              ),
              SizedBox(
                height: 32,
              ),
              CustomButton(
                text: 'Next',
                onTap: () {
                  Get.to(Choose());
                },
              ),
              SizedBox(
                height: 26,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Cashapp());
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
            ],
          ),
        ),
      ),
    );
  }
}
