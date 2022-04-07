import 'package:algoretail_home_assignment/models/post.dart';
import 'package:algoretail_home_assignment/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsDisplayController extends GetxController {
  RxList posts = <Post>[].obs;
  bool isLoading = false;

  void getPosts() async {
    final firstPost = posts.length + 1;
    if (firstPost > 100) {
      return; //the website has a limit of 100 posts
    }
    int lastPost = firstPost + 20;
    if (lastPost > 100) {
      lastPost = 100;
    }
    final getWwwRequest =
        kJsonUrlRoot + 'posts?_start=$firstPost&_end=$lastPost';
    final dio = Dio(BaseOptions(contentType: 'application/json'));
    try {
      final response = await dio.get(getWwwRequest);
      final dataList = response.data as List;
      final newPosts = dataList.map((e) => Post.fromJson(e)).toList();
      posts.addAll(newPosts);
      posts.refresh();
      refresh();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
