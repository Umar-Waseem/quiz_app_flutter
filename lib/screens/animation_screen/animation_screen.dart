import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../models/quiz_model.dart';
import '../questions_screen/questions_screen.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key, required this.quizModel});

  final QuizModel quizModel;

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        PageRouteBuilder(
          transitionsBuilder: (c, anim, a2, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                      .animate(anim),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, a, b) {
            return QuestionsScreen(
              quizModel: widget.quizModel,
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/images/start_animation.json",
          repeat: false,
          reverse: true,
          animate: true,
        ),
      ),
    );
  }
}
