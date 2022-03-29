// import 'package:get/state_manager.dart';

import 'package:get/get.dart';

class HomeControler extends GetxController {
  RxInt counter = 0.obs;
  // int counter = 0;
  void increment() {
    counter++;
    // update();
  }

  void decrement() {
    counter--;
    // update();
  }
}
