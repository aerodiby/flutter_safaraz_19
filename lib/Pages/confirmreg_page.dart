import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_button.dart';
import 'package:flutter_application_1/controller/confirmreg_ctr.dart';
import 'package:get/get.dart';

class ConfirmregPage extends StatelessWidget {
  ConfirmregPage({super.key});

  
  final controller = Get.put(ConfirmregController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration"),),
      body: Column(
        children: [
          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Jenis Kelamin ${controller.jenis_kelamin}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Alamat ${controller.alamat}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Email ${controller.email}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "No WA ${controller.noWA}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          CustomButton(text: "Oke", backgroundColor: Colors.blue, onPressed: (){
            Get.back();
          }
          , height: 50, width: 100),
        ],
        ),
    );
  }
}