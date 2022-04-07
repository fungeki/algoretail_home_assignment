import 'package:algoretail_home_assignment/controllers/posts_add_comment_controller.dart';
import 'package:algoretail_home_assignment/controllers/posts_display_controller.dart';
import 'package:algoretail_home_assignment/ui/add_comment_get_builder.dart';
import 'package:algoretail_home_assignment/ui/posts_app_bar.dart';
import 'package:algoretail_home_assignment/ui/posts_scroll_notification_listener.dart';
import 'package:flutter/material.dart';

class PostsDisplayPage extends StatelessWidget {
  const PostsDisplayPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PostsDisplayController postsController = PostsDisplayController();
    PostsAddCommentController postsAddCommentController =
        PostsAddCommentController(context);
    postsController.getPosts();
    return Scaffold(
      appBar: PostsAppBar(postsAddCommentController: postsAddCommentController),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AddCommentGetBuilder(
                  postsAddCommentController: postsAddCommentController),
              Expanded(
                  child: PostsScrollNotificationListener(
                      postsController: postsController)),
            ],
          ),
        ),
      ),
    );
  }
}
