import 'package:flutter/material.dart';

class latihan2 extends StatelessWidget {
  const latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(3),
     decoration: BoxDecoration(
    color: Color.fromARGB(255, 82, 130, 235),),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network("https://awsimages.detik.net.id/community/media/visual/2018/03/27/df65de8d-94f2-40cb-a943-c4376b89a18e_169.jpeg?w=600&q=90", width: 150, height: 160,),
            Text("Persib")
          ],
        ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMKokOvynJBU0HsbkuDZI6AzePtxgW7-Yxxu5XgIop542jcZIWxYTHVgpnoPWNVKG27nQ&usqp=CAU", width: 150, height: 160,),
            Text("Persib")
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Image.network("https://awsimages.detik.net.id/community/media/visual/2022/03/14/ilustrasi-persib-bandung_169.jpeg?w=1200", width: 150, height: 160,),
            Text("Persib")
        ],
      )
      ]),
    );
  }
}
