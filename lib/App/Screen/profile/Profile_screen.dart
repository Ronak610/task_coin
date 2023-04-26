import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:task_coing/App/Screen/Game_Screen/Controller/Game_Controller.dart';
import 'package:task_coing/App/Screen/profile/Controller.dart';
import 'package:task_coing/Untils/shared%20preferences/shared.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  Game_Controller game_controller = Get.put(Game_Controller());
  Profile_Controller profile_controller = Get.put(Profile_Controller());

  @override
  void initState() {
    super.initState();
    ReadData();
  }

  void ReadData() async {
    print("======= START");
    profile_controller.loginData.value = await shared_p.shared.readlogin();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: Stack(alignment: Alignment.center, children: [
          Column(
            children: [
              Container(
                height: 180,
                color: Colors.redAccent,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                child: Stack(children: [
                  Center(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.network(
                        "https://c4.wallpaperflare.com/wallpaper/1023/944/869/digital-art-circle-colorful-lights-wallpaper-preview.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.black45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/image/v.png"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Obx(
                          () => Text(
                            "${profile_controller.loginData['email']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                shared_p.shared.alredylogin(false);
                                Get.offNamed("Sign_In");
                              },
                              child: Image.asset(
                                "assets/image/logout.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Text("Log Out")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.toNamed('feedback');
                                },
                                child: Image.asset(
                                  "assets/image/email.png",
                                  height: 60,
                                  width: 80,
                                )),
                            Text("Feedback"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.toNamed('setting');
                                },
                                child: Image.asset(
                                  "assets/image/setting.png",
                                  height: 60,
                                  width: 80,
                                )),
                            Text("Setting"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 300),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 200,
              child: Column(
                children: [
                  Text(
                    "Coins",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/json/coin.json", height: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${game_controller.point.value}",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 25,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade600,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Redeem"),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
