import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/controller/home_controller.dart';
import 'package:weather/view/pagetwo.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  final HomeControler controller = Get.put(HomeControler());
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  // get controller => null;

  // get controller => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeControler>(
                init: HomeControler(),
                // Obx(() => (
                builder: (controller) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: IconButton(
                            onPressed: () {
                              controller.increment();
                              // setState(() {
                              //   counter++;
                              // });
                            },
                            icon: const Icon(Icons.add, size: 40),
                          ),
                        ),
                        Center(
                          child: Text(
                            "${controller.counter.value}",
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: IconButton(
                            onPressed: () {
                              controller.decrement();
                              // setState(() {
                              //   counter--;
                              // });
                            },
                            icon: const Icon(Icons.remove, size: 40),
                          ),
                        ),
                      ],
                    ))
          ],
        ),
      ),
    );
  }
}
