import 'package:get/get.dart';
import 'package:state_get_x/model/orang_model.dart';

class OrangGetX extends GetxController {
  String newName = "Lord";
  Rx<Orang> orangGetX = Orang(nama: "Name").obs;

  void changeName() {
    orangGetX.update((_) {
      orangGetX.value.nama = newName;
    });
  }
}
