import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Customtextfield4 extends StatefulWidget {
  const Customtextfield4({
    super.key,
    // required this.onTap,
    required this.text,
    required this.text1,
    required this.icon,
  });
  final String text;
  final IconData icon;
  final String text1;

  @override
  State<Customtextfield4> createState() => _Customtextfield4State();
}

class _Customtextfield4State extends State<Customtextfield4> {
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                // letterSpacing: 0.20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: 350,
          // margin: EdgeInsets.symmetric(horizontal: 23),
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
              suffixIcon: Icon(widget.icon),
              hintText: widget.text1,
              hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
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
