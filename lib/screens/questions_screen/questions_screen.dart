import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_flutter/models/quiz_model.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.quizModel});
  final QuizModel quizModel;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Lottie.asset(
        "assets/images/start_animation.json",
        repeat: true,
        reverse: true,
        animate: true,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.quizModel.quizTitle.toString()),
        ),
        body: SingleChildScrollView(
          child: Column(children: const []),
        ),
      ),
    );
  }
}
