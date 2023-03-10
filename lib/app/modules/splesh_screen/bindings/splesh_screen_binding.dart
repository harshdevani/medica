import 'package:get/get.dart';

import '../controllers/splesh_screen_controller.dart';

class SpleshScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpleshScreenController>(
      () => SpleshScreenController(),
    );
  }
}
