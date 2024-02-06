import 'package:belajar/screen/latihan_output.dart';
import 'package:flutter/material.dart';
import 'package:belajar/helpers/size_helper.dart';
import 'package:intl/intl.dart';

class LatihanForm extends StatefulWidget {
  const LatihanForm({super.key});

  @override
  State<LatihanForm> createState() => _LatihanFormState();
}

class _LatihanFormState extends State<LatihanForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihTujuan = "";
  final List<String> tujuan = [
    "Karimmun Jawa",
    "Pulau Seribu",
    "Te Fiti",
    "Pulau Komodo",
  ];

  void initState() {
    tglController.text = '';
    super.initState();
  }

  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tiket",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                              controller: namaController,
                              decoration: InputDecoration(
                                hintText: "Nama Lengkap",
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Input Nama';
                                }
                                return null;
                              }),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                hintText: "Tujuan",
                                labelText: "Pilih Tujuan",
                                border: OutlineInputBorder()),
                            items: tujuan.map((String items) {
                              int index = 0;
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _pilihTujuan = newValue!;
                              });
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: jumlahController,
                            decoration: InputDecoration(
                              hintText: "Jumlah",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Jumlah';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: tglController,
                            decoration: InputDecoration(
                              hintText: "Tanggal",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Tanggal';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                String tgl =
                                    DateFormat('yyy-MM-dd').format(pickedDate);
                                setState(() {
                                  tglController.text = tgl;
                                });
                              } else {
                                print("tanggal tidak di pilih");
                              }
                            },
                          ),
                          SizedBox(height: 18),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              // width: displayWidth(context) * 0.8,
                              height: displayHeight(context) * 0.075,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 66, 45, 43)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  _submit();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      int harga = 0;
      String nama = namaController.text;
      String jumlah = jumlahController.text;
      String tujuan = _pilihTujuan;
      String tgl = tglController.text;
      String img = "";

      if (tujuan == "Karimun Jawa") {
        harga = 500000;
        img = "../assets/images/1.jpg";
      } else if (tujuan == "Pulau Seribu") {
        harga = 550000;
        img = "../assets/images/2.jpg";
      } else if (tujuan == "Te Fiti") {
        harga = 700000;
        img = "../assets/images/3.jpg";
      } else if (tujuan == "Pulau Komodo") {
        harga = 650000;
        img = "../assets/images/4.jpg";
      } 
      int total = harga * int.parse(jumlah);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OutputForm(
                nama: nama,
                jumlah: jumlah,
                tgl: tgl,
                tujuan: tujuan,
                harga: harga.toString(),
                total: total.toString(),
                img: img),
          ));
    }
  }
}
