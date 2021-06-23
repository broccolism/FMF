import 'package:get/get.dart';

class BuilderController extends GetxController {
  final counter = 0.obs;

  increment() {
    counter.value++;
    update(["wanna update"], counter <= 5);
  }
}
