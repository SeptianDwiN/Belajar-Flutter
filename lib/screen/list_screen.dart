import 'package:belajar/screen/detail_nature.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListNatureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> natureData = [
    {
      "nama": "Karimun Jawa",
      "image": "images/1.jpg",
      "desc":
          "Karimunjawa merupakan wilayah kepulauan di utara Pulau Jawa. Kepulauan Karimunjawa secara administratif merupakan kecamatan dari   daerah Kabupaten Jepara yang berjarak kurang lebih 45 mil arah barat laut dari Kota Jepara..."
    },
    {
      "nama": "Pulau Seribu", 
      "image": "images/2.jpg", 
      "desc": "Kepulauan ini terdiri dari 110 pulau yang berpenghuni dan juga tidak berpenghuni yang terletak sejajar seperti rantai. semuanya dihiasi oleh pasir-pasir dan terumbu karang yang cukup eksotis...."},
    {
      "nama": "Te Fiti",
      "image": "images/3.jpg",
      "desc":
          "Pulau Te Fiti diilustrasikan sebagai pulau yang sangat hijau dan subur. Dengan gunung api yang aktif dan dihuni oleh berbagai jenis makhluk laut dan satwa liar. Pulau tersebut menjadi sumber kehidupan bagi penduduk di sekitarnya, dan juga merupakan tempat di mana jantung Te Fiti berada..."
    },
    {
      "nama": "Pulau Komodo",
      "image": "images/4.jpg",
      "desc":
          "Pulau Komodo adalah sebuah pulau yang terletak di Kepulauan Nusa Tenggara, berada di sebelah timur Pulau Sumbawa, yang dipisahkan oleh Selat Sape. Pulau Komodo dikenal sebagai habitat asli hewan komodo. Pulau ini termasuk salah satu kawasan Taman Nasional Komodo yang dikelola oleh Pemerintah Pusat..."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
        child: ListView.builder(
            itemCount: natureData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailNature(
                            nama: natureData[index]["nama"],
                            image: natureData[index]["image"],
                            desc: natureData[index]["desc"]),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    height: displayHeight(context) * 0.25,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("${natureData[index]["image"]}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Text(
                          "${natureData[index]["nama"]}",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                          ),
                        )),
                  ));
            }),
      ),
    );
  }
}
