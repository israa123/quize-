import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Bottom Sheet',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text(
                  "Bottom Sheet",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.wb_sunny_outlined),
                              title: const Text(
                                'Light Theme',
                                style: TextStyle(color: Colors.white),
                              ),
                              onTap: () => {Get.changeTheme(ThemeData.light())},
                            ),
                            ListTile(
                                leading: const Icon(Icons.wb_sunny),
                                title: const Text(
                                  'Dark Theme',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () =>
                                    {Get.changeTheme(ThemeData.dark())}),
                          ],
                        ),
                      ),
                      // barrierColor: Colors.blueAccent,
                      // backgroundColor: Colors.blueAccent,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 4.0,
                        ),
                      ),
                      enableDrag: false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
