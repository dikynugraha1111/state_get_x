import 'package:get/get.dart';

class HitunganGetX extends GetxController {
  Rx<int> hitung = 0.obs;
  Rx<int> total = 0.obs;

  void tambahHitung() {
    hitung.value++;
  }

  void tambahTotal() {
    total.value++;
  }
}
