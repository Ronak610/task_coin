import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task_coing/App/Screen/Game_Screen/Modal/game_Modal.dart';

class Game_Controller extends GetxController {
  Rx<Game_Modal> g1 = Game_Modal().obs;
  RxInt point = 0.obs;
  RxBool Connect = false.obs;
  RxList<Game_Modal> l1 = <Game_Modal>[
    Game_Modal(
        image: "https://www.sourcecodester.com/sites/default/files/link.jpg",
        name: "Flow Free",
        url:
        "https://play.google.com/store/apps/details?id=com.bigduckgames.flow",
        coing: 20,
        package: "com.bigduckgames.flow"),
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
        "https://assets-prd.ignimgs.com/2020/11/12/fruit-ninja-2-button-1605216242017.jpg",
        name: "Fruit Ninja",
        coing: 90,

        package: "com.halfbrick.fruitninjafree",
        url:
        "https://play.google.com/store/apps/details?id=com.halfbrick.fruitninjafree"),
    Game_Modal(
        image:
        "https://cdn.peak.com/static/assets/products/toonblast.22eba9bd.png",
        name: "Toon Blast",
        coing: 40,
        package: "net.peakgames.toonblast",
        url:
        "https://play.google.com/store/apps/details?id=net.peakgames.toonblast"),
  ].obs;
  RxList<Game_Modal> t1 = <Game_Modal>[
    Game_Modal(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdB1UVZ1b7uXhgOeYY1CWLx3bvvSNy333oAg&usqp=CAU",
        name: "Hill Climb Racing",
        url:
        "https://play.google.com/store/apps/details?id=com.fingersoft.hillclimb",
        coing: 20,
        package: "com.fingersoft.hillclimb"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6QGHB3I1rlFiyfqL5rqVh3tVB9kqkw3D9HQ&usqp=CAU",
        coing: 30,
        package: "com.kiloo.subwaysurf",
        name: "Subway Surfers",
        url:
        "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM718XJIDe8AGdxuDVW4WEliB-6UeijqxLyw&usqp=CAU",
        name: "Temple Run 2",
        package: "com.imangi.templerun2",
        coing: 60,
        url:
        "https://play.google.com/store/apps/details?id=com.imangi.templerun2"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYIzBR7-jih3DY5Ajd4Py7CNqP-DJ6mJmfjA&usqp=CAU",
        name: "Candy Crush Saga",
        coing: 150,
        package: "com.king.candycrushsaga",
        url:
        "https://play.google.com/store/apps/details?id=com.king.candycrushsaga"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcaMmfByAmuK8iz83sW_ttT10M3Ey_FyAqeg&usqp=CAU",
        name: "Sweet Candy Match: Puzzle Game",
        coing: 140,
        package: "com.sweet.candy.match.gp",
        url:
        "https://play.google.com/store/apps/details?id=com.sweet.candy.match.gp"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoHVLjUGiLm46ODHBew2KHhhazEV651zx88g&usqp=CAU",
        name: "Indian Bikes Driving 3D",
        coing: 140,
        package: "com.Rohit.IndianBikes",
        url:
        "https://play.google.com/store/apps/details?id=com.Rohit.IndianBikes"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjm92ajTssR01GUdPx5_h3Gqv31XzikLRAIQ&usqp=CAU",
        name: "Worms Zone .io - Hungry Snake",
        coing: 110,
        package: "com.wildspike.wormszone",
        url:
        "https://play.google.com/store/apps/details?id=com.wildspike.wormszone"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXMvfinlXP6AFjI_8PCTrH9bXp0NZWptdB8w&usqp=CAU",
        name: "Dr. Driving",
        coing: 170,
        package: "com.ansangha.drdriving",
        url:
        "https://play.google.com/store/apps/details?id=com.ansangha.drdriving"),
  ].obs;
  RxList<Game_Modal> a1 = <Game_Modal>[
    Game_Modal(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPg8XGC4IxFAx4FQ-rm2mfSpoxdJ7G1yD90A&usqp=CAU",
        name: "Easy Game - brain test",
        url:
        "https://play.google.com/store/apps/details?id=com.easybrain.brain.test.easy.game",
        coing: 20,
        package: "com.easybrain.brain.test.easy.game"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv_snxsEuBhj28bwSVn-Ui8ZeTFSeL_jM1qw&usqp=CAU",
        coing: 30,
        package: "com.game5mobile.lineandwater",
        name: "Happy Glass",
        url:
        "https://play.google.com/store/apps/details?id=com.game5mobile.lineandwater"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3VUarkgFyqjmQ7BgdyrUVGr2Klz3KNWVNBQ&usqp=CAU",
        name: "Flow Legends: Pipe Games",
        package: "com.vladk.pipemasters",
        coing: 60,
        url:
        "https://play.google.com/store/apps/details?id=com.vladk.pipemasters"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV8VH5l584hmGh55g73QTj7N6lFJpdzbJVrg&usqp=CAU",
        name: "Color Adventure: Draw the Path",
        coing: 50,
        package: "line.color.adventure",
        url:
        "https://play.google.com/store/apps/details?id=line.color.adventure"),
    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSquKyee0O9FfbnNGNEOWhJz3_300dD6CJkuQ&usqp=CAU",
        name: "Bottle Jump 3D",
        coing: 140,
        package: "com.games.bottle",
        url:
        "https://play.google.com/store/apps/details?id=com.games.bottle"),

    Game_Modal(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnsTYHKhegZf79ml_h-p6K00GVtYp1TD_2Sw&usqp=CAU",
        name: "Jetpack Joyride",
        coing: 110,
        package: "com.halfbrick.jetpackjoyride",
        url:
        "https://play.google.com/store/apps/details?id=com.halfbrick.jetpackjoyride"),
  ].obs;
}
