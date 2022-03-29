import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view/pageOne.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
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
                  Get.offNamed("pageone");
                },
                child: const Text("Page One 3"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.offNamed("pagetwo");
                },
                child: const Text("Page Two 3"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.offNamed("pagethree");
                },
                child: const Text("Page Three 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
