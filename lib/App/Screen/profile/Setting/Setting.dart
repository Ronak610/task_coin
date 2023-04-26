import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  bool change = true;
  bool Notification = true;
  bool push = true;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text("Settings",style: TextStyle(color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Quick Read"),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.blue.shade200,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey.shade400,
                    splashRadius: 50.0,
                    // boolean variable value
                    value: change,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => change = value),
                  ),
                ],
              ),
              change == false
                  ? Text(
                      "If you don't want to miss any imortant notifications,"
                      "please click here to open.",
                      style: TextStyle(color: Colors.redAccent),
                    )
                  : PreferredSize(child: Text(""), preferredSize: Size.zero), SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Push Notification"),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.blue.shade200,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey.shade400,
                    splashRadius: 50.0,
                    // boolean variable value
                    value: Notification,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => Notification = value),
                  ),
                ],
              ),
              Notification == false
                  ? Text(
                      "If you don't want to miss any imortant notifications,"
                      "please click here to open.",
                      style: TextStyle(color: Colors.redAccent),
                    )
                  : PreferredSize(child: Text(""), preferredSize: Size.zero),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pop-Up Push Notification"),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.blue.shade200,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey.shade400,
                    splashRadius: 50.0,
                    // boolean variable value
                    value: push,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => push = value),
                  ),
                ],
              ),
              push == false
                  ? Text(
                      "If you don't want to miss any imortant notifications,"
                      "please click here to open.",
                      style: TextStyle(color: Colors.redAccent),
                    )
                  : PreferredSize(child: Text(""), preferredSize: Size.zero),
            ],
          ),
        ),
      ),
    );
  }
}
