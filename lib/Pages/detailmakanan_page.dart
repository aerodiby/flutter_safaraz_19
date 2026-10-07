import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/listmakanan_ctr.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final makanan = Get.arguments["makanan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Makanan"),),
      body: Container( width : double.infinity, margin: EdgeInsets.all(25),
        child: Card(
          elevation : 10,
          child : Column(
            children: [
              Text(makanan.namaMakanan, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(child: Image.network(makanan.imageUrl, height: 200, fit: BoxFit.cover)),
              Text("Rp. " + makanan.hargaMakanan, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(makanan.deskripsi, style: TextStyle(fontSize: 12)),
            ]
          )
        ),
      )
    );
  }
}