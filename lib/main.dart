import 'package:flutter/material.dart';
import 'package:hacker_news/screens/home_screen.dart';
import 'package:hacker_news/view_models/comment_list_view_model.dart';
import 'package:hacker_news/view_models/story_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hacker News",
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StoryListViewModel()..getTopStories(),
          ),
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
