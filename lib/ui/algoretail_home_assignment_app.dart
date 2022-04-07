import 'package:algoretail_home_assignment/ui/posts_display_page.dart';
import 'package:algoretail_home_assignment/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlgoRetailHomeAssignmentApp extends StatelessWidget {
  const AlgoRetailHomeAssignmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.orangeAccent),
      initialRoute: kInitialPostsPageRouteName,
      getPages: [
        GetPage(
          name: kInitialPostsPageRouteName,
          page: () {
            return PostsDisplayPage();
          },
        ),
      ],
    );
  }
}
