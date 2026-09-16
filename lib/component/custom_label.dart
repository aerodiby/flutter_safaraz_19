import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String text;
  const CustomLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF949BA4),
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}