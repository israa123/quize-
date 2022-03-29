import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view/pageOne.dart';
import 'package:weather/view/pagethree.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
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
                  Get.toNamed("pageone");
                },
                child: const Text("Page One 2"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("pagetwo");
                },
                child: const Text("Page Two 2"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("pagethree");
                },
                child: const Text("Page Three 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
