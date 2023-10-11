import 'package:flutter/material.dart';
import 'package:flutter_projects/ui/quiz/quiz_result.dart';
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
   List<String> selectedAnswers = [];

  @override
  void initState() {
    selectedScreen = QuizHome(changeScreen);
    super.initState();
  }

  void saveAnswers(String answer) {
    selectedAnswers.add(answer);
  }

  void changeScreen() {
    setState(() {
      selectedScreen = QuizQuestions(
        onAnswerSelected: saveAnswers,
        onResultScreen: gotoResultScreen,
      );
    });
  }

  void gotoHomeScreen() {
    setState(() {
      selectedAnswers=[];
      selectedScreen = QuizHome(changeScreen);
    });
  }

  void gotoResultScreen() {
    print("Submitted answers size= ${selectedAnswers.length}");
    setState(() {
      selectedScreen = QuizAnswers(
        submittedAnswers: selectedAnswers,
        onRestartQuiz: gotoHomeScreen,
      );
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
