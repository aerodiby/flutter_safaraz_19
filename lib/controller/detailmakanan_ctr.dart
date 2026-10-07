import 'package:flutter_application_1/models/listmakanan_model.dart';
import 'package:get/get.dart';

class DetailmakananCtr extends GetxController {
  late MakananModel makanan;

  @override
  void onInit(){
    super.onInit();
    final argument = Get.arguments;
    makanan = argument["makanan"];
  }
}