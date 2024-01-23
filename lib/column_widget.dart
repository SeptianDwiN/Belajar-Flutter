import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini isi column 1"),
        Text("Ini isi column 2"),
        Text("Ini isi column 3"),
        FlutterLogo(
          size: 50,
        )
      ],
    );
  }
}