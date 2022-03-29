import 'package:get/state_manager.dart';
import 'package:weather/home.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var student = Student(name: "Israa", age: 24).obs;
  void convertUpperCase() {
    student.update((val) {
      val!.name = val.name.toString().toUpperCase();
    });
  }

  var count = 0.obs;
  void increment() {
    count++;
  }

// GetBuilder Simple Stata Manager
  var count1 = 0;
  void incrment() {
    count1++;
    update();
  }
}
//   void convertUpperCase() {
//     student.update(val){
//     val!.name = val.name.toString().toUpperCase();
//   });
// }

  // var student = Student();
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.obs();
  // }