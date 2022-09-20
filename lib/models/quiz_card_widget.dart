import 'package:flutter/material.dart';

import '../screens/quiz_screen/quiz_screen.dart';
import '../themes/custom_text_theme.dart';
import 'quiz_model.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    Key? key,
    required this.qModel
  }) : super(key: key);

  final QuizModel qModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => QuizScreen(
              quizModel: qModel,
            ),
          ),
        );
      },
      child: SizedBox(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.white,
          elevation: 15,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Hero(
                  tag: qModel.quizId.toString(),
                  child: Image.asset(
                    qModel.quizImageUrl.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.white.withOpacity(0.6),
                    ],
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  qModel.quizTitle.toString(),
                  style: customTextThemes.headline2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
