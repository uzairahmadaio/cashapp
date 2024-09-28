import 'package:flutter/material.dart';

class invite extends StatelessWidget {
  const invite({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
  });
  final String text;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              text1,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
              color: Color(0xFF00D6BC),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text2,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
