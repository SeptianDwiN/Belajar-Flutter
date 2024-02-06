import 'package:flutter/material.dart';

class OutputForm extends StatelessWidget {
  final String nama , jumlah ,tgl , tujuan , harga ,img ,total;
  
   OutputForm(
    {Key? key,
    required this.nama,
    required this.jumlah,
    required this.tgl,
    required this.tujuan,
    required this.harga,
    required this.img,
    required this.total,
    })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tiket "),
      ),
      body: SafeArea(
        child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          child: Padding(

            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                Image.asset(
                  "${img}",
                  fit: BoxFit.cover,
                  
                ),
                ListTile(
                  title: Text("Nama : $nama"),
                ),
                ListTile(
                  title: Text("Tujuan : $tujuan"),
                ),
                ListTile(
                  title: Text("Jumlah : $jumlah"),
                ),
                ListTile(
                  title: Text("Tanggal Keberangkatan : $tgl "),
                ),
                ListTile(
                  title: Text("Harga : $harga "),
                ),
                ListTile(
                  title: Text("Total Harga :Rp. $total "),
                ),
                
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}