import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:state_get_x/routes/name_routes.dart';
import 'package:state_get_x/routes/page_routes.dart';
import 'package:state_get_x/ui/pages/text_pages.dart';
import './get_x/counter_increament.dart';
import 'get_x/orang_getx.dart';
import 'ui/widgets/name_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

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
  const MyHomePage({Key? key}) : super(key: key);

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
