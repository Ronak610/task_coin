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
        appBar: AppBar(
          title: Text("Game "),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 150,
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                   ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                       game_controller.g1.value = game_controller.l1[index];
                      await launchUrl(Uri.parse(game_controller.l1[index].url!));
                    },
                    child: Container(
                      width: 100,
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "${game_controller.l1[index].image}",
                              height: 100,
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
            ],
          ),
        ),
      ),
    );
  }
}
