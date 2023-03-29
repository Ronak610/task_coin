import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task_coing/App/Screen/Game_Screen/Modal/game_Modal.dart';

class Game_Controller extends GetxController {
  Rx<Game_Modal> g1 = Game_Modal().obs;
  RxList<Game_Modal> l1 = <Game_Modal>[
    Game_Modal(
        image:
            "https://www.sourcecodester.com/sites/default/files/link.jpg",
        name: "Flow Free",
        url:
            "https://play.google.com/store/apps/details?id=com.bigduckgames.flow"),
    Game_Modal(
        image:
            "https://cdn6.aptoide.com/imgs/6/7/f/67f7f866a3f7e0dde3c8555090f2e04c_icon.png",
        name: "Word Legend Puzzle Addictive",
        url:
            "https://play.google.com/store/apps/details?id=com.lydia.wordsgame.word.talent"),
    Game_Modal(
        image:
            "https://cdn.peak.com/static/assets/products/toonblast.22eba9bd.png",
        name: "Toon Blast",
        url:
            "https://play.google.com/store/apps/details?id=net.peakgames.toonblast"),
    Game_Modal(
        image:
            "https://assets-prd.ignimgs.com/2020/11/12/fruit-ninja-2-button-1605216242017.jpg",
        name: "Fruit Ninja",
        url:
            "https://play.google.com/store/apps/details?id=com.halfbrick.fruitninjafree"),
    Game_Modal(
        image:
            "https://assets-prd.ignimgs.com/2020/11/12/fruit-ninja-2-button-1605216242017.jpg",
        name: "Fruit Ninja",
        url:
            "https://play.google.com/store/apps/details?id=com.halfbrick.fruitninjafree"),
  ].obs;
}
