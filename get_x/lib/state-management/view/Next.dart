import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/state-management/controller/BuilderController.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(_) {
    final controller = BuilderController();
    return Scaffold(
      appBar: AppBar(title: Text("Learning GetX")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 2"),
            GetBuilder<BuilderController>(
              id: "wanna update",
              init: controller,
              builder: (_) => Text(
                '${Get.find<BuilderController>().counter.value}', //here
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text(
                'counter 증가',
                style: TextStyle(fontSize: 30),
              ),
            ),
            GetBuilder<BuilderController>(
              id: "don't wanna update",
              builder: (_) => Text(
                '${Get.find<BuilderController>().counter.value}', //here
                style: TextStyle(fontSize: 30),
              ),
            ),
            Text("done"),
          ],
        ),
      ),
    );
  }
}
