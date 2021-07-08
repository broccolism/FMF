import 'package:flutter/material.dart';
import 'package:ui_test/test_component_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TestComponentScreen(),
    );
  }
}
