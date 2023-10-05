class Story {
  final String title;
  final String url;
  final List<int> commentIds;

  Story({required this.title, required this.url, required this.commentIds});

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      title: json["title"],
      url: json["url"],
      commentIds: List<int>.from(json["kids"] ?? []),
    );
  }
}
