import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _diceState();
}

class _diceState extends State<Dice> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  void ChangeDiceNumber() {
    LeftDiceNumber = Random().nextInt(6) + 1;
    RightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          body: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        ChangeDiceNumber();
                      });
                    },
                    child: Image.asset('images/dice$LeftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        ChangeDiceNumber();
                      });
                    },
                    child: Image.asset('images/dice$RightDiceNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
