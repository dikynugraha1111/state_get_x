import 'package:flutter/material.dart';
import 'package:state_get_x/getx/hitungan_getx.dart';
import 'package:get/get.dart';
import 'package:state_get_x/ui/widgets/hitung_widget.dart';

class Hitungan extends StatelessWidget {
  Hitungan({Key? key}) : super(key: key);

  final hitung = Get.create(() => HitunganGetX());
  final total = Get.put(HitunganGetX(), tag: "total");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Obx(
          () => Text(
            total.total.value.toString(),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return HiotungTambah();
        },
      ),
    );
  }
}
