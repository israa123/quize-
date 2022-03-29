import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:weather/controller/myController.dart';
import 'package:weather/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  final student = Student(name: "Israa", age: 23).obs;
  MyController myController = Get.put(MyController());
  // MyController();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "state management",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("state management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Name is ${student.value.name}",
                  // "Name is ${myController.student.value.name}",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    // myController.convertUpperCase();

                    student.update((val) {
                      val!.name = val.name.toString().toUpperCase();
                    });
                    // student.name.value = student.name.value.toUpperCase();
                  },
                  child: const Text("Upper")),
            ],
          ),
        ),
      ),
    );
  }
}
