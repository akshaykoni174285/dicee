import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff4C566A),
        appBar: AppBar(
          backgroundColor: Color(0xffD08770),
          title: Text(
            "Dicee",
            style: TextStyle(
              color: Color(0xffD8DEE9),
            ),
          ),
          centerTitle: true,
          titleSpacing: 1.5,
        ),
        body: Row(
          children: [
            Expanded(
              child: Image.asset('images/dice1.png'),
            ),
            Expanded(
              child: Image.asset('images/dice1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
