class Comment {
  final int id;
  final String title;

  Comment({required this.id, required this.title});

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(id: json["id"], title: json["text"]);
  }
}
