import 'package:belajar/screen/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Text("Second Screen")),
            SizedBox(
              height: 18,
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.pushNamed(context, 'Third');
            //   },
            //   child: Container(
            //     color: Colors.blue,
            //     child: Text("Third"),
            //   ),
            // )
             ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdScreen(),
                    ),
                  );
                },
                child: Text("Third Screen")),
          ],
        ),
      ),
    );
  }
}
