import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {

  static const Color bgColor = Color(0xFF1E1F22);
  static const Color inputBgColor = Color(0xFF111214);
  static const Color primaryBlue = Color(0xFF5865F2);
  static const Color passkeyBtnBg = Color(0xFF2B2D31);
  static const Color textGray = Color(0xFF949BA4);
  static const Color linkColor = Color(0xFF00A8FC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                  onPressed: (){},
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
                    style: TextStyle(
                      fontSize: 14,
                      color: textGray,
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                const Text(
                  "Email or Phone Number",
                  style: TextStyle(
                    color: textGray,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: inputBgColor,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (val) => setState(() {}),
                ),
                const SizedBox(height: 20),

                const Text(
                  "Password",
                  style: TextStyle(
                    color: textGray,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: inputBgColor,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.visibility_off_outlined,
                        color: textGray,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(color: linkColor, fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Use a password manager?",
                    style: TextStyle(color: linkColor, fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                const Row(
                  children: [
                    Expanded(child: Divider(color: Color(0xFF35363C), thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "OR",
                        style: TextStyle(color: textGray, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(child: Divider(color: Color(0xFF35363C), thickness: 1)),
                  ],
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.key, color: Colors.white, size: 20),
                    label: const Text(
                      "Log in with Passkey",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: passkeyBtnBg,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
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