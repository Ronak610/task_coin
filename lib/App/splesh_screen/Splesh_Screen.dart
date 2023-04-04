import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_coing/Untils/shared%20preferences/shared.dart';

class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({Key? key}) : super(key: key);

  @override
  State<Splesh_Screen> createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {

  @override
  void initState() {
    super.initState();
    IsLogin();
  }
  void IsLogin() async
  {
    bool? islogin = await shared_p.shared.checklogin();
    Timer(Duration(seconds: 3),(){
      if(islogin==false)
      {
        Get.offNamed('signin');
      }
      else{
        Get.offNamed('bottom');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Splesh_screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/splesh.jpg",height: 300,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
