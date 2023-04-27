import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_coing/Untils/shared%20preferences/shared.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(alignment: Alignment.center, children: [
          Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.redAccent,
              ),
               Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/profile.png",height: 60,width: 80,),

                            Text("Invite Friends")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/image/history.png",height: 60,width: 80,),


                            Text("Income History")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/location.png",height: 60,width: 80,),

                            Text("Click History")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                shared_p.shared.alredylogin(false);
                                Get.offNamed("Sign_In");
                              },
                              child: Image.asset("assets/image/logout.png",height: 60,width: 80,),

                            ),
                            Text("Log Out")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(onTap: (){
<<<<<<<<< Temporary merge branch 1
                              Get.toNamed('F');
=========
                              Get.toNamed('feedback');
>>>>>>>>> Temporary merge branch 2
                            },child: Image.asset("assets/image/email.png",height: 60,width: 80,)),
                            Text("Feedback"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
<<<<<<<<< Temporary merge branch 1
                            Image.asset("assets/image/setting.png",height: 60,width: 80,),
=========
                            InkWell(onTap: (){
                              Get.toNamed('setting');
                            },child: Image.asset("assets/image/setting.png",height: 60,width: 80,)),
>>>>>>>>> Temporary merge branch 2
                            Text("Setting"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 300),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
