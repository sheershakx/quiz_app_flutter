import 'package:flutter/material.dart';
import 'package:flutter_projects/data/quiz_questions.dart';
import 'package:flutter_projects/ui/quiz/answers.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions(
      {super.key,
      required this.onAnswerSelected,
      required this.onResultScreen});

  final void Function(String answer) onAnswerSelected;
  final void Function() onResultScreen;

  @override
  State<StatefulWidget> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {
  var currentQuestionIndex = 0;

  void submitAnswer(String answer) {
    setState(() {
      if (currentQuestionIndex < quizQuestions.length - 1) {
        widget.onAnswerSelected(answer);
        currentQuestionIndex++;
      } else {
        widget.onAnswerSelected(answer);
        widget.onResultScreen();
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = quizQuestions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                color: Colors.white.withAlpha(180),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map(
                (answer) => Answers(answer, () {
                  submitAnswer(answer);
                }),
              ),
        ],
      ),
    );
  }
}
