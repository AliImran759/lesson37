import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int colorNum2 = 10;
  int colorNum3 = 10;
  int colorNum4 = 10;
  double width = 16;
  double height = 16;

  // @override
  // void initState() {
  //   name = 'AliImran';
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   log("Dispose");
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute<void>(
          //         builder: (BuildContext context) => SecondScreen()),
          //     (route) => false);
          setState(() {
            width = Random().nextInt(100).toDouble();
            height = Random().nextInt(100).toDouble();
            colorNum2 = Random().nextInt(255).toInt();
            colorNum3 = Random().nextInt(255).toInt();
            colorNum4 = Random().nextInt(255).toInt();
          });
        },
      ),
      body: Center(child: Container(
        width: width,
        height: height,
        color: Color.fromARGB(255, colorNum2, colorNum3, colorNum4),
      )),
    );
  }
}

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(child: Text('SecondScreen')),
//     );
//   }
// }
