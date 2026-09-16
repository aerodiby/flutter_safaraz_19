import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_action_link.dart';
import 'package:flutter_application_1/component/custom_button.dart';
import 'package:flutter_application_1/component/custom_label.dart';
import 'package:flutter_application_1/component/custom_text_field.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});
  static const Color inputBgColor = Color(0xFF111214);
  static const Color primaryBlue = Color(0xFF5865F2);
  static const Color passkeyBtnBg = Color(0xFF2B2D31);
  static const Color textGray = Color(0xFF949BA4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/DiscordBackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    "We're so excited to see you again!",
                    style: TextStyle(fontSize: 14, color: textGray),
                  ),
                ),
                const SizedBox(height: 28),

                const CustomLabel(text: "Email or Phone Number"),
                const SizedBox(height: 8),
                const CustomTextField(bgColor: inputBgColor),
                const SizedBox(height: 20),

                const CustomLabel(text: "Password"),
                const SizedBox(height: 8),
                CustomTextField(
                  bgColor: inputBgColor,
                  isPassword: true,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility_off_outlined,
                      color: textGray,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 12),

                CustomActionLink(text: "Forgot your password?"),
                const SizedBox(height: 10),
                CustomActionLink(text: "Use a password manager?"),
                const SizedBox(height: 24),

                CustomButton(
                  text: "Log In",
                  backgroundColor: primaryBlue,
                  onPressed: () {},
                ),
                const SizedBox(height: 20),

                const Row(
                  children: [
                    Expanded(
                      child: Divider(color: Color(0xFF35363C), thickness: 1),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: textGray,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Color(0xFF35363C), thickness: 1),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: "Log in with Passkey",
                  backgroundColor: passkeyBtnBg,
                  icon: const Icon(Icons.key, color: Colors.white, size: 20),
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
