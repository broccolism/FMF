import 'package:get/get.dart';

class StringController extends GetxController {
  final str = "".obs;

  change(String newString) {
    str.value = newString;
  }
}
