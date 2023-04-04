import 'dart:async';

import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';

import 'package:task_coing/Untils/Api_Http/Api_http.dart';

import '../Controller/News_Controller.dart';
import '../Modal/News_Modal.dart';

class News_page extends StatefulWidget {
  const News_page({Key? key}) : super(key: key);

  @override
  State<News_page> createState() => _News_pageState();
}

class _News_pageState extends State<News_page> {
  News_Controller news_controller = Get.put(News_Controller());
  Game_Controller game_controller = Get.put(Game_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                () => FutureBuilder<List<NewsModal>?>(
                  future: Api_http.api_http.news(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    } else if (snapshot.hasData) {
                      news_controller.l1.value = snapshot.data!;
                      return GridView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, mainAxisExtent: 285),
                        itemCount: news_controller.l1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${news_controller.l1[index].title}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${news_controller.l1[index].publisher}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Image.network(
                                  "${news_controller.l1[index].thumbnail}",
                                  fit: BoxFit.fill,
                                ),
                                Row(
                                  children: [
                                    Text("release_date"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                        "${news_controller.l1[index].releaseDate}")
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
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
    );
  }
}
