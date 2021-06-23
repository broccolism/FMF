import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route-management/controller/StringController.dart';
import 'package:get_x/route-management/second.dart';
import 'package:get_x/route-management/third.dart';

class FirstPage extends StatelessWidget {
  final controller = StringController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "첫번째 페이지",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () async {
              String result = await Get.to(() => SecondPage());
              controller.change(result);
            },
            child: Text(
              "두번째 페이지로 이동",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Obx(
            () => Text(
              controller.str.value.length > 0
                  ? "두번째 페이지에서 ${controller.str.value} 을(를) 받아옴"
                  : "아직 안 받아옴",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(height: 30),
          ElevatedButton(
            onPressed: () {
              Get.to(() => ThirdPage(), arguments: controller.str.value);
            },
            child: Text(
              "세번째 페이지로 이동",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      )),
    );
  }
}
