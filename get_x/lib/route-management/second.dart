import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "두번째 페이지",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 300,
              child: TextFormField(
                style: TextStyle(fontSize: 15),
                controller: textController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: textController.text);
              },
              child: Text(
                "이전 페이지로 이동",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
