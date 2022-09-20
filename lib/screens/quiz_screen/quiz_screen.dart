import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_flutter/themes/custom_text_theme.dart';

import '../../models/quiz_model.dart';
import '../animation_screen/animation_screen.dart';
import 'quiz_screen_widgets/sliver_app_bar_widget.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    super.key,
    required this.quizModel,
  });

  final QuizModel quizModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(
            id: quizModel.quizId.toString(),
            imageUrl: quizModel.quizImageUrl.toString(),
            title: quizModel.quizTitle.toString(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    quizModel.quizDescription.toString(),
                    style: customTextThemes.headline2,
                  ),
                ),
                Lottie.asset(
                  quizModel.quizAnimationUrl.toString(),
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
                            quizModel: quizModel,
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
