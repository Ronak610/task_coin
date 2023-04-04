import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task_coing/App/Screen/Game_Screen/Modal/Game_Modal.dart';

class Game_Controller extends GetxController {
  Rx<Game_Modal> g1 = Game_Modal().obs;
  RxInt point = 0.obs;
  RxBool Connect = false.obs;
  RxList<Game_Modal> l1 = <Game_Modal>[
    Game_Modal(
        image:
            "https://images.squarespace-cdn.com/content/v1/586beec5e58c624be9f7b5a2/1483742317507-AJVS9HFEUN3Y3BNRDOGJ/image-asset.png",
        name: "Flow Free",
        url:
            "https://play.google.com/store/apps/details?id=com.bigduckgames.flow",
        coing: 20,
        package: "com.bigduckgames.flow"),
    Game_Modal(
        image:
            "https://assets-prd.ignimgs.com/2020/11/12/fruit-ninja-2-button-1605216242017.jpg",
        name: "Fruit Ninja",
        package: "com.halfbrick.fruitninjafree",
        coing: 60,
        url:
            "https://play.google.com/store/apps/details?id=com.halfbrick.fruitninjafree"),
    Game_Modal(
        image:
            "https://cdn6.aptoide.com/imgs/6/7/f/67f7f866a3f7e0dde3c8555090f2e04c_icon.png",
        coing: 30,
        package: "com.lydia.wordsgame.word.talent",
        name: "Word Legend Puzzle Addictive",
        url:
            "https://play.google.com/store/apps/details?id=com.lydia.wordsgame.word.talent"),
    Game_Modal(
        image:
            "https://cdn.peak.com/static/assets/products/toonblast.22eba9bd.png",
        name: "Toon Blast",
        coing: 40,
        package: "net.peakgames.toonblast",
        url:
            "https://play.google.com/store/apps/details?id=net.peakgames.toonblast"),
  ].obs;
  RxList<Game_Modal> s1 = <Game_Modal>[
    Game_Modal(
        name: "Football Strike: Online Soccer",
        coing: 60,
        image: "https://cdn5.8fat.com/icon/d8/89/d889262b5f1fc2bfeb5e6c1fe0d21f2e.jpg",
        package: "com.miniclip.footballstrike",
        url:
            "https://play.google.com/store/apps/details?id=com.miniclip.footballstrike"),
    Game_Modal(
        url:
            "https://play.google.com/store/apps/details?id=com.reliancegames.wwemayhem",
        package: "com.reliancegames.wwemayhem",
        image: "https://static.wixstatic.com/media/37c186_47c26ad8d8204d12be152b4d20a5c55a~mv2.png/v1/fill/w_280,h_158,fp_0.50_0.50,q_95,enc_auto/37c186_47c26ad8d8204d12be152b4d20a5c55a~mv2.png",
        coing: 80,
        name: "WWE Mayhem"),
    Game_Modal(
        name: "Sachin Saga Cricket Champions",
        coing: 75,
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRetKV9aZVi4f9IQEWvESnP7k-4vIv872d3819yOBc72EKXsNLtl5B7-A-dLTCVXbMUlwE&usqp=CAU",
        package: "com.jetplay.sachinsagacc",
        url:
            "https://play.google.com/store/apps/details?id=com.jetplay.sachinsagacc"),
    Game_Modal(
        url:
            "https://play.google.com/store/apps/details?id=games.onebutton.golfbattle",
        package: "games.onebutton.golfbattle",
        image: "https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/8b/5c/f0/8b5cf046-10b2-b4c9-9c25-9ea8de47a26a/source/512x512bb.jpg",
        coing: 65,
        name: "Golf Battle"),
  ].obs;
}
