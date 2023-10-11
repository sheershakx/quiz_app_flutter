import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/data/quiz_questions.dart';
import 'package:flutter_projects/ui/quiz/result.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizAnswers extends StatelessWidget {
  const QuizAnswers(
      {super.key, required this.submittedAnswers, required this.onRestartQuiz});

  final List<String> submittedAnswers;
  final Function() onRestartQuiz;

  @override
  Widget build(context) {
    int matchedAnswerCount = submittedAnswers.where((answer) {
      int index = submittedAnswers.indexOf(answer);
      return quizQuestions[index].answers.first.contains(answer);
    }).length;
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $matchedAnswerCount out of ${quizQuestions.length} questions correctly!!',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 350,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...quizQuestions.mapIndexed(
                    (index, questions) => Result(
                        index: index + 1,
                        question: questions.question,
                        submittedAnswer: submittedAnswers[index],
                        actualAnswer: questions.answers.first),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(249, 107, 49, 190)),
            onPressed: () {
              onRestartQuiz();
            },
            icon: const Icon(
              Icons.restart_alt,
              color: Colors.white,
            ),
            label: Text(
              'Restart Quiz',
              style: GoogleFonts.lato(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
