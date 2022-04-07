import 'package:algoretail_home_assignment/controllers/posts_display_controller.dart';
import 'package:flutter/material.dart';

class PostsExpansionTile extends StatelessWidget {
  const PostsExpansionTile({
    Key? key,
    required this.currentPost,
  }) : super(key: key);

  final currentPost;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      textColor: Colors.white,
      backgroundColor: Colors.blueAccent,
      title: Text(
        currentPost.title ?? "No subject",
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            currentPost.body ?? "no content",
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
