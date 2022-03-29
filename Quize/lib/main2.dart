import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // constMyApp() MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "get",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('snackbar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Dialog title",
                      middleText: "This is middle text",
                      titleStyle:
                          const TextStyle(fontSize: 30, color: Colors.white),
                      middleTextStyle:
                          const TextStyle(fontSize: 20, color: Colors.white),
                      backgroundColor: Colors.blueAccent,
                      radius: 70,
                      content: Row(
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Text(
                              'data is good',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              "action1",
                              style: TextStyle(color: Colors.black),
                            )),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "action2",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                      //   textCancel: "yes",
                      //   cancelTextColor: Colors.white,
                      //   textConfirm: "No",
                      //   confirmTextColor: Colors.white,
                      //   onCancel: () {},
                      //   onConfirm: () {},
                      //   buttonColor: Colors.white70,
                      // );
                      // cancel: Text(
                      //   "Cancels",
                      //   style: TextStyle(color: Colors.white),
                      // ),
                      // confirm: Text(
                      //   "Confirms",
                      //   style: TextStyle(color: Colors.white),
                      // ));
                      // Get.snackbar(
                      //   "title", "message",
                      //   colorText: Colors.white,
                      //   borderRadius: 35,
                      //   snackPosition: SnackPosition.TOP,
                      //   titleText: const Text("Another title"),
                      //   backgroundColor: Colors.transparent,
                      //   messageText: const Text("Another  message"),
                      //   animationDuration: Duration(milliseconds: 3000),
                      //   margin: EdgeInsets.all(10),
                      //   backgroundGradient:
                      //       LinearGradient(colors: [Colors.blue, Colors.blueGrey]),
                      // animationDuration:  Duration(microseconds: 3000)
                      //   borderColor: Colors.blue,
                      //   borderWidth: 4,
                      barrierDismissible: false);
                },
                child: const Text("show snackpar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
