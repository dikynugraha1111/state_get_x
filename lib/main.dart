import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/routes/name_routes.dart';
import 'package:state_get_x/routes/page_routes.dart';
import 'package:state_get_x/ui/pages/text_pages.dart';
import './get_x/counter_increament.dart';
import 'get_x/orang_getx.dart';
import 'ui/widgets/name_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final CounterIncreament counterI = Get.put(CounterIncreament());
  final OrangGetX orangGetX = Get.put(OrangGetX());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        theme: counterI.isDark.value ? ThemeData.dark() : ThemeData.light(),
        initialRoute: "/",
        getPages: PageRoutes.pageRoutes,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final CounterIncreament ci1 = Get.find();
  final OrangGetX orangGetX = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Angka ${ci1.counter}"),
            ),
            ElevatedButton(
              onPressed: () {
                ci1.changeTheme();
              },
              child: const Text("GANTI TEMA"),
            ),
            NameWidget(),
            ElevatedButton(
              onPressed: () {
                orangGetX.changeName();
              },
              child: const Text("GANTI NAMA"),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(NameRoutes.page_2);
              },
              child: const Text("Get To Page 2 With Named"),
            ),
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
