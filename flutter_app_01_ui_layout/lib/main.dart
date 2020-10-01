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
              border: Border.all(color: Colors.black, width: 3),
            ),
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.yellow,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Container 3"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("Container 4"),
                ),
              ),
            ),
          ),
        ],
      );

  Widget buildColumnThree() => Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: Center(
                child: Text(
                  "Container 5",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Text("Con 6", style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      );
}
