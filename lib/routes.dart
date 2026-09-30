import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/confirmreg_page.dart';
import 'package:flutter_application_1/Pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";

  static final myPages = [
    GetPage(name: registration, page: (() => RegistrationPage())),
    GetPage(name: confirm_registration, page: (() => ConfirmregPage())),
  ];
}