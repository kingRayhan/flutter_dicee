import 'dart:math';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int diceNumber1 = Random().nextInt(6) + 1;
  int diceNumber2 = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            dice(diceNumber: diceNumber1, onPressed: rollDice),
            dice(diceNumber: diceNumber2, onPressed: rollDice),
          ],
        ),
      ),
    );
  }

  Expanded dice({required int diceNumber, required void Function() onPressed}) {
    return Expanded(
      child: TextButton(
        child: Image.asset(
          "lib/assets/images/dice$diceNumber.png",
          width: 200,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
