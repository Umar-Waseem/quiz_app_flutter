import 'option_model.dart';

class QuestionModel {
  String? question;
  String? correctAnswer;
  String? explanation;
  String? optionSelected;
  List<OptionModel>? options;
  bool? status; // true, false

  QuestionModel({
    this.question,
    this.correctAnswer,
    this.explanation,
    this.optionSelected,
    this.options,
    this.status,
  });

  // compareTo(QuestionModel b) {}

}
