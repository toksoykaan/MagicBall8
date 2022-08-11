import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BallPageStateful();
  }
}

class BallPageStateful extends StatefulWidget {
  @override
  State<BallPageStateful> createState() => _BallPageStatefulState();
}

class _BallPageStatefulState extends State<BallPageStateful> {
  int ballImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballImageNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballImageNumber.png'),
      ),
    );
  }
}
