import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/confirmreg_page.dart';
import 'package:flutter_application_1/Pages/detailmakanan_page.dart';
import 'package:flutter_application_1/Pages/registration_page.dart';
import 'package:flutter_application_1/Pages/listmakanan_page.dart';
import 'package:flutter_application_1/Pages/main_menu_page.dart';
import 'package:get/get.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";
  static const String main_menu = "/main_menu";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmregPage()),
    GetPage(name: listmakanan, page: () => ListMakananPage()),
    GetPage(name: detailmakanan, page:() => DetailmakananPage(),),
    GetPage(name: main_menu, page:() => MainMenuPage(),),
  ];

}