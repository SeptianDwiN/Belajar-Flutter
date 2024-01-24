import 'package:flutter/material.dart';

class BelajarListbuilder extends StatelessWidget {
   BelajarListbuilder({super.key});

  final List<Color> colorList = [Colors.green, Colors.red, Colors.blue];
  final List<String> textList = [
    "Partai Kabah",
    "Partai Banteng",
    "Partai JJ"]
    ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 300,
              width: 200,
              color:  colorList[index],
              child: Center(
                child: Text(textList[index]),
              ),
            );
          }),
    );
  }
}
