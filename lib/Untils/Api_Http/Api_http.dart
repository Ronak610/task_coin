import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../../App/Screen/Api_Screen/Modal/News_Modal.dart';

class Api_http {
  Api_http._();

  List select = [];
  static Api_http api_http = Api_http._();

  // * Api Create
  Future<List<NewsModal>?> news() async {
    String apilink =
        "https://free-to-play-games-database.p.rapidapi.com/api/filter?tag=3d.mmorpg.fantasy.pvp&platform=pc";
    var response = await http.get(
      Uri.parse(apilink),
      headers: {
        "X-RapidAPI-Key": "49a0fff9eemshb9a8cd3aa959244p1cc821jsn36b6e130ade7",
        "X-RapidAPI-Host": "free-to-play-games-database.p.rapid.com"
      },
    );
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      return json.map((e) => NewsModal.fromJson(e)).toList();
    }
    return null;
  }

  Future<List<NewsModal>?> News() async {
    var data = await rootBundle.loadString("assets/json/News.json");

    // print("===========================$data");
    List json = jsonDecode(data);
    // print("===========================$json");

    return json.map((e) => NewsModal.fromJson(e)).toList();
  }
}
