import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appavailability/flutter_appavailability.dart';
import 'package:get/get.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';
import 'package:task_coing/App/Screen/Game_Screen/Modal/Game_Modal.dart';

import '../Screen/Game_Screen/View/Game_Page.dart';
import '../Screen/Api_Screen/View/News_Page.dart';
import '../Screen/task_Screen/Task_page.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  Game_Controller game_controller = Get.put(
    Game_Controller(),
  );

  List l1 = [
    News_page(),
    Task_Page(),
    Game_Page(),
  ];


  Future<void> check() async {
    await AppAvailability.getInstalledApps();
    print("===============> ${game_controller.l1.length}");
    for (Game_Modal datalist in game_controller.l1) {
      print("==============> ${datalist.package}");
      AppAvailability.checkAvailability("${datalist.package}")
          .catchError((error) {})
          .then((value) {
        print("============> $value");
        if (value['app_name']!.isNotEmpty) {
          game_controller.point.value =
              game_controller.point.value + datalist.coing!;
        } else {}
      });
    }
  }

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Drawer(
          ),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "${game_controller.point}   ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
          backgroundColor: Colors.white,
          title: select == 0
              ? Text(
                  "News",
                  style: TextStyle(color: Colors.black),
                )
              : select == 1
                  ? Text(
                      "Task",
                      style: TextStyle(color: Colors.black),
                    )
                  : Text(
                      "Game",
                      style: TextStyle(color: Colors.black),
                    ),
        ),
        body: l1[select],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: select,
          onTap: (value) {
            setState(() {
              select = value;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper_sharp,
                ),
                label: "News"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.monetization_on_rounded,
              ),
              label: "Task",
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.game_controller), label: "Game"),
          ],
        ),
      ),
    );
  }
}
