import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/controller/home_controller.dart';
import 'package:weather/view/pagetwo.dart';

class PageOne extends StatelessWidget {
  PageOne({Key? key}) : super(key: key);
  final HomeControler controller = Get.put(HomeControler());

  HomeControler _controller = Get.find();

  // HomeControler get controller => _controller;

  set controller(HomeControler controller) {
    _controller = controller;
  }

// PageOne controller = Get.put(HomeControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/pageone");
                },
                child: const Text("Page One 1"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/pagetwo");
                },
                child: const Text("Page Two 1"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/pagethree");
                },
                child: const Text("Page Three 1"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
