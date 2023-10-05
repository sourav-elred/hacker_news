import 'package:flutter/material.dart';
import 'package:hacker_news/models/story.dart';
import 'package:hacker_news/screens/comment_list_screen.dart';
import 'package:hacker_news/view_models/comment_list_view_model.dart';
import 'package:provider/provider.dart';

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
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (context) => CommentListViewModel(),
              child: CommentListScreen(story: story),
            ),
          )),
          title: Text(
            story.title,
            style: const TextStyle(fontSize: 20),
          ),
          trailing: Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              story.commentIds.length.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
