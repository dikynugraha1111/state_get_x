import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/get_x/text_field_getx.dart';

class TextPages extends StatelessWidget {
  TextPages({Key? key}) : super(key: key);

  final TextFieldGetX tController = Get.put(TextFieldGetX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextField(
          controller: tController.textController,
        ),
      ),
    );
  }
}
