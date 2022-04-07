import 'package:algoretail_home_assignment/controllers/posts_display_controller.dart';
import 'package:algoretail_home_assignment/ui/posts_scroll_notification_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PostsDisplayPage extends StatelessWidget {
  PostsDisplayPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PostsDisplayController postsController = PostsDisplayController();
    postsController.getPosts();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              PostsScrollNotificationListener(postsController: postsController),
        ),
      ),
    );
  }
}
