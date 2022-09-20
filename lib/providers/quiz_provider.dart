import 'package:flutter/cupertino.dart';

import '../models/quiz_card_widget.dart';
import '../models/quiz_model.dart';

import 'package:uuid/uuid.dart';

import 'questions.dart';

var uuid = const Uuid();

class QuizProvider with ChangeNotifier {
  final List<QuizModel> _models = [
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Sports",
      quizDescription:
          "This quiz consists of questions related to the field of sports. Your knowledge of different sports will be tested.",
      quizImageUrl: "assets/images/sports.jpg",
      quizAnimationUrl: "assets/images/sports_animation.json",
    ),
    QuizModel(
        quizId: uuid.v1(),
        quizTitle: "Science",
        quizDescription: "Your science knowledge will be tested here.",
        quizImageUrl: "assets/images/science.jpg",
        quizAnimationUrl: "assets/images/science_animation.json"),
    QuizModel(
        quizId: uuid.v1(),
        quizTitle: "History",
        quizDescription: "Your history knowledge will be tested here.",
        quizImageUrl: "assets/images/history.jpg",
        quizAnimationUrl: "assets/images/history_animation.json"),
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Geography",
      quizDescription: "Your geography knowledge will be tested here.",
      quizImageUrl: "assets/images/geography.jpg",
      quizAnimationUrl: "assets/images/geography_animation.json",
      questions: questions["Geography"],
    ),
    QuizModel(
        quizId: uuid.v1(),
        quizTitle: "Politics",
        quizDescription: "Your politics knowledge will be tested here.",
        quizImageUrl: "assets/images/politics.jpg",
        quizAnimationUrl: "assets/images/politics_animation.json"),
    QuizModel(
        quizId: uuid.v1(),
        quizTitle: "Entertainment",
        quizDescription: "Your entertainment knowledge will be tested here.",
        quizImageUrl: "assets/images/entertainment.jpg",
        quizAnimationUrl: "assets/images/entertainment_animation.json"),
  ];

  List<QuizModel> get quizes => [..._models];

  List<QuizCard> get getQuizCards => _models
      .map(
        (quiz) => QuizCard(
          qModel: quiz,
        ),
      )
      .toList();

  void addQuiz(QuizModel model) {
    _models.add(model);
    notifyListeners();
  }

  void addById(String id) {
    _models.add(QuizModel(quizId: id));
    notifyListeners();
  }

  void removeQuiz(QuizModel model) {
    _models.remove(model);
    notifyListeners();
  }

  void removeById(String id) {
    _models.removeWhere((element) => element.quizId == id);
    notifyListeners();
  }

  void updateQuiz(QuizModel model) {
    _models.removeWhere((element) => element.quizId == model.quizId);
    notifyListeners();
  }

  void updateById(String id) {
    _models.removeWhere((element) => element.quizId == id);
    notifyListeners();
  }
}
