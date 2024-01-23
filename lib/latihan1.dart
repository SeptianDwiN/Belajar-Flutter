import 'package:flutter/material.dart';

class latihan1 extends StatelessWidget {
  const latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("data"),
                FlutterLogo(size: 30,)
              ],
            ),
            Column(
              children: [
                Text("data"),
                FlutterLogo(size: 30,),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 30,),
          ],
        ),  
       
       Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("data"),
                FlutterLogo(size: 30,)
              ],
            ),
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data"),
            FlutterLogo(size: 30,),
          ],
        ),
          ],
        ),
      ],
    );
  }
}