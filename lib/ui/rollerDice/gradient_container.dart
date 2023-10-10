import 'package:flutter/material.dart';

import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colorsArgs, super.key});

  static const beginAlignment = Alignment.topCenter;
  final List<Color> colorsArgs;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colorsArgs, begin: beginAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
