import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.orange,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefDiceNumber = 1;
  int rightDiceNumber = 1;
  //int DiceNumber = 1;

  void diceFacechange() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      lefDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  //diceFacechange();
                },
                child: Image.asset('images/dice$lefDiceNumber.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  //diceFacechange();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        FlatButton(
          color: Colors.indigo,
          textColor: Colors.white,
          //disabledColor: Colors.indigo, //background color
          //disabledTextColor: Colors.white,//text color
          padding: EdgeInsets.all(40.0),
          shape: CircleBorder(),
          onPressed: () {
            diceFacechange();
          },
          child: Text(
            'CLICk',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
