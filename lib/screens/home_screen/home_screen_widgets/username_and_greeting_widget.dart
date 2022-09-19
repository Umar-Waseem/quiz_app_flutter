import 'package:flutter/material.dart';

import '../../../themes/custom_text_theme.dart';

class UserNameAndGreeting extends StatelessWidget {
  const UserNameAndGreeting({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, $name',
          style: customTextThemes.headline1?.copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Lets have some quiz, shall we?',
          style: customTextThemes.headline3,
        ),
      ],
    );
  }
}
