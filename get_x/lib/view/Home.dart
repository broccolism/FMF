import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/CounterController.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(context) {
    final Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Text("Learning GetX")),
      body: Center(
        child: Obx(() => Text("Clicks: ${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
