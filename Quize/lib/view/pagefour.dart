import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:weather/controller/rebuild_controller.dart';

class PageFour extends StatelessWidget {
  PageFour({Key? key}) : super(key: key);
  final RebuildController extcontroller = Get.put(RebuildController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Four'),
      ),
      body: ListView(
        children: [
          Center(
            child: GetX<RebuildController>(
              init: RebuildController(),
              builder: (controller) {
                print("count 1 rebuild");
                return Text(
                  '${controller.count1.value}',
                  style: Theme.of(context).textTheme.headline5,
                );
              },
            ),
          ),
          Center(
            child: GetX<RebuildController>(
              init: RebuildController(),
              builder: (controller) {
                print("count 2 rebuild");
                return Text(
                  '${controller.count2.value}',
                  style: Theme.of(context).textTheme.headline5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
