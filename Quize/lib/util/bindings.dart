import 'package:get/get.dart';
import 'package:weather/controller/home_controller.dart';
import 'package:weather/controller/quize_controller.dart';

class BilndingsApp implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeControler());
    Get.lazyPut(() => QuizController(), fenix: true);
  }
}
