import 'package:get/get.dart';
import 'package:web_portfolio/app/data/models/models/Project.dart';

class InfoController extends GetxController {
  AppInfo? appInfo;

  @override
  void onInit() {
    // final params = (Get.parameters["params"].toString() == null)
    //     ? ' '
    //     : Get.parameters["params"].toString();
    // print(params);

    final param = Get.arguments;
    appInfo = param;
    super.onInit();
  }
}
