import 'package:flutter/material.dart';

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
