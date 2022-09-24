import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_flutter/themes/custom_text_theme.dart';

import '../../models/quiz_model.dart';
import '../animation_screen/animation_screen.dart';
import 'quiz_screen_widgets/sliver_app_bar_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    required this.quizModel,
  });

  final QuizModel quizModel;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    widget.quizModel.questions!.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(
            id: widget.quizModel.quizId.toString(),
            imageUrl: widget.quizModel.quizImageUrl.toString(),
            title: widget.quizModel.quizTitle.toString(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    widget.quizModel.quizDescription.toString(),
                    style: customTextThemes.headline2,
                  ),
                ),
                Lottie.asset(
                  widget.quizModel.quizAnimationUrl.toString(),
                  repeat: true,
                  reverse: true,
                  animate: true,
                ),
                // Expanded(child: Container()),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AnimationScreen(
                            quizModel: widget.quizModel,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.navigate_next_outlined),
                    label: const Text("Start Quiz"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
