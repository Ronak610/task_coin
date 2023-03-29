import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';

class Task_Page extends StatefulWidget {
  const Task_Page({Key? key}) : super(key: key);

  @override
  State<Task_Page> createState() => _Task_PageState();
}

class _Task_PageState extends State<Task_Page> {
  Game_Controller game_controller = Get.put(Game_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Task",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: game_controller.l1.length,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              color: Colors.black12,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.network(
                      "${game_controller.l1[index].image}",
                      height: 90,
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
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.shade400,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: ()
            {

                        },
                        child: Text(
                          "Get ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
