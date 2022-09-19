import 'question_model.dart';

class QuizModel {
  String? quizId;
  String? quizTitle;
  String? quizDescription;
  String? quizImageUrl;
  // int? quizTime;
  List<QuestionModel>? questions;

  QuizModel({
    this.quizId,
    this.quizTitle,
    this.quizDescription,
    this.quizImageUrl,
    // this.quizTime,
    this.questions,
  });
}
