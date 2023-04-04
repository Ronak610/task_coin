import 'dart:async';

import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';

import 'package:task_coing/Untils/Api_Http/Api_http.dart';
import 'package:url_launcher/url_launcher.dart';

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
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: Api_http.api_http.News(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("${snapshot.error}");
              } else if (snapshot.hasData) {
                news_controller.l1.value = snapshot.data!;
                return Obx(
                  () => GridView.builder(
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
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${news_controller.l1[index].gname}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${news_controller.l1[index].category}",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () async {
                             await  launchUrl(Uri.parse("${news_controller.l1[index].gUrl}"));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  "${news_controller.l1[index].thumbnail}",
                                  fit: BoxFit.fill,
                                  height: 170,width: 300,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              child: Row(
                                children: [
                                  Text("release_date"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("${news_controller.l1[index].category}")
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
