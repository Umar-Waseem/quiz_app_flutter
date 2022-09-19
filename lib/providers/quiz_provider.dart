import 'package:flutter/cupertino.dart';

import '../models/quiz_card_widget.dart';
import '../models/quiz_model.dart';

import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class QuizProvider with ChangeNotifier {
  final List<QuizModel> _models = [
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Sports",
      quizDescription: "Your sports knowledge will be tested here.",
      quizImageUrl: "assets/images/sports.jpg",
    ),
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Science",
      quizDescription: "Your science knowledge will be tested here.",
      quizImageUrl: "assets/images/science.jpg",
    ),
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "History",
      quizDescription: "Your history knowledge will be tested here.",
      quizImageUrl: "assets/images/history.jpg",
    ),
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Geography",
      quizDescription: "Your geography knowledge will be tested here.",
      quizImageUrl: "assets/images/geography.jpg",
    ),
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Politics",
      quizDescription: "Your politics knowledge will be tested here.",
      quizImageUrl: "assets/images/politics.jpg",
    ),
    QuizModel(
      quizId: uuid.v1(),
      quizTitle: "Entertainment",
      quizDescription: "Your entertainment knowledge will be tested here.",
      quizImageUrl: "assets/images/entertainment.jpg",
    ),
  ];

  List<QuizModel> get quizes => [..._models];

  List<QuizCard> get getQuizCards => _models
      .map(
        (quiz) => QuizCard(
          id: quiz.quizId!,
          title: quiz.quizTitle!,
          description: quiz.quizDescription!,
          imageUrl: quiz.quizImageUrl!,
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
