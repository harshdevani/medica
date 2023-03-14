import 'package:get/get.dart';
import 'package:medica/app/modules/main_page/controllers/main_page_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
    );
  }
}
