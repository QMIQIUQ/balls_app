import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('The Answer Ball')),
          backgroundColor: Colors.blueGrey,
        ),
      body: BallPage(),
    ),
  ),);
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
        setState(() {
          Randomans();
        });
      },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }

  void Randomans(){
    ballNumber =Random().nextInt(5)+1;
  }

  }



