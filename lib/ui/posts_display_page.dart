import 'package:algoretail_home_assignment/controllers/posts_display_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsDisplayPage extends StatelessWidget {
  const PostsDisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GetBuilder<PostsDisplayController>(
              init: PostsDisplayController(),
              builder: (PostsDisplayController controller) {
                controller.getPosts();
                return Center(
                  child: Text(controller.posts.toString()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
