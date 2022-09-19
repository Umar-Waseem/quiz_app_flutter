import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/quiz_provider.dart';
import 'screens/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QuizProvider()),
      ],
      child: MaterialApp(
        title: 'Quiz App Flutter',
        darkTheme: ThemeData(
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.black,
        ),
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const OnBoardingScreen(),
      ),
    );
  }
}
