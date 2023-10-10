import 'package:flutter/material.dart';
import 'package:flutter_projects/ui/quiz/quiz_home.dart';
import 'package:flutter_projects/ui/quiz/quiz_questions.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  Widget? selectedScreen;

  @override
  void initState() {
    selectedScreen = QuizHome(changeScreen);
    super.initState();
  }

  void changeScreen() {
    setState(() {
      selectedScreen = const QuizQuestions();
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.deepPurple),
      child: Center(
        child: selectedScreen,
      ),
    );
  }
}
