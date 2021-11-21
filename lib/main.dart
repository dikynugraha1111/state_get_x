import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/ui/hitungan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () => Get.to(
            Hitungan(),
          ),
          child: const Text("Home"),
        ),
      ),
    );
  }
}
