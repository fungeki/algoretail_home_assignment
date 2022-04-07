import 'package:algoretail_home_assignment/controllers/posts_display_controller.dart';
import 'package:algoretail_home_assignment/ui/posts_display_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsScrollNotificationListener extends StatelessWidget {
  const PostsScrollNotificationListener({
    Key? key,
    required this.postsController,
  }) : super(key: key);

  final PostsDisplayController postsController;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollEndNotification &&
            postsController.posts.isNotEmpty &&
            notification.metrics.pixels ==
                notification.metrics.maxScrollExtent) {
          postsController.getPosts();
        }
        return true;
      },
      child: GetBuilder<PostsDisplayController>(
        init: postsController,
        builder: (PostsDisplayController controller) {
          return PostsDisplayListView(
            postsController: controller,
          );
        },
      ),
    );
  }
}