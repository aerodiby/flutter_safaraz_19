import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/main_menu_ctr.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final mainMenuCtr = Get.put(MainMenuCtr());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: mainMenuCtr.selectedIndex.value,
          children: mainMenuCtr.listpages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainMenuCtr.changePage,
          currentIndex: mainMenuCtr.selectedIndex.value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.history_outlined), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
          ]
          ),
      ),
    );
  }
}
