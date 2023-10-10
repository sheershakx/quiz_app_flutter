import 'package:flutter/material.dart';
import 'package:flutter_projects/dice_roller.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorsArgs: [Colors.white, Colors.grey],
        ),
      ),
    ),
  );
}

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
