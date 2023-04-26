import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appavailability/flutter_appavailability.dart';
import 'package:get/get.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';
import 'package:task_coing/App/Screen/profile/Profile_screen.dart';
import 'package:lottie/lottie.dart';
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
  bool? isavailable;

  List l1 = [News_page(), Task_Page(), Game_Page(), Profile_Screen()];

  @override
  void initState() {
    super.initState();
    check();
  }

  Future<void> check() async {
    for (var datalist in game_controller.l1) {
      var response =
          await AppAvailability.checkAvailability("${datalist.package}");
      if (response['app_name'] != null) {
        isavailable = true;
        game_controller.point.value =
            game_controller.point.value + datalist.coing!;
      } else {
        isavailable = false;
      }
    }
  }

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: select == 3
            ? PreferredSize(child: Text(""), preferredSize: Size.zero)
            : AppBar(
                actions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Lottie.asset("assets/json/coin.json", height: 45),
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
                        : select == 2
                            ? Text(
                                "Game",
                                style: TextStyle(color: Colors.black),
                              )
                            : PreferredSize(
                                child: Text(""), preferredSize: Size.zero)),
        body: l1[select],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          unselectedLabelStyle: TextStyle(color: Colors.blueGrey),
          selectedItemColor: Colors.blueAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: Colors.blueAccent),
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
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
