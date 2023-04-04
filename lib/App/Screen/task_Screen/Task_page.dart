import 'dart:async';

import 'package:connection_notifier/connection_notifier.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:installed_apps/app_info.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Task_Page extends StatefulWidget {
  const Task_Page({Key? key}) : super(key: key);

  @override
  State<Task_Page> createState() => _Task_PageState();
}

class _Task_PageState extends State<Task_Page> {
  Game_Controller game_controller = Get.put(Game_Controller());
  List<AppInfo>? installedApps;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ConnectionNotifierToggler(
                onConnectionStatusChanged: (connected) {
                  if (connected == null) return;
                  print("============== $connected");
                  game_controller.Connect.value = connected;
                  if (game_controller.Connect.value) {
                    Timer(Duration(seconds: 2), () {
                      game_controller.Connect.value = false;
                    });
                  }
                },
                connected: Obx(
                  () => Column(
                    children: [
                      ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: game_controller.l1.length,
                        itemBuilder: (context, index) {
                              return Card(
                                child: Container(
                                  height: 100,
                                  margin: EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        Image.network(
                                          "${game_controller.l1[index].image}",
                                          height: 60,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "${game_controller.l1[index].name}",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade400,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(50),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: () async {
                                              game_controller.g1.value.package =
                                                  game_controller
                                                      .l1[index].package!;
                                              await launchUrl(Uri.parse(
                                                  game_controller.l1[index].url!));
                                            },
                                            child: Text(
                                              "${game_controller.l1[index].coing}  Get ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: game_controller.s1.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Container(
                                  height: 100,
                                  margin: EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        Image.network(
                                          "${game_controller.s1[index].image}",
                                          height: 60,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "${game_controller.s1[index].name}",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade400,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(50),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: () async {
                                              game_controller.g1.value.package =
                                                  game_controller
                                                      .s1[index].package!;
                                              await launchUrl(Uri.parse(
                                                  game_controller.s1[index].url!));
                                            },
                                            child: Text(
                                              "${game_controller.s1[index].coing}  Get ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                        },
                      ),
                    ],
                  ),
                ),
                disconnected: Center(
                  key: UniqueKey(),
                  child: const Text(
                    'Disconnected',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
