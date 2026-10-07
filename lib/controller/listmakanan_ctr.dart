import 'package:flutter_application_1/models/listmakanan_model.dart';
import 'package:get/get.dart';

class ListmakananCtr extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam Lamongan",
      hargaMakanan: "15.000",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4fS3zkbkVTKO8wmjIa3_woMyg3BOPPz25oceaR9UdMQ&s=10",
      deskripsi: "Soto ayam khas Lamongan dengan kuah kuning kaya rempah yang gurih dan hangat. Disajikan lengkap dengan suwiran daging ayam empuk, soun, tauge, taburan bubuk koya gurih, serta perasan jeruk nipis dan sambal pedas.",
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: "18.000",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlQQlRIwd0bChe0Ek7T1i6mJcvSUUYCHYwI6kqy6TprQ&s=10",
      deskripsi: "Nasi goreng beraroma smoky khas wajan panas, dipadukan bumbu racikan tradisional manis gurih. Dilengkapi potongan daging ayam, sosis, bakso, telur mata sapi setengah matang, acar segar, dan kerupuk renyah.",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: "22.000",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-9-ZBb3EUrl-W6hGto151fV2DK0BQQbJtxxZbMyxdnQ&s=10",
      deskripsi: "Potongan daging ayam pilihan yang dimarinasi bumbu ketumbar dan dibakar sempurna di atas arang. Disiram bumbu kacang kental bercita rasa manis gurih, kecap manis premium, irisan bawang merah segar, dan potongan cabai rawit.",
    ),
    MakananModel(
      namaMakanan: "Rendang Daging Sapi",
      hargaMakanan: "25.000",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9M10L-x0uAEpuZQpvJ6np_0xc2OwW6joxLwOkDUO4YA&s",
      deskripsi: "Olahan daging sapi empuk khas Minangkabau yang dimasak perlahan bersama santan kelapa murni dan aneka rempah pilihan hingga bumbunya meresap pekat dan berwarna cokelat kehitaman yang kaya rasa.",
    ),
    MakananModel(
      namaMakanan: "Bakso Kuah Urat",
      hargaMakanan: "16.000",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9MmbT_ObDlNg7hrzsc7MnW4NbfOwt_hgHCXLP2dxMbQ&s=10",
      deskripsi: "Sajian bakso urat berdaging tebal dan bertekstur kenyal nikmat, berpadu dengan kuah kaldu sapi bening yang gurih beraroma bawang putih. Dihidangkan bersama mie kuning, bihun, tahu baso, seledri, dan pangsit goreng.",
    ),
    MakananModel(
      namaMakanan: "Ayam Geprek Sambal Bawang",
      hargaMakanan: "14.000",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROK6x8o0Dp3VWU45cp2w0xy0Su9A4HW535kF4vYhuC6Q&s=10",
      deskripsi: "Ayam goreng tepung renyah keemasan bertekstur crispy yang digeprek langsung bersama ulekan kasar cabai rawit pedas dan bawang putih segar yang disiram minyak panas aromatik.",
    ),
  ];
}
