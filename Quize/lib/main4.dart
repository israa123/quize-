// Navigation without named routes
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:weather/view/home.dart';
import 'package:weather/view/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Route Navigation",
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        getPages: [
          GetPage(name: '/', page: () => MyApp()),
          GetPage(
              name: '/home',
              page: () => Home(),
              transition: Transition.circularReveal),
          GetPage(
              name: '/nextScreen/45679',
              page: () => NextScreen(),
              transition: Transition.leftToRight),
        ],
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Route Navigation"),
          ),
          // actions: [],),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //  const Text("This is Home Screen",
                //   style: TextStyle(color: Colors.greenAccent,
                //   fontSize: 30),),

                ElevatedButton(
                    onPressed: () async {
                      Get.to(Home(),
                          arguments: "Data from main",
                          fullscreenDialog: true,
                          transition: Transition.zoom,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                    child: const Text("Go to Home")),
                ElevatedButton(
                    onPressed: () async {
                      Get.offNamed("/home");
                    },
                    child: const Text("Go to Home")),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/home?name=israa&car=bmw");
                    },
                    child: const Text("Go to Home parameter")),

                ElevatedButton(
                    onPressed: () async {
                      Get.offAllNamed("/home");
                    },
                    child: const Text("Go to Home")),
                ElevatedButton(
                    onPressed: () async {
                      Get.toNamed("/home");
                    },
                    child: const Text("Go to Home")),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "The name is ${Get.parameters['name']} and car is ${Get.parameters['car']}",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ],
            ),
          ),
        ));
  }
}
