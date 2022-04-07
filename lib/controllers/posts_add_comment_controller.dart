import 'package:algoretail_home_assignment/models/post.dart';
import 'package:algoretail_home_assignment/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PostsAddCommentController extends GetxController {
  RxBool isDisplayed = false.obs;
  final BuildContext context;

  PostsAddCommentController(this.context);

  void toggleDisplay() {
    FocusScope.of(context).unfocus();
    isDisplayed.toggle();
    isDisplayed.refresh();
    refresh();
    update();
  }

  void sendComment({required String title, required String body}) async {
    final dio = Dio();
    final comment = Post(id: 0, userId: 0, title: title, body: body);
    try {
      final response = await dio.post(kTestAssignLink, data: comment.toJson());
      debugPrint(response.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
