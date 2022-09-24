import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/models/quiz_model.dart';
import 'package:quiz_app_flutter/screens/result_screen/see_answers_screen.dart';
import 'package:quiz_app_flutter/themes/custom_text_theme.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.totalQuestions,
    required this.score,
    required this.quizModel,
  });

  final int totalQuestions;
  final int score;
  final QuizModel quizModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: score == totalQuestions
            ? CustomWidget(
                score: score,
                totalQuestions: totalQuestions,
                win: true,
                quizModel: quizModel,
              )
            : CustomWidget(
                score: score,
                totalQuestions: totalQuestions,
                win: false,
                quizModel: quizModel,
              ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.win,
    required this.quizModel,
  }) : super(key: key);

  final QuizModel quizModel;
  final int score;
  final int totalQuestions;
  final bool win;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have completed the quiz",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 20),
          Text(
            "Your score is $score out of $totalQuestions",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 20),
          win
              ? Win(score: score)
              : Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: const Text("Start Again"),
                    ),
                    const SizedBox(height: 20),
                    // see correc answers
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) =>  SeeAnswersScreen(quizModel: quizModel),
                          ),
                        );
                      },
                      child: const Text("See Correct Answers"),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class Win extends StatefulWidget {
  const Win({super.key, required this.score});

  final int score;

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool loading = false;
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("You Won", style: customTextThemes.headline2),
          const SizedBox(height: 20),
          Text("Enter you information for a gift",
              style: customTextThemes.headline3),
          const SizedBox(height: 20),
          TextFormField(
            controller: _nameController,
            onChanged: (value) {
              setState(() {
                isValid = value.isNotEmpty && _emailController.text.isNotEmpty;
              });
            },
            decoration: InputDecoration(
              hintText: "Enter your name",
              filled: true,
              fillColor: Colors.lightGreen.withOpacity(0.2),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: (value) {
              setState(() {
                isValid = value.isNotEmpty && _nameController.text.isNotEmpty;
              });
            },
            controller: _emailController,
            decoration: InputDecoration(
              hintText: "Enter your email",
              filled: true,
              fillColor: Colors.lightGreen.withOpacity(0.2),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          loading
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: isValid
                      ? () async {
                          setState(() {
                            loading = true;
                          });

                          try {
                            await FirebaseFirestore.instance
                                .collection("users")
                                .add({
                              "name": _nameController.text,
                              "email": _emailController.text,
                              "score": widget.score,
                            }).then(
                              (value) {
                                setState(() {
                                  loading = false;
                                });
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 100,
                                      color: Colors.green,
                                      child: Center(
                                        child: Text(
                                          "Thank you for your information",
                                          style: customTextThemes.headline2,
                                        ),
                                      ),
                                    );
                                  },
                                );
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                              },
                            );
                          } catch (e) {
                            onError(context, e);
                          }
                        }
                      : null,
                  child: const Text("Submit"),
                ),
        ],
      ),
    );
  }

  Future<dynamic> onError(BuildContext context, Object error) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              error.toString(),
              style: customTextThemes.headline2,
            ),
          ),
        );
      },
    );
  }
}

// bool isValid(String val1, String val2) {
//   if (val1.isEmpty || val2.isEmpty) {
//     return false;
//   }
//   return true;
// }
