import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini Row 1"),
        Text("Ini Row 2"),
        Text("Ini Row 3"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Ini Colomn 1"),
            Text("Ini Colomn 2"),
          ],
        )
      ],
    );
  }
}