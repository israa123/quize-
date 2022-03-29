// Getx with Controller TYpe
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:weather/controller/myController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  MyController mycontroller = Get.put(MyController());
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
              GetX<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    mycontroller.increment();

                    // Get.find<MyController>().increment();
                  },
                  child: const Text("++")),
              // GetX<MyController>(),
            ],
          ),
        ),
      ),
    );
  }
}
