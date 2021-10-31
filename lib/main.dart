import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: ElevatedButton(
          onPressed: () {
            // Noted Menggunakan Default
            Get.defaultDialog(
              title: "Default",
              middleText: "Ini isinya boi",
              textConfirm: "Iya",
              onConfirm: () {},
              cancel: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Tidak"),
              ),
            );

            // Noted dengan menggunakan Widget, Contoh saja menggunakan Custom Dialog Dulu
            Get.dialog(
              AlertDialog(
                title: const Text("Hallo"),
                content: const Text("Isi konten"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tekan Ya"),
                  )
                ],
              ),
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
