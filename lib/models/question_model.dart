import 'option_model.dart';

class QuestionModel {
  String? question;
  String? correctAnswer;
  String? explanation;
  String? optionSelected;
  List<OptionModel>? options;

  QuestionModel({
    this.question,
    this.correctAnswer,
    this.explanation,
    this.optionSelected,
    this.options,
  });
}
