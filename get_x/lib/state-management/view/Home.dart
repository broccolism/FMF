import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/state-mangement/controller/CounterController.dart';

import 'Next.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(_) {
    final Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Text("Learning GetX")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 1"),
            GetX<Controller>(
              builder: (_) {
                return Text(
                  'Count 1 : ${_.count1.value}',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            Obx(() {
              return Text(
                'Count 2 : ${controller.count2.value}',
                style: TextStyle(fontSize: 30),
              );
            }),
            Obx(() {
              return Text(
                'SUM : ${controller.sum}',
                style: TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
              onPressed: () {
                controller.incrementTop();
              },
              child: Text(
                'count 1 증가',
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.incrementBottom();
              },
              child: Text(
                'count 2 증가',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Get.to(NextPage());
          }),
    );
  }
}
