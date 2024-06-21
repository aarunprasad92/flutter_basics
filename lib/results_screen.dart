import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final void Function() restartQuiz;

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalNoOfQuestions = questions.length;
    final noOfCorrectlyAnsweredQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $noOfCorrectlyAnsweredQuestions out of $totalNoOfQuestions questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(height: 500, child: QuestionsSummary(summaryData)),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: restartQuiz, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
