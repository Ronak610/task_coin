import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<NewsModal>?>(
          future: Api_http.api_http.News(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              news_controller.l1.value = snapshot.data!;
              return GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisExtent: 310),
                itemCount: news_controller.l1.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${news_controller.l1[index].gname}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25,),
                          ),

                          Text("${news_controller.l1[index].category}",  style: TextStyle(
                               fontSize: 18),),
                          SizedBox(
                            height: 10,
                          ),
                          Container(color: Colors.black,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "${news_controller.l1[index].thumbnail}",
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width - 50,
                                height: 200,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
