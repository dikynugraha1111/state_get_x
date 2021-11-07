import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/shared/routes_app.dart';
import '../get_x/count_getx.dart';

class NumberPage extends StatelessWidget {
  NumberPage({Key? key}) : super(key: key);

  final cNum = Get.find<CountController>(tag: "controller-num");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(RoutesApp.input);
            },
            icon: const Icon(Icons.forward),
          )
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${cNum.number}",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cNum.addNumber();
        },
      ),
    );
  }
}
