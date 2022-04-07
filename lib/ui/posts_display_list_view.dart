
import 'package:algoretail_home_assignment/controllers/posts_display_controller.dart';
import 'package:algoretail_home_assignment/ui/posts_display_expansion_tile.dart';
import 'package:flutter/material.dart';

class PostsDisplayListView extends StatelessWidget {
  const PostsDisplayListView({
    Key? key,
    required this.postsController,
  }) : super(key: key);

  final PostsDisplayController postsController;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postsController.posts.length,
      itemBuilder: (BuildContext context, int index) {
        final currentPost = postsController.posts[index];
        return Card(
          child: PostsExpansionTile(currentPost: currentPost),
        );
      },
    );
  }
}
