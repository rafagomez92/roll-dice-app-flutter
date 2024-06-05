import 'package:first_app/screens/dice_screen.dart';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: const DiceScreen());
  }
}