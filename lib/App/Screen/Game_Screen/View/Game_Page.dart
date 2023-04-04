import 'dart:async';

import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Game_Page extends StatefulWidget {
  const Game_Page({Key? key}) : super(key: key);

  @override
  State<Game_Page> createState() => _Game_PageState();
}

class _Game_PageState extends State<Game_Page> {
  Game_Controller game_controller = Get.put(Game_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                connected: Obx(() => Column(
                      children: [
                        Text(
                          "Addictive Games",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: game_controller.l1.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 110,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () async {
                                game_controller.g1.value =
                                    game_controller.l1[index];
                                await launchUrl(
                                    Uri.parse(game_controller.l1[index].url!));
                              },
                              child: Container(
                                width: 80,
                                color: Colors.white,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        "${game_controller.l1[index].image}",
                                        height: 80,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${game_controller.l1[index].name}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        Text(
                          "Sports",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: game_controller.s1.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 110,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () async {
                                game_controller.g1.value =
                                    game_controller.s1[index];
                                await launchUrl(
                                    Uri.parse(game_controller.s1[index].url!));
                              },
                              child: Container(
                                width: 80,
                                color: Colors.white,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        "${game_controller.s1[index].image}",
                                        height: 80,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${game_controller.s1[index].name}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )),
                disconnected: Center(
                  key: UniqueKey(),
                  child: const Text(
                    'Disconnected/n plese',
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
