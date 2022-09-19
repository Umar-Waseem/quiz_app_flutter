import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/themes/custom_text_theme.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.imageUrl});

  final String id;
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: id,
                child: Image(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(title),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 1000,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    description,
                    style: customTextThemes.headline3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
