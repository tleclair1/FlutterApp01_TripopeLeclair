import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Row and Column Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildColumnOne(),
            buildColumnTwo(),
            buildColumnThree(),
          ],
        ),
      ),
    );
  }

  Widget buildColumnOne() => Column(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 3)),
            child: Center(
              child: Text("Container 1"),
            ),
          ),
          Transform.rotate(
            angle: pi / 4,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: Center(
                child: Text("Container 2"),
              ),
            ),
          ),
        ],
      );

  Widget buildColumnTwo() => Column(
        children: [
          Expanded(
            flex: 1,
            child: Text("Container 3"),
          ),
          Expanded(
            flex: 1,
            child: Text("Container 4"),
          ),
        ],
      );

  Widget buildColumnThree() => Column(
        children: [
          Expanded(
            flex: 1,
            child: Text("Container 5"),
          ),
          Expanded(
            flex: 1,
            child: Text("Con 6"),
          ),
        ],
      );
}
