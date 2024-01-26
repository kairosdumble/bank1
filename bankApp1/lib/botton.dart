import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), color: bgColor),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          "request",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
