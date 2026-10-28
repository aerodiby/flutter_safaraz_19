import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/detailmakanan_ctr.dart';
import 'package:flutter_application_1/controller/listmakanan_ctr.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final makanan = Get.put(DetailmakananCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Makanan")),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(25),
        child: Card(
          elevation: 100,
            child: Column(
              children: [
                Text(
                  makanan.makanan.namaMakanan,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                SizedBox(
                  child: Image.network(
                    makanan.makanan.imageUrl,
                    height: 200,
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Rating: " + makanan.makanan.rating,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 184, 119, 35)),
                ),
                SizedBox(height: 15),
                Text(
                  "Rp. " + makanan.makanan.hargaMakanan,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text(
                    makanan.makanan.deskripsi,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
