import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/get_x/text_field_getx.dart';
import 'package:state_get_x/model/orang_model.dart';
import 'package:state_get_x/routes/name_routes.dart';

class TextPages extends StatelessWidget {
  TextPages({Key? key}) : super(key: key);

  final TextFieldGetX tController = Get.put(
    TextFieldGetX(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tController.textController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Back to Page 2 With Named"),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                ElevatedButton(
                  onPressed: () async {
                    var data = await Get.toNamed(
                      NameRoutes.page_3,
                      arguments: Orang(nama: tController.textController.text),
                    );
                    print(data);
                  },
                  child: const Text("Get to Page 3 With Named"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
