import 'dart:ffi';

import 'package:cashapp/screens/History/history.dart';
import 'package:cashapp/screens/Profile/profile.dart';
import 'package:cashapp/screens/themes/themes.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Recive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: kPrimaryColor,
                child: Image.asset('assets/lines.png'),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(ProfilePage());
                        },
                        child: Image.asset(
                          'assets/men.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "\$134,876",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Wellet Balance',
                        style: TextStyle(
                          fontSize: 15,
                          color: kSPrimaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Get.to(Deposit());
                            },
                            child: Container(
                              width: 120,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      'Cash Out',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Get.to(Deposit());
                            },
                            child: Container(
                              width: 120,
                              height: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25),
                                  color: kPrimaryColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      'Deposit',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.to(History());
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TransactionTile(
            leadingText: 'H',
            title: 'Tecclubb',
            subtitle: 'Pay',
            amount: '\$134,876',
            time: '11:00 AM',
            isReceived: false, // or true
          ),
          TransactionTile(
            leadingText: 'S',
            title: 'Tecclubb',
            subtitle: 'Recive',
            amount: '\$134,876',
            time: '11:00 AM',
            isReceived: true, // or true
          ),
          TransactionTile(
            leadingText: 'U',
            title: 'Tecclubb',
            subtitle: 'Pay',
            amount: '\$134,876',
            time: '11:00 AM',
            isReceived: false, // or true
          ),
          TransactionTile(
            leadingText: 'U',
            title: 'Tecclubb',
            subtitle: 'Recive',
            amount: '\$134,876',
            time: '11:00 AM',
            isReceived: true, // or true
          ),
        ],
      )),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final String leadingText;
  final String title;
  final String subtitle;
  final String amount;
  final String time;
  final bool isReceived;

  const TransactionTile({
    Key? key,
    required this.leadingText,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.time,
    required this.isReceived,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minTileHeight: 25,
          leading: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 203, 223),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                leadingText,
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF79869B),
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 15,
                  color: isReceived ? Colors.green : Colors.red,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
