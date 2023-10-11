import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answers extends StatelessWidget {
  const Answers(this.answer, this.onTap, {super.key});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 83, 22, 161),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onTap,
      child: Text(
        answer,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(color: Colors.white),
      ),
    );
  }
}

