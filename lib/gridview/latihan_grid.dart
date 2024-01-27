import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});

  @override
  var data = 1;
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: 470,
          height: 350,
          margin: EdgeInsets.all(10),
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 3,
            children: List.generate(
                26,
                (index) => Container(
                    child: Card(
                      color: Colors.amber,
                        child: Center(
                          child: Text("${String.fromCharCode(64 + data++)}"),
                      ),
                    ),
                  )),
          ),
        ),
        GridView.count(
          crossAxisCount: 1,
          // crossAxisSpacing: Checkbox.width,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              child: Center(
                child: FlutterLogo(size: 150),
              ),
            ),
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              child: Center(
                child: FlutterLogo(size: 150),
              ),
            ),
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              child: Center(
                child: FlutterLogo(size: 150),
              ),
            ),
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              child: Center(
                child: FlutterLogo(size: 150),
              ),
            ),
          ],
        )
      ],
    );
  }
}