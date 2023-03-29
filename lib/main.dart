import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_coing/App/Bottom_navigator/bottom.dart';

import 'App/Screen/Game_Screen/View/Game_Page.dart';
import 'App/Screen/Api_Screen/View/News_Page.dart';
import 'App/Screen/Api_Screen/View/Task_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Bottom(),
        'news': (context) => News_page(),
        'task': (context) => Task_Page(),
        'game': (context) => Game_Page(),
      },
    ),
  );
}
