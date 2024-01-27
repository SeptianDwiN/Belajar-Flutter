import 'package:flutter/material.dart';

class Gridcount extends StatelessWidget {
  final List<String> data = List<String>.generate(
    26,
    (index) => String.fromCharCode('A'.codeUnitAt(0) + index),
  );

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        26,
        (index) => Container(
          child: Card(
            color: Colors.amber,
            child: Center(
              child: Text("${data[index]}"),
            ),
          ),
        ),
      ),
    );
  }
}
