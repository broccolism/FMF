import 'package:flutter/material.dart';

class CounterNotifier with ChangeNotifier {
  // value for notifier
  int counter = 0;

  // getter for UI
  int get currentCounter => counter;

  // fuctions
  void increaseCounter() {
    counter++;
    notifyListeners();
  }
}
