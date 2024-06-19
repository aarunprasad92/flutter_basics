import 'package:first_app/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question 1',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer1', onTap: () {}),
          AnswerButton(answerText: 'Answer2', onTap: () {}),
          AnswerButton(answerText: 'Answer33', onTap: () {}),
          AnswerButton(answerText: 'Answer44', onTap: () {}),
        ],
      ),
    );
  }
}
