import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: data['correct_answer'] == data['user_answer']
                            ? const Color.fromARGB(255, 5, 81, 8)
                            : const Color.fromARGB(255, 205, 128, 122),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(color: Colors.white),
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String),
                        Text(data['correct_answer'] as String),
                        Text(data['user_answer'] as String)
                      ],
                    ),
                  )
                ]),
                const SizedBox(
                  height: 30,
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
