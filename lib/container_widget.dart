import 'package:flutter/material.dart';

//container adalah wadah untuk menampung widget lain   
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
     decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.cyanAccent, Colors.indigoAccent],
      ),
      borderRadius: BorderRadius.circular(10)
     ),
     child: Kedua(),
    );
  }
}

class Kedua extends StatelessWidget {
  const Kedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
     decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blueAccent, Colors.yellowAccent],
      ),
      borderRadius: BorderRadius.circular(10)
     ),
     child: Ketiga(),
    );
  }
}

class Ketiga extends StatelessWidget {
  const Ketiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
     decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.redAccent, Colors.greenAccent],
      ),
      borderRadius: BorderRadius.circular(10)
     ),
     child: Empat(),
    );
  }
}



class Empat extends StatelessWidget {  
  const Empat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
     decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/10/14/299495288_2001243620059694_4721678242684064527_n-2815195294.jpg"),
        fit: BoxFit.fill
      ),
      borderRadius: BorderRadius.circular(10)
     ),
    );
  }
}
