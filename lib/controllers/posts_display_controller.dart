import 'package:algoretail_home_assignment/models/post.dart';
import 'package:algoretail_home_assignment/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PostsDisplayController extends GetxController {
  List posts = <Post>[].obs;

  void getPosts() async {
    List<Post> posts = [];
    final dio = Dio(BaseOptions(contentType: 'application/json'));
    try {
      final response = await dio.get(kJsonPlaceholder20Posts);
      final dataList = response.data as List;
      posts = dataList.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    this.posts = posts;
  }
}
