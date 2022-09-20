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

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
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
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "animation_screen",
        ),
      ),
      body: Center(
        child: Lottie.asset("assets/images/start_animation.json",
            repeat: false,
            reverse: true,
            animate: true,
            controller: animationController, onLoaded: (c) {
          animationController.forward();
        }),
      ),
    );
  }
}
