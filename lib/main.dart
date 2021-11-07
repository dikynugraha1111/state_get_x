import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/get_x/count_getx.dart';
import 'package:state_get_x/shared/page_app.dart';
import 'package:state_get_x/shared/routes_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final cText = Get.lazyPut(
    () => CountController(),
    tag: "controller-text",
    fenix: true,
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesApp.home,
      getPages: PageApp.pageRoutes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final cNum =
      Get.put(CountController(), tag: "controller-num", permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(RoutesApp.number);
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
    );
  }
}
