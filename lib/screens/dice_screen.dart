import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
    var activeDiceImage = 'assets/images/dice-2.png';

    rollDice(){
      var diceRoll = Random().nextInt(6) + 1;
      setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';        
      });
    }

  @override
  Widget build(BuildContext context) {


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(activeDiceImage),
        TextButton(onPressed: rollDice, style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20), foregroundColor: Colors.white, textStyle: TextStyle(fontSize: 28)),child: const Text('Roll Dice'),)
      ],
    );
  }
}