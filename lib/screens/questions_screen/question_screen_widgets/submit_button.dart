import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/models/quiz_model.dart';

import '../../result_screen/result_screen.dart';
import '../questions_screen.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.widget,
    required this.quizModel,
  }) : super(key: key);

  final QuizModel quizModel;

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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ResultScreen(
                  totalQuestions: widget.quizModel.questions!.length,
                  score: score,
                  quizModel: widget.quizModel,
                );
              },
            ),
          );
        },
        child: const Text("Submit"),
      ),
    );
  }
}
