import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Widget? icon;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    this.icon,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: icon != null
          ? ElevatedButton.icon(
              onPressed: onPressed,
              icon: icon!,
              label: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}