import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final VoidCallback onTap;

  const AnswerButton({
    required this.answerText,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor:
            const Color.fromARGB(255, 3, 63, 17), // Set the text color to white
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 12), // Add some padding
        shape: RoundedRectangleBorder(
          // Add rounded corners
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(answerText),
    );
  }
}
