import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/getx/hitungan_getx.dart';

class HiotungTambah extends StatelessWidget {
  HiotungTambah({Key? key}) : super(key: key);

  final hitungan = Get.find<HitunganGetX>();
  final total = Get.find<HitunganGetX>(tag: "total");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                hitungan.hitung.value++;
                total.total.value++;
              },
              icon: const Icon(Icons.add),
            ),
            Obx(
              () => Text(
                hitungan.hitung.value.toString(),
              ),
            ),
            IconButton(
              onPressed: () {
                hitungan.hitung.value--;
                total.total.value--;
              },
              icon: const Icon(Icons.remove),
            )
          ],
        ),
      ],
    );
  }
}
