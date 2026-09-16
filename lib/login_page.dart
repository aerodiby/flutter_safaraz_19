import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "admin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          Text(
            "Welcome to Application " + statusLogin,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: CustomTextfield(
              controller: txtUsername,
              hintText: "input username",
            )
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: CustomTextfield(
              controller: txtPassword,
              hintText: "input password",
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;
                    if (username == "admin" && password == "admin") {
                      print("Login berhasil");
                      statusLogin = "Login berhasil";
                    } else {
                      print("Login gagal");
                      statusLogin = "Login gagal";
                    }
                  });
                },
                child: Text("Login"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Register")),
            ],
          ),
        ],
      ),
    );
  }
}