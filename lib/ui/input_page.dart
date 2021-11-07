import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get_x/count_getx.dart';

class InputPage extends StatelessWidget {
  InputPage({Key? key}) : super(key: key);

  final cText = Get.find<CountController>(tag: "controller-text");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextField(
          controller: cText.cText,
          decoration: const InputDecoration(
            label: Text("Masukan Text"),
          ),
        ),
      ),
    );
  }
}
