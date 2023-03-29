import 'package:get/get.dart';

import '../Modal/News_Modal.dart';

class News_Controller extends GetxController
{
  RxList<NewsModal> l1 = <NewsModal>[].obs;
  Rx<NewsModal> h1 = NewsModal().obs;
}