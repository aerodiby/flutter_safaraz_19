import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_button.dart';
import 'package:flutter_application_1/component/custom_dropdown.dart';
import 'package:flutter_application_1/component/custom_text_field.dart';
import 'package:flutter_application_1/component/custom_textfield.dart';
import 'package:flutter_application_1/component/custom_textfield_number.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegistrationPage extends StatelessWidget {
  
  const RegistrationPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWA = TextEditingController();
    final selectedGender = Rxn<String>();
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page"),),
      body: Column(
        children: [
          CustomTextfield(txtController: txtNama, hintText: "input nama"),
          CustomTextfield(txtController: txtAlamat, hintText: "input alamat"),
          CustomTextfield(txtController: txtEmail, hintText: "input email"),
          CustomTextfieldNumber(txtController: txtNoWA, hintText: "input no wa"),
          Obx(()=> CustomDropdown(
            label: "Jenis Kelamin", 
            items: const ["Laki-laki","Perempuan"],
           value: selectedGender.value, 
           onChanged: (val)=> selectedGender.value = val,
           ),
          ),
          CustomButton(text: "Send",backgroundColor: Colors.blue,height: 50, width: 100,onPressed: () {
            Get.toNamed(
              Routes.confirm_registration,
              arguments:{
                'name': txtNama.text.toString(),
                'jenis_kelamin': selectedGender.value??"",
                'alamat': txtAlamat.text.toString(),
                'email': txtEmail.text.toString(),
                'no_wa': txtNoWA.text.toString(),
                },
            );
          },
          ),
        ],
      ),
    );
  }
}