import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './get_x/counter_increament.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final CounterIncreament counterI = Get.put(CounterIncreament());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: counterI.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final CounterIncreament ci1 = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text("Angka ${ci1.counter}"),
            ),
            ElevatedButton(
              onPressed: () {
                ci1.changeTheme();
              },
              child: const Text("GANTI TEMA"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ci1.changeCounter();
        },
      ),
    );
  }
}
