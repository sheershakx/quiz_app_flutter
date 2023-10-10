import 'package:flutter/material.dart';
import 'package:flutter_projects/data/quiz_questions.dart';
import 'package:flutter_projects/ui/quiz/answers.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {
  var currentQuestionIndex = 0;

  void submitAnswer() {
    setState(() {
      if (currentQuestionIndex < quizQuestions.length - 1) {
        currentQuestionIndex++;
      } else {
        ///end of question list, display answers verification screen
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
            style: const TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map(
                (answer) => Answers(answer, () {
                  submitAnswer();
                }),
              ),
        ],
      ),
    );
  }
}
