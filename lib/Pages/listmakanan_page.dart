import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/listmakanan_ctr.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListmakananCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),

                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.detailmakanan,
                      arguments: {"makanan": makanan},
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(makanan.namaMakanan),
                      subtitle: Text("Rp. " + makanan.hargaMakanan),
                      trailing: Icon(Icons.arrow_forward_ios),
                      leading: Image.network(
                        makanan.imageUrl,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
