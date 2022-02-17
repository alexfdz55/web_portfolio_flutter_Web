import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_portfolio/app/modules/home/components/home_banner.dart';
import 'package:web_portfolio/app/modules/home/components/my_apps.dart';
import 'package:web_portfolio/app/modules/home/components/my_proyects2.dart';
import 'package:web_portfolio/app/modules/home/components/side_menu.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return _MainScreen(
      children: [
        HomeBanner(),
        SizedBox(height: 30),
        MyApps(),
        SizedBox(height: 40),
        MyProjects2(),
        // Recommendations(),
      ],
    );
  }
}

class _MainScreen extends StatelessWidget {
  const _MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We hide the appbar on desktop
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
