import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_get_x/getx/controller_getx.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.putAsync<SharedPreferences>(() async {
    SharedPreferences setShare = await SharedPreferences.getInstance();
    await setShare.setInt("num", 99);
    return setShare;
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final cSpref = Get.put(ControllerGetX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text("${cSpref.num}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => cSpref.setData(),
      ),
    );
  }
}
