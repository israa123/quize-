import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var count = 0;
  void increment() async {
    await Future<int?>.delayed(Duration(seconds: 10));
    count++;
    update();
  }

  void cleanUp() {
    print("Clean up task");
  }
}
