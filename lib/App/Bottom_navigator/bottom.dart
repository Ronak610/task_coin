import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen/Game_Screen/View/Game_Page.dart';
import '../Screen/Api_Screen/View/News_Page.dart';
import '../Screen/Api_Screen/View/Task_page.dart';


class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List l1 = [
    News_page(),Task_Page(),Game_Page(),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:l1[select] ,
        bottomNavigationBar: BottomNavigationBar(currentIndex: select,
          onTap: onItemTapped,
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
                label: "Task"),
   BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.game_controller
                ),
                label: "Task"),

          ],
        ),
      ),
    );
  }
  void onItemTapped(int index){
    setState(() {
      select=index;
    });
  }
}
