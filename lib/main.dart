import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/app/shared/theme/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio - Flutter Web',
      theme: themeDark,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
