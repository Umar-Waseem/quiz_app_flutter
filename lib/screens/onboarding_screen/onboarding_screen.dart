import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../home_screen/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset(
                'assets/images/text_anmation.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      "Please enter your First Name: ",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      maxLength: 10,
                      controller: _nameController,
                      decoration: InputDecoration(
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
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(250, 50),
                        backgroundColor: Colors.green,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: _nameController.text.isNotEmpty
                          ? () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionsBuilder: (c, anim, a2, child) {
                                    return FadeTransition(
                                      opacity: anim,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(milliseconds: 1000),
                                  pageBuilder: (context, a, b) {
                                    return HomeScreen(
                                      name: _nameController.text,
                                    );
                                  },
                                ),
                              );
                            }
                          : null,
                      clipBehavior: Clip.antiAlias,
                      icon: const Icon(Icons.arrow_right),
                      label: const Text("Lets Start"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
