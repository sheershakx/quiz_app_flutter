import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<StatefulWidget> {
  var currentDice = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$currentDice.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: Colors.purple, foregroundColor: Colors.white),
          child: const Text('Roll dice'),
        ),
      ],
    );
  }

  void rollDice() {
    setState(() {
      currentDice = random.nextInt(6) + 1;
    });
  }
}
