import 'package:flutter/material.dart';

import '../themes/custom_text_theme.dart';
import 'question_model.dart';

class QuizModel {
  String? quizId;
  String? quizTitle;
  String? quizDescription;
  String? quizImageUrl;
  // int? quizTime;
  List<QuestionModel>? questions;
  String? quizAnimationUrl;

  QuizModel({
    this.quizId,
    this.quizTitle,
    this.quizDescription,
    this.quizImageUrl,
    // this.quizTime,
    this.questions,
    this.quizAnimationUrl,
  });

  List<Padding> get getQuestionsAnswers {
    return questions!.map(
      (e) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            title: Text(e.question!,
                style:
                    customTextThemes.headline2!.copyWith(color: Colors.grey)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Your Answer was ",
                      style: customTextThemes.headline3,
                    ),
                    Text(
                      e.status ?? false ? "Correct" : "Wrong",
                      style: customTextThemes.headline3!.copyWith(
                          color: e.status ?? false ? Colors.green : Colors.red),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Correct answer: ${e.correctAnswer!}",
                  style:
                      customTextThemes.headline3!.copyWith(color: Colors.green),
                ),
                const SizedBox(height: 10),
                Text(
                  "Explanation: ${e.explanation!}",
                  style: customTextThemes.headline3,
                ),
              ],
            ),
          ),
        );
      },
    ).toList();
  }

  // return shuffled list of questions
  List<QuestionModel> get getShuffledQuestions {
    questions!.shuffle();
    return questions!;
  }
}
