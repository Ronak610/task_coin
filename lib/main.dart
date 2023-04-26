import 'package:flutter/cupertino.dart';
import 'package:flutter_appavailability/flutter_appavailability.dart';
import 'package:get/get.dart';
import 'package:task_coing/App/Bottom_navigator/bottom.dart';
import 'package:task_coing/App/Screen/profile/Profile_screen.dart';
import 'package:task_coing/App/Screen/profile/Setting/Setting.dart';
import 'package:task_coing/App/Screen/profile/feedback/feedback.dart';
import 'package:task_coing/App/login/Sign_Up/Sign_up.dart';
import 'package:task_coing/App/login/Sign_in/sign_in_screen.dart';
import 'package:task_coing/App/splesh_screen/Splesh_Screen.dart';

import 'App/Screen/Game_Screen/View/Game_Page.dart';
import 'App/Screen/Api_Screen/View/News_Page.dart';
import 'App/Screen/task_Screen/Task_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppAvailability.getInstalledApps();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splesh_Screen(),
        'Sign_In': (context) => Sign_In(),
        'Sign_Up': (context) => Sign_UP(),
        'bottom': (context) => Bottom(),
        'news': (context) => News_page(),
        'task': (context) => Task_Page(),
        'game': (context) => Game_Page(),
        'profile': (context) => Profile_Screen(),
        'setting': (context) => Setting(),
        'feedback': (context) => Feedback(),



      },
    ),
  );
}
