import 'package:cashapp/screens/onborading/Verification.dart';
import 'package:cashapp/widgets/CustomTextField2.dart';
import 'package:cashapp/widgets/invite.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Invitefriend extends StatefulWidget {
  const Invitefriend({super.key});

  @override
  State<Invitefriend> createState() => _InvitefriendState();
}

class _InvitefriendState extends State<Invitefriend> {
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField2(text1: 'Search', icon: EvaIcons.search),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Contacts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Verification());
                },
                child: invite(
                    text: 'Cleus James',
                    text1: '+2348102871334',
                    text2: 'Get £5'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
