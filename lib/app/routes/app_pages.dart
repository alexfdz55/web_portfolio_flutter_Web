import 'package:get/get.dart';

import 'package:web_portfolio/app/modules/home/bindings/home_binding.dart';
import 'package:web_portfolio/app/modules/home/views/home_view.dart';
import 'package:web_portfolio/app/modules/info/bindings/info_binding.dart';
import 'package:web_portfolio/app/modules/info/views/info_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INFO,
      page: () => InfoView(),
      binding: InfoBinding(),
    ),
  ];
}
