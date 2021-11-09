import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_get_x/routes/name_routes.dart';
import 'package:state_get_x/ui/pages/page_3.dart';
import 'package:state_get_x/ui/pages/page_4.dart';
import 'package:state_get_x/ui/pages/text_pages.dart';

import '../main.dart';

class PageRoutes {
  static final pageRoutes = [
    GetPage(
      name: NameRoutes.page_1,
      page: () => MyHomePage(),
    ),
    GetPage(
      name: NameRoutes.page_2,
      page: () => TextPages(),
    ),
    GetPage(
      name: NameRoutes.page_3,
      page: () => const Page3(),
    ),
    GetPage(
      name: NameRoutes.page_4,
      page: () => const Page4(),
    ),
  ];
}
