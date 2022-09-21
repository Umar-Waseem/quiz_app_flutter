import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/themes/custom_text_theme.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.totalQuestions,
    required this.score,
  });

  final int totalQuestions;
  final int score;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: score == totalQuestions
          ? CustomWidget(
              score: score, totalQuestions: totalQuestions, win: true)
          : CustomWidget(
              score: score, totalQuestions: totalQuestions, win: false),
    ));
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.win,
  }) : super(key: key);

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
          if (win) const Win(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: const Text("Go back"),
          ),
        ],
      ),
    );
  }
}

class Win extends StatefulWidget {
  const Win({super.key});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
