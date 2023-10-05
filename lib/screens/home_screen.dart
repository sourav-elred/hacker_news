import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/story_list_view_model.dart';
import 'package:hacker_news/widgets/story_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hacker News")),
      body: Consumer<StoryListViewModel>(
        builder: (context, vm, child) => StoryList(stories: vm.stories),
      ),
    );
  }
}
