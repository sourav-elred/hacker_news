import 'package:flutter/material.dart';
import 'package:hacker_news/models/story.dart';

class StoryList extends StatelessWidget {
  final List<Story> stories;

  const StoryList({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length,
      itemBuilder: (context, index) {
        final story = stories[index];

        return ListTile(
          title: Text(
            story.title,
            style: const TextStyle(fontSize: 20),
          ),
        );
      },
    );
  }
}
