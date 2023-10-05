import 'package:flutter/material.dart';
import 'package:hacker_news/models/story.dart';
import 'package:hacker_news/services/api_service.dart';

class StoryListViewModel extends ChangeNotifier {
  List<Story> stories = [];
  final _apiService = ApiService();

  Future<void> getTopStories() async {
    stories = await _apiService.getTopStories();
    notifyListeners();
  }
}
