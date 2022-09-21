import 'package:flutter/material.dart';

import '../../result_screen/result_screen.dart';
import '../questions_screen.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final QuestionsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.only(top: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(20),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                totalQuestions: widget.quizModel.questions!.length,
                score: score,
              ),
            ),
          );
        },
        child: const Text("Submit"),
      ),
    );
  }
}
