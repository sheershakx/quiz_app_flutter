import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key,
      required this.index,
      required this.question,
      required this.submittedAnswer,
      required this.actualAnswer});

  final int index;
  final String question;
  final String submittedAnswer;
  final String actualAnswer;

  @override
  Widget build(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: submittedAnswer==actualAnswer? Colors.lightBlue : Colors.pinkAccent,
          child: Text(
            index.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17),
              ),
              Text(
                submittedAnswer,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 225, 57, 135),
                ),
              ),
              Text(
                actualAnswer,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color.fromARGB(250, 102, 160, 246)),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
