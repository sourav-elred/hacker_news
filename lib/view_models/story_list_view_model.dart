import 'package:flutter/material.dart';
import 'package:hacker_news/models/story.dart';
import 'package:hacker_news/services/api_service.dart';

class StoryListViewModel extends ChangeNotifier {
  List<Story> stories = [];

  Future<void> getTopStories() async {
    stories = await ApiService().getTopStories();
    notifyListeners();
  }
}
