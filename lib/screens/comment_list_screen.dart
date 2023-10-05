import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hacker_news/models/story.dart';
import 'package:hacker_news/view_models/comment_list_view_model.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:provider/provider.dart';

class CommentListScreen extends StatefulWidget {
  const CommentListScreen({super.key, required this.story});

  final Story story;

  @override
  State<CommentListScreen> createState() => _CommentListScreenState();
}

class _CommentListScreenState extends State<CommentListScreen> {
  final html = HtmlUnescape();
  @override
  void initState() {
    context.read<CommentListViewModel>().fetchCommentsByID(widget.story);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.story.title),
      ),
      body: Consumer<CommentListViewModel>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.comments.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                alignment: Alignment.center,
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(html.convert(value.comments[index].title).substring(0,
                  min(200, html.convert(value.comments[index].title).length))),
            );
          },
        ),
      ),
    );
  }
}
