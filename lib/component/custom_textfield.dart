import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtController;
  final String hintText;

  const CustomTextfield({super.key, required this.txtController, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly
      ],
      keyboardType: TextInputType.number,
      controller: txtController,
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hint: Text(hintText),
      ),
    );
  }
}
