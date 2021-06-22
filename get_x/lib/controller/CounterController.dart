import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  incrementTop() => count1.value++;
  incrementBottom() => count2.value++;

  get sum => count1.value + count2.value;

  @override
  void onInit() {
    ever(count1, (_) {
      print('EVER : count1이 변경 될때마다 실행');
    });
    once(count1, (_) {
      print('ONCE : 처음으로 count1이 변경 되었을때');
    });
    debounce(
      count1,
      (_) {
        print('DEBOUNCE : 1초간 디바운스 한 뒤에 실행');
      },
      time: Duration(seconds: 1),
    );
    interval(
      count1,
      (_) {
        print('INTERVAL : 1초간 인터벌이 지나면 실행');
      },
      time: Duration(seconds: 1),
    );
    super.onInit();
  }
}
