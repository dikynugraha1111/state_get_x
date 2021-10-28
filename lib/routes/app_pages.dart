import 'package:get/get.dart';
import 'package:state_get_x/routes/routes_name.dart';
import 'package:state_get_x/ui/pages/detail_page.dart';
import 'package:state_get_x/ui/pages/home_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RoutesName.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RoutesName.detail + "/:id?",
      page: () => const DetailPage(),
    ),
  ];
}
