import 'package:flutter/material.dart';
import 'package:hacker_news/models/comment.dart';
import 'package:hacker_news/models/story.dart';
import 'package:hacker_news/services/api_service.dart';

class CommentListViewModel extends ChangeNotifier {
  List<Comment> comments = [];
  final _apiService = ApiService();

  void fetchCommentsByID(Story story) async {
    comments = await _apiService.fetchCommentByStoryID(story);
    notifyListeners();
  }
}
