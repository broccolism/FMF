import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  final dataFromFirstPage = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "세번째 페이지",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "첫번째 페이지에서 $dataFromFirstPage 을(를) 받아옴",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
