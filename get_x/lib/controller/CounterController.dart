import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  // '.obs' 를 붙이면 observable variable이 됨!
  var count = 0.obs;
  increment() => count++;
}
