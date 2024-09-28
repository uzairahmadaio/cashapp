import 'package:cashapp/screens/HOME/home.dart';
import 'package:cashapp/screens/History/history.dart';
import 'package:cashapp/screens/Search/search.dart';
import 'package:cashapp/screens/Transct/transct.dart';
import 'package:cashapp/screens/themes/themes.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Home(),
      Transct(),
      Search(),
      History(),
    ];

    return Scaffold(
      body: pages[currentIndex],
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the navigation bar
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(30.0), // Left radius
          //   topRight: Radius.circular(30.0), // Right radius
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black26,
          //     blurRadius: 10,
          //     offset: Offset(0, -1),
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/home.png',
                    width: 25,
                    height: 25,
                    color: currentIndex != 0 ? Colors.grey : kPrimaryColor,
                  ),
                  // Icon(
                  //   Icons.home_outlined,

                  //   //     // Adjust the scale of the icon if needed
                  // ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 13,
                      color: currentIndex != 0 ? Colors.grey : kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.currency_pound,

                    color: currentIndex != 1 ? Colors.grey : kPrimaryColor,
                    //     // Adjust the scale of the icon if needed
                  ),
                  Text(
                    'Transact',
                    style: TextStyle(
                      fontSize: 13,
                      color: currentIndex != 1 ? Colors.grey : kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: currentIndex != 2 ? Colors.grey : kPrimaryColor,
                    //     // Adjust the scale of the icon if needed
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 13,
                      color: currentIndex != 2 ? Colors.grey : kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.history,
                    color: currentIndex != 3 ? Colors.grey : kPrimaryColor,
                    //     // Adjust the scale of the icon if needed
                  ),
                  Text(
                    'History',
                    style: TextStyle(
                      fontSize: 13,
                      color: currentIndex != 3 ? Colors.grey : kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
