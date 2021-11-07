import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerGetX extends GetxController {
  RxInt num = 0.obs;

  Future<int?> getData() async {
    final sPref = await SharedPreferences.getInstance();
    return sPref.getInt("num")!.toInt();
  }

  void setData() async {
    int? data = await getData();
    num.value = data!;
  }
}
