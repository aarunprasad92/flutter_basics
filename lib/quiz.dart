import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_screen.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 51, 124, 53),
                  Color.fromARGB(255, 239, 244, 239)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: activeScreen == 'start-screen'
                    ? StartScreen(switchScreen)
                    : QuestionsScreen(
                        onSelectAnswer: chooseAnswer,
                      ))));
  }
}
