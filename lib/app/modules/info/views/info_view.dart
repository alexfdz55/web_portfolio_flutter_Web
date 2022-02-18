import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_portfolio/app/modules/info/components/swiper.dart';
import 'package:web_portfolio/app/shared/constant.dart';

import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  @override
  Widget build(BuildContext context) {
    final _ = controller;

    return Scaffold(
      appBar: AppBar(
        title: Text(_.appInfo!.title, style: TextStyle(color: primaryColor)),
        centerTitle: true,
      ),
      body: CardSwiper(app: _.appInfo!),
    );
  }
}
