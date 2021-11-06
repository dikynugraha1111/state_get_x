import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/get_x/count_getx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final cText = Get.lazyPut(
    () => CountController(),
    tag: "conText",
    fenix: true,
  );

  final cNum = Get.put(CountController(), tag: "conNum");

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final cCountNum = Get.find<CountController>(tag: "conNum");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                () => TextInput(),
              );
            },
            icon: const Icon(Icons.forward),
          )
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${cCountNum.number}",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cCountNum.addNumber();
        },
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  TextInput({Key? key}) : super(key: key);

  final cText = Get.find<CountController>(tag: "conText");
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
