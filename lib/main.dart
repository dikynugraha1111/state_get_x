import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/routes/app_pages.dart';
import 'package:state_get_x/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      initialRoute: RoutesName.home,
    );
  }
}
