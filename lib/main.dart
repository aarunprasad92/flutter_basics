import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 51, 124, 53),
                Color.fromARGB(255, 239, 244, 239)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: const StartScreen()))));
}
