import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_portfolio/app/modules/home/components/app_info_card.dart';

import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  @override
  Widget build(BuildContext context) {
    final _ = controller;

    return Scaffold(
      appBar: AppBar(
        title: Text('InfoView'),
        centerTitle: true,
      ),
      body: Center(
        child: AppInfoCard(project: _.appInfo!),
      ),
    );
  }
}
