import 'package:flutter/material.dart';
import 'dart:math';

// Widget randimg() {
//   var value = Random().nextInt(5);
//   value++;
//   return Image.asset('images/dice${value}.png');
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int rightval = 4;
    int leftval = 2;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: TextButton(
                  // style: ButtonStyle(
                  //   padding: MaterialStateProperty.all(EdgeInsets.zero),
                  // ),
                  onPressed: () {
                    setState(() {
                      leftval = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice${leftval}.png'),
                )),
            Expanded(
              flex: 1,
              child: TextButton(
                child: Image.asset('images/dice${rightval}.png'),
                onPressed: () {
                  setState(() {
                    rightval = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
