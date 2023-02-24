import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    void fn() {
      num = Random().nextInt(5) + 1;
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  fn();
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        ],
      ),
    );
  }
}
