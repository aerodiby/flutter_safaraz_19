import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/controller/home_ctr.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SizedBox(
          height: 110,
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listMakanan.length, 
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];
                return InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.detailmakanan,
                      arguments: {"makanan": makanan},
                    );
                  },
                  child: SizedBox(
                    width: 280,
                    child: Card(
                      child: ListTile(
                        title: Text(makanan.namaMakanan),
                        subtitle: Text("Rp. " + makanan.hargaMakanan),
                        trailing: Icon(Icons.arrow_forward_ios),
                        leading: Image.network(
                          makanan.imageUrl,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}