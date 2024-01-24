import 'package:flutter/material.dart';


class BelajarListbasic extends StatelessWidget {
  const BelajarListbasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.blue,
            child: Text("List"),
          ),
           Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.red,
            child: Text("List"),
          ),
           Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.green,
            child: Text("List"),
          ),
           Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.yellow,
            child: Text("List"),
          ),
        ],
      ),
    );
  }
}