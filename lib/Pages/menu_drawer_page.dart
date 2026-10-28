import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/menu_drawer_ctr.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final menuDrawerCtr = Get.put(MenuDrawerCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(menuDrawerCtr.listTitles[menuDrawerCtr.selectedIndex.value]),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Obx(
        () => Center(
          child: menuDrawerCtr.listpages[menuDrawerCtr.selectedIndex.value],
        ),
      ),
      drawer: Drawer(
        child: Obx(
          () => ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu'),
              ),
              ListTile(
                title: const Text('Home'),
                selected: menuDrawerCtr.selectedIndex.value == 0,
                onTap: () {
                  menuDrawerCtr.changePage(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('History'),
                selected: menuDrawerCtr.selectedIndex.value == 1,
                onTap: () {
                  menuDrawerCtr.changePage(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Profile'),
                selected: menuDrawerCtr.selectedIndex.value == 2,
                onTap: () {
                  menuDrawerCtr.changePage(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}