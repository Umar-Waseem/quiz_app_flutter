import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/models/quiz_model.dart';

import '../../themes/custom_text_theme.dart';
import 'question_screen_widgets/submit_button.dart';

int score = 0;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.quizModel});
  final QuizModel quizModel;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  void initState() {
    score = 0;

    super.initState();
  }

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.quizModel.quizTitle.toString()),
        ),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: widget.quizModel.questions!.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Question ${index + 1} of ${widget.quizModel.questions!.length}",
                    style: customTextThemes.headline2
                        ?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.quizModel.questions![index].question.toString(),
                    style: customTextThemes.headline1,
                  ),
                  QuestionAndOptions(
                    quizModel: widget.quizModel,
                    questionIndex: index,
                  ),
                  (index == widget.quizModel.questions!.length - 1)
                      ? SubmitButton(widget: widget)
                      : NextPreviousPageButton(pageController: pageController),
                  // if(index != widget.quizModel.questions!.length - 1)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NextPreviousPageButton extends StatelessWidget {
  const NextPreviousPageButton({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeIn,
              );
            },
            child: const Text("Previous Question"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeIn,
              );
            },
            child: const Text("Next Question"),
          ),
        ),
      ],
    );
  }
}

class QuestionAndOptions extends StatefulWidget {
  const QuestionAndOptions(
      {super.key, required this.quizModel, required this.questionIndex});

  final QuizModel quizModel;
  final int questionIndex;

  @override
  State<QuestionAndOptions> createState() => _QuestionAndOptionsState();
}

class _QuestionAndOptionsState extends State<QuestionAndOptions> {
  @override
  void initState() {
    for (var element in widget.quizModel.questions!) {
      element.optionSelected = "";
      for (var element in element.options!) {
        element.isSelected = false;
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          widget.quizModel.questions![widget.questionIndex].options!.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(30),
              foregroundColor: Colors.black,
              backgroundColor: widget.quizModel.questions![widget.questionIndex]
                      .options![index].isSelected!
                  ? Colors.green
                  : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              setState(
                () {
                  // ? set the selected option tile on ui
                  widget.quizModel.questions![widget.questionIndex]
                          .options![index].isSelected =
                      !widget.quizModel.questions![widget.questionIndex]
                          .options![index].isSelected!;

                  //? save the selected option for score
                  widget.quizModel.questions![widget.questionIndex]
                          .optionSelected =
                      widget.quizModel.questions![widget.questionIndex]
                          .options![index].optionName;

                  if (widget.quizModel.questions![widget.questionIndex]
                          .optionSelected ==
                      widget.quizModel.questions![widget.questionIndex]
                          .correctAnswer) {
                    score = score + 1;
                    print("correct answer");
                  } else {
                    score = score;
                  }

                  //? make all other options false
                  for (int i = 0;
                      i <
                          widget.quizModel.questions![widget.questionIndex]
                              .options!.length;
                      i++) {
                    if (i != index) {
                      widget.quizModel.questions![widget.questionIndex]
                          .options![i].isSelected = false;
                    }
                  }
                },
              );
            },
            child: Text(
              widget.quizModel.questions![widget.questionIndex].options![index]
                  .optionName
                  .toString(),
              style: customTextThemes.headline2,
            ),
          ),
        );
      },
    );
  }
}
