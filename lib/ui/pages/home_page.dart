import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/routes/routes_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.detail + "/1?name=Jomblo Tua");
              },
              child: const Text("Page 1"),
            ),
            const SizedBox(
              height: 4.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.detail + "/2?name=Tanggal Tua");
              },
              child: const Text("Page 2"),
            ),
            const SizedBox(
              height: 4.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.detail + "/3?name=LORD");
              },
              child: const Text("Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
