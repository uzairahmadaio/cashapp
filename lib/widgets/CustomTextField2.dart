import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatefulWidget {
  const CustomTextField2({
    super.key,
    // required this.onTap,
    // required this.text,
    required this.text1,
    required this.icon,
  });
  // final string onTap;
  // final String text;
  final IconData icon;
  final String text1;

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 55,
          decoration: ShapeDecoration(
            // color: Color(0xff5E687),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  // width: 2,
                  color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                EvaIcons.search,
                size: 19,
              ),
              hintText: widget.text1,
              hintStyle: TextStyle(
                // color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                // height: 0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
