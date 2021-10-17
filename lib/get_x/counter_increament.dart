import 'package:get/get.dart';

class CounterIncreament extends GetxController {
  var counter = 0.obs;

  var isDark = false.obs;

  RxInt changeCounter() {
    return counter + 1;
  }

  bool changeTheme() {
    return isDark.value = !isDark.value;
  }
}
