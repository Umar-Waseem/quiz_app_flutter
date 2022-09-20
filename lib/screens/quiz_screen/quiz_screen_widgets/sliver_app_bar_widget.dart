import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String id;
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}
