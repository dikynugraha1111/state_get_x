import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/get_x/orang_getx.dart';

class NameWidget extends StatelessWidget {
  NameWidget({Key? key}) : super(key: key);
  final OrangGetX orangGetX = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrangGetX>(
      init: orangGetX,
      initState: (_) => print("InitState"),
      didChangeDependencies: (state) => print("Did Changes"),
      didUpdateWidget: (oldWidget, state) => print("Did Update Widget"),
      dispose: (state) => print("Dispose"),
      builder: (c) {
        return Text(orangGetX.orangGetX.value.nama);
      },
    );
  }
}
