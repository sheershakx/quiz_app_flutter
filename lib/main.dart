import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorsArgs: const [Colors.white, Colors.grey],
        ),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  GradientContainer({required this.colorsArgs, super.key});

  static const beginAlignment = Alignment.topCenter;
  final List<Color> colorsArgs;

  static const imagesList = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png'
  ];

  var selectedImage = imagesList.first;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colorsArgs, begin: beginAlignment),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(selectedImage, width: 200),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white),
                child: const Text('Roll dice'))
          ],
        ),
      ),
    );
  }

  void rollDice() {
    selectedImage = 'assets/images/dice-2.png';
  }
}

class StyledText extends StatelessWidget {
  const StyledText(this.textArg, {super.key});

  final String textArg;

  @override
  Widget build(BuildContext context) {
    return Text(
      textArg,
      style: const TextStyle(color: Colors.blueAccent, fontSize: 28),
    );
  }
}
