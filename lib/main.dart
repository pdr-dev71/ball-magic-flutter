import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Ball(),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Me pergunte algo'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('assets/images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
