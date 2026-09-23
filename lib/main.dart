import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/kalkulator_page2.dart';
import 'package:flutter_application_1/Pages/login_clone_page.dart';
import 'package:flutter_application_1/kalkulator_page.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/login_clone.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: KalkulatorPage2(),);
  }
}