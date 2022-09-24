import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/models/quiz_model.dart';

import '../../themes/custom_text_theme.dart';

class SeeAnswersScreen extends StatefulWidget {
  const SeeAnswersScreen({
    super.key,
    required this.quizModel,
  });

  final QuizModel quizModel;

  @override
  State<SeeAnswersScreen> createState() => _SeeAnswersScreenState();
}

class _SeeAnswersScreenState extends State<SeeAnswersScreen> {
  // List<Padding> questionToShow = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Correct Answers"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                "Correct Answers",
                style: customTextThemes.headline1,
              ),
              const SizedBox(height: 20),
              ListView(
                shrinkWrap: true,
                children: widget.quizModel.getQuestionsAnswers,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
