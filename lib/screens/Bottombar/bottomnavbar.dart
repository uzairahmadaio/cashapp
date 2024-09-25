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
      // Home(),
      // Share_screen(),
      // Premium(),
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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), // Left radius
            topRight: Radius.circular(30.0), // Right radius
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
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
                  Icon(
                    Icons.home_outlined,

                    color: currentIndex != 0 ? Colors.grey : kPrimaryColor,
                    //     // Adjust the scale of the icon if needed
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
                    Icons.card_giftcard_outlined,

                    color: currentIndex != 1 ? Colors.grey : kPrimaryColor,
                    //     // Adjust the scale of the icon if needed
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
                    Icons.star_border_outlined,
                    color: currentIndex != 2 ? Colors.grey : kPrimaryColor,
                    //     // Adjust the scale of the icon if needed
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
