import 'package:flutter/material.dart';

const posterImage = 'assets/images/quiz-logo.png';
const titleText = 'Learning Flutter !!';
const buttonText = 'Start Quiz';

class QuizHome extends StatelessWidget {
  const QuizHome(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.6,
          child: Image.asset(posterImage, width: 300),
        ),
        const SizedBox(height: 50),
        const Text(
          titleText,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
          onPressed: switchScreen,
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF4E1B79),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: const Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
