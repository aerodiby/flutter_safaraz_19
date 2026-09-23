import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_button.dart';
import 'package:flutter_application_1/component/custom_textfield.dart';
import 'package:flutter_application_1/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage2 extends StatelessWidget {
  static const Color biru = Color.fromARGB(255, 54, 114, 233);

  new({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),

      body: Column(
        children: [
          CustomTextfield(
            txtController: txtAngka1,
            hintText: "Masukan angka pertama",
          ),
          const SizedBox(height: 20),
          CustomTextfield(
            txtController: txtAngka2,
            hintText: "Masukan angka pertama",
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                width: 125,
                height: 50,
                text: "Tambah",
                backgroundColor: biru,
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.tambah(angka1, angka2);
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                width: 125,
                height: 50,
                text: "Kurang",
                backgroundColor: biru,
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.kurang(angka1, angka2);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                width: 125,
                height: 50,
                text: "Kali",
                backgroundColor: biru,
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.kali(angka1, angka2);
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                width: 125,
                height: 50,
                text: "Bagi",
                backgroundColor: biru,
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.bagi(angka1, angka2);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(fontSize: 35),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          CustomButton(
            width: 125,
            height: 50,
            text: "Reset",
            backgroundColor: biru,
            onPressed: () {
              controller.reset();
            },
          ),
        ],
      ),
    );
  }
}
