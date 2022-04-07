import 'package:flutter/foundation.dart';

class Post {
  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  Post({this.id, this.userId, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json["id"],
      userId: json["userID"],
      title: json["title"],
      body: json["body"],
    );
  }

  @override
  String toString() {
    return 'Post{id: $id, userId: $userId, title: $title, body: $body}';
  }
}
