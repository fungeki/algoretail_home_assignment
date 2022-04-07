import 'package:algoretail_home_assignment/controllers/posts_add_comment_controller.dart';
import 'package:flutter/material.dart';

class PostsAppBar extends StatelessWidget with PreferredSizeWidget {
  const PostsAppBar({
    Key? key,
    required this.postsAddCommentController,
  }) : super(key: key);

  final PostsAddCommentController postsAddCommentController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Amazing Posts Display App',
      ),
      actions: [
        IconButton(
            onPressed: () {
              postsAddCommentController.toggleDisplay();
            },
            icon: const Icon(Icons.add))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
