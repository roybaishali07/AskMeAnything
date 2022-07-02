import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 72, 125),
          title: Text('Ask Me Anything'),
        ),
        body: ball(),
      ),
    );
  }
}

class ball extends StatefulWidget {
  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  @override
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Expanded(
        child: Column(
          children: [
            Center(
              child: TextButton(
                  onPressed: (() {
                    setState(() {
                      ballNumber = Random().nextInt(5)+1;
                    });
  
                  }),
                  child: Image.asset('images/ball$ballNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
