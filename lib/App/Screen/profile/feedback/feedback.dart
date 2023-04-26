
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Feedback extends StatefulWidget {
  const Feedback({Key? key}) : super(key: key);

  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  @override
  RxBool count = false.obs;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Feedback",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Description (Required)",
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 5,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      count.value = true;
                    } else {
                      count.value = false;
                    }
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                Row(
                  children: [
                    Text("Contact us :"),
                    TextButton(
                      onPressed: () {
                        Get.snackbar(
                          "Already Email ",
                          "",
                        );
                      },
                      child: Text(
                        "Feedback@Task_coin.com",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Obx(
                    () => count.value == true
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                            onPressed: () {
                              Get.snackbar("Feedback", "Successfully");
                            },
                            child: Text("Submit"),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            onPressed: () {},
                            child: Text("Submit"),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
