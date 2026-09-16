import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Color bgColor;
  final bool isPassword;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.bgColor,
    this.isPassword = false,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white, fontSize: 14),
      decoration: InputDecoration(
        filled: true,
        fillColor: bgColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged,
    );
  }
}