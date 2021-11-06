import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var number = 0.obs;
  var cText = TextEditingController();

  void addNumber() => number++;
}
