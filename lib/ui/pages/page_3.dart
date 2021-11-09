import 'package:flutter/material.dart';
import 'package:state_get_x/model/orang_model.dart';
import 'package:get/get.dart';
import 'package:state_get_x/routes/name_routes.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orang orangPage3 = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(orangPage3.nama),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back(result: "Ini Value Back Dari Page 3");
                  },
                  child: const Text("Back to Page 3 With Named"),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(NameRoutes.page_4);
                  },
                  child: const Text("Get offAll Page 4 With Named"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
