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
            decoration: BoxDecoration(),
            child: Text("Container 1"),
          ),
          Transform.rotate(
            angle: 0,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(),
              child: Text("Container 2"),
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
            child: Text("Container 3"),
          ),
          Expanded(
            flex: 1,
            child: Text("Container 4"),
          ),
        ],
      );
}
