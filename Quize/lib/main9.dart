// Simple State Manager -etBuilder
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:weather/controller/controller.dart';
import 'package:weather/main2.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  Mycontroller mycontroller = Get.put(Mycontroller());
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
              GetBuilder<Mycontroller>(
                // init: Mycontroller(),
                initState: (data) => mycontroller.increment(),
                dispose: (_) => mycontroller.cleanUp(),
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
                    Get.find<Mycontroller>().increment();
                  },
                  child: const Text("++")),
              // GetBuilder<Mycontroller>()
            ],
          ),
        ),
      ),
    );
  }
}
