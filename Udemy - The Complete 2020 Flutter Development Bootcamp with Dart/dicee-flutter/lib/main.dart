import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange[900],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepOrange[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumb = 1;
  int rightNumb = 1;
  void getRand() {
    setState(() {
      leftNumb = Random().nextInt(6) + 1;
      rightNumb = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                getRand();
              },
              child: Image.asset('images/dice$leftNumb.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                getRand();
              },
              child: Image.asset('images/dice$rightNumb.png'),
            ),
          ),
        ],
      ),
    );
  }
}
