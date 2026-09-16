import 'package:flutter/material.dart';

class CustomActionLink extends StatelessWidget {
  final String text;
  final Color textColor;

  const CustomActionLink({
    super.key,
    required this.text,
    this.textColor = const Color(0xFF00A8FC),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}