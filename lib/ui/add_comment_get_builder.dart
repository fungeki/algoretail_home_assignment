import 'package:algoretail_home_assignment/controllers/posts_add_comment_controller.dart';
import 'package:algoretail_home_assignment/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCommentGetBuilder extends StatelessWidget {
  AddCommentGetBuilder({
    Key? key,
    required this.postsAddCommentController,
  }) : super(key: key);

  final PostsAddCommentController postsAddCommentController;
  final _commentTitleController = TextEditingController();
  final _commentBodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: postsAddCommentController,
      builder: (PostsAddCommentController controller) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: kAnimationMillisecondsTimer),
            height: controller.isDisplayed.value ? kCommentBarSize : 0.0,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _commentTitleController,
                      decoration: const InputDecoration(
                        hintText: 'Enter a title',
                      ),
                    ),
                    TextField(
                      controller: _commentBodyController,
                      decoration: InputDecoration(
                          hintText: 'Enter a comment',
                          suffixIcon: IconButton(
                            onPressed: () => controller.sendComment(
                                title: _commentTitleController.text,
                                body: _commentBodyController.text),
                            icon: const Icon(Icons.send),
                          )),
                    ),
                  ],
                )));
      },
    );
  }
}
