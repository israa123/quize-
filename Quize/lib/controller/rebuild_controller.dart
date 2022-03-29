import 'package:get/state_manager.dart';

class RebuildController extends GetxController {
  var count1 = 0.obs;
  var count2 = 0.obs;
  void incrementOne() {
    count1++;
    update();
  }

  void incrementTwo() {
    count2++;
    update();
  }

  void decrementOne() {
    count1--;
    update();
  }

  void decrementTwo() {
    count2--;
    update();
  }

  int get sum => count1.value + count2.value;
}
