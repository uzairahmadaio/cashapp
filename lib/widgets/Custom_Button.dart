import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final String text;
  final VoidCallback onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: ShapeDecoration(
          color: Color(0xFF00D6BC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20.46,
              // fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              // height: 0
            ),
          ),
        ),
      ),
    );
  }
}
