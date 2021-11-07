import 'package:get/get.dart';
import 'package:state_get_x/shared/routes_app.dart';
import 'package:state_get_x/ui/input_page.dart';
import 'package:state_get_x/ui/number_page.dart';
import '../main.dart';

class PageApp {
  static final pageRoutes = <GetPage>[
    GetPage(
      name: RoutesApp.home,
      page: () => MyHomePage(),
    ),
    GetPage(
      name: RoutesApp.number,
      page: () => NumberPage(),
    ),
    GetPage(
      name: RoutesApp.input,
      page: () => InputPage(),
    )
  ];
}
